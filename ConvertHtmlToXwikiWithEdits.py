import os
import re
import urllib.parse

from bs4 import BeautifulSoup
import subprocess


"""
From the HTML I need:
- Title
- Converted HTML content to Xwiki format (file)
- A dict of all the videos and paths in the HTML dir (dict key = path, value = name)
- A dict of all the images and paths in the HTML dir 


Steps:
1. Read the HTML file
2. Extract the title
3. Extract the videos and images from the "greybox" div (should be a map of video/image name to path)
4. Get authors and dates 
5. Get the HTML content to convert (the "main-content" div)
6. Convert the HTML content to Xwiki format using Pandoc (Will be a file)
7. Remove all of the {{id name="" /}}
8. Fix the video paths in the Xwiki content
9. Fix the image paths in the Xwiki content
10. Add the authors and dates at the top with the (% class="small" %) tag
11. Write the Xwiki content to a file

12. Put the Xwiki content to the Xwiki server
13. Put the images and videos the XWiki site

"""


# Function to read the HTML file
def read_html_file(input_file):
    with open(input_file, 'r', encoding='utf-8') as file:
        content = file.read()
    return content


# Function to extract the title
def extract_title(html_content):
    soup = BeautifulSoup(html_content, 'html.parser')
    title = soup.find('title').text
    # Remove Purdue Formula SAE : from the title
    title = title.replace('Purdue Formula SAE :', '').strip()
    # Remove numbers from the title
    title = re.sub(r'\d+', '', title).strip()
    return title


# Function to extract authors and dates
def extract_authors_dates(html_content):
    soup = BeautifulSoup(html_content, 'html.parser')
    metadata_div = soup.find('div', class_='page-metadata')
    if metadata_div:
        created_by = re.search(r'Created by (.*?),', metadata_div.text).group(1)

        try:
            last_modified_by = re.search(r'Last modified by (.*?),', metadata_div.text).group(1)
        except AttributeError:
            last_modified_by = None

        date = re.search(r'on (.*)', metadata_div.text).group(1)
        return created_by, last_modified_by, date
    return None, None, None


# Function to extract the main content
def extract_main_content(html_content):
    soup = BeautifulSoup(html_content, 'html.parser')
    main_content = soup.find('div', id='main-content')
    return str(main_content)


# Function to extract videos and images from the "greybox" div
def extract_media(html_content):
    image_media = {}  # [[image:.*?]] (.png, .jpg, .jpeg, .gif, .jfif)
    video_media = {}  # {{video attachment=".*?"/}} (.mp4)
    other_media = {}  # link to attachment with [[Name>>name:media]]

    soup = BeautifulSoup(html_content, 'html.parser')
    greybox = soup.find('div', class_='greybox')

    if greybox:
        for a_tag in greybox.find_all('a'):
            media_path = a_tag.text.replace(' ', '_')
            media_name = a_tag['href']
            if media_path.lower().endswith(('.png', '.jpg', '.jpeg', '.gif', '.jfif')):
                image_media[media_name] = media_path
            elif media_path.lower().endswith('.mp4'):
                video_media[media_name] = media_path
            else:
                other_media[media_name] = media_path
    return image_media, video_media, other_media


# Function to convert HTML content to XWiki format
def convert_html_to_xwiki(input_file, output_file):
    try:
        pandoc_command = [
            'pandoc',
            '-f', 'html',
            '-t', 'xwiki',
            '-o', output_file,
            input_file
        ]
        subprocess.run(pandoc_command, check=True)
        print(f"Conversion successful: {input_file} -> {output_file}")
    except subprocess.CalledProcessError as e:
        print(f"An error occurred: {e}")


# Function to remove {{id name="" /}}
def remove_ids(xwiki_content):
    return re.sub(r'\{\{id name=".*?" /\}\}', '', xwiki_content)


def fix_image_paths(xwiki_content, media):
    # Define the regex pattern to match [[image:...]]
    pattern = re.compile(r'\[\[image:([^\]]+?)\]\]')

    # Function to perform the replacement using the dictionary
    def replace_match(match):
        original_path = match.group(1)
        # Check if the original path is a URL with query parameters
        if '://' in original_path and '?' in original_path:
            url, params = original_path.split('?', 1)
            params_dict = {param.split('=')[0]: param.split('=')[1] for param in params.split('&') if '=' in param}
            # Keep only the `wid` parameter if it exists
            if 'wid' in params_dict:
                new_path = f"{url}?wid={params_dict['wid']}"
            else:
                new_path = url
        else:
            new_path = media.get(original_path, original_path)

        return f"[[image:{new_path}]]"

    # Use the pattern to substitute the paths
    updated_content = pattern.sub(replace_match, xwiki_content)

    return updated_content


# Function to fix video paths in the XWiki content
# Function to fix video paths in the XWiki content
def fix_video_paths(xwiki_content, media):
    lines = xwiki_content.split('\n')
    for i, line in enumerate(lines):
        for media_path, media_name in media.items():
            media_name_with_spaces = media_name.replace('_', ' ')
            if media_name_with_spaces in line:
                lines[i] = f"{{{{video attachment=\"{media_name}\"/}}}}"
    return '\n'.join(lines)


def fix_other_paths(xwiki_content, media):
    # Define the regex patterns to match the complex lines with and without the /download/ part
    pattern_with_download = re.compile(r'\[\[\[\[image:[^\]]+?\]\]>>/download/attachments/(\d+)/([^\]]+?)\?[^\]]*?\]\]')
    pattern_without_download = re.compile(r'\[\[\[\[image:[^\]]+?\]\]>>/attachments/(\d+)/([^\]]+?)\?[^\]]*?\]\]')

    # Function to perform the replacement using the dictionary
    def replace_match(match):
        attachment_id = match.group(1)
        file_full_path = match.group(2)

        # Extract the file name from the full path
        file_name = file_full_path.split('/')[-1]

        # Extract a portion of the file name for more specific matching
        partial_file_name = re.findall(r'[a-zA-Z]+', file_name)
        if partial_file_name:
            partial_file_name = partial_file_name[0]
        else:
            partial_file_name = file_name.split('.')[0]  # Use the full name if no letters are found

        # Create the partial key to match in the dictionary
        partial_key = partial_file_name

        # Find the corresponding dictionary entry
        for key, value in media.items():
            if key.startswith(partial_key):
                display_name = value.rsplit('/', 1)[-1].rsplit('.', 1)[0]  # Extract display name without extension
                return f"[[{display_name}>>attach:{value}]]"

        # If no match is found, return the original match
        return match.group(0)

    # Use the patterns to substitute the paths
    updated_content = pattern_with_download.sub(replace_match, xwiki_content)
    updated_content = pattern_without_download.sub(replace_match, updated_content)

    return updated_content


def fix_other_paths_scuffed(xwiki_content, media):
    # If a media key exists in the xwiki content, replace it with the value
    for key, value in media.items():
        xwiki_content = xwiki_content.replace(key, f'attach:{value}')
    return xwiki_content


def fix_intenal_links(xwiki_content, path_dict):
    # Define the regex pattern of what we are looking for
    pattern = re.compile(r'\[\[(.+?)>>(.+?\.html)\]\]')
    # Function to perform the replacement using the dictionary
    def replace_match(match):
        display_name = match.group(1)
        file_name = match.group(2)
        if file_name in path_dict:
            return f"[[{display_name}>>{path_dict[file_name]}]]"
        return match.group(0)

    # Use the pattern to substitute the paths
    updated_content = pattern.sub(replace_match, xwiki_content)

    return updated_content


# Function to remove the media sections that contain purdue email links
def remove_media_sections(xwiki_content):
    # Define the regex pattern to match the specific string format
    pattern = re.compile(r'\[\[([^\]]+?)>>https://wiki\.itap\.purdue\.edu/display/~[^\]]+?\]\]')

    # Find all matches to count them
    matches = pattern.findall(xwiki_content)
    count = len(matches)

    # Replace the matched pattern with the display name part
    updated_content = pattern.sub(r'\1', xwiki_content)

    print(f"Number of replacements made: {count}")

    return updated_content


def clean_and_encode_url(url):
    try:
        # Parse the URL
        parsed_url = urllib.parse.urlsplit(url)
        # Parse the query parameters
        query_params = urllib.parse.parse_qs(parsed_url.query)

        # Keep only the `wid` parameter if present, otherwise remove all parameters
        if 'wid' in query_params:
            filtered_query_params = {'wid': query_params['wid']}
            encoded_query = urllib.parse.urlencode(filtered_query_params, doseq=True)
            cleaned_url = urllib.parse.urlunsplit(
                (parsed_url.scheme, parsed_url.netloc, parsed_url.path, encoded_query, parsed_url.fragment))
        else:
            cleaned_url = urllib.parse.urlunsplit(
                (parsed_url.scheme, parsed_url.netloc, parsed_url.path, '', parsed_url.fragment))

        return cleaned_url
    except ValueError as e:
        print(f"Error parsing URL {url}: {e}")
        return url  # Return the original URL if there is an error


def encode_urls_in_file(content):
    # Define the regex pattern to find URLs with query parameters
    url_pattern = re.compile(r'(https?://[^\s]+)')

    # Function to encode the URLs
    def encode_match(match):
        url = match.group(0)
        cleaned_url = clean_and_encode_url(url)
        return cleaned_url

    # Replace the URLs in the content
    updated_content = url_pattern.sub(encode_match, content)

    return updated_content


# Function to add authors and dates at the top
def add_authors_dates(xwiki_content, created_by, last_modified_by, date):
    if last_modified_by is not None:
        authors_dates = f"(% class='small' %)Created by {created_by}, last modified by {last_modified_by} on {date}\n\n"
    else:
        authors_dates = f"(% class='small' %)Created by {created_by} on {date}\n\n"
    return authors_dates + xwiki_content


def encode_special_characters(content):
    # Mapping of special characters to their HTML entity equivalents
    special_chars = {
        '<': '&lt;',
        '>': '&gt;',
        '&': '&amp;',
        '"': '&quot;',
        "'": '&#x27;',
        '/': '&#x2F;'
    }

    # Replace special characters using the mapping
    def replace_special_char(match):
        char = match.group(0)
        return special_chars.get(char, char)

    # Create a regex pattern to match all special characters that need to be encoded
    special_chars_pattern = re.compile('|'.join(re.escape(char) for char in special_chars.keys()))

    # Replace special characters in the content
    encoded_content = special_chars_pattern.sub(replace_special_char, content)

    return encoded_content


def process_html_file(input_file, output_file, path_dict=None):
    html_content = read_html_file(input_file)

    image_media, video_media, other_media = extract_media(html_content)
    full_media = {**image_media, **video_media, **other_media}
    print(f"full_media: {full_media}")
    created_by, last_modified_by, date = extract_authors_dates(html_content)
    main_content_html = extract_main_content(html_content)

    temp_html_file = 'temp_main_content.html'
    with open(temp_html_file, 'w', encoding='utf-8') as file:
        file.write(main_content_html)

    convert_html_to_xwiki(temp_html_file, output_file)

    with open(output_file, 'r', encoding='utf-8') as file:
        xwiki_content = file.read()

    if path_dict:
        xwiki_content = fix_intenal_links(xwiki_content, path_dict)

    xwiki_content = remove_ids(xwiki_content)
    xwiki_content = fix_image_paths(xwiki_content, image_media)
    xwiki_content = fix_video_paths(xwiki_content, video_media)
    xwiki_content = fix_other_paths(xwiki_content, other_media)
    xwiki_content = fix_other_paths_scuffed(xwiki_content, other_media)
    xwiki_content = remove_media_sections(xwiki_content)
    xwiki_content = encode_urls_in_file(xwiki_content)
    xwiki_content = encode_special_characters(xwiki_content)
    xwiki_content = add_authors_dates(xwiki_content, created_by, last_modified_by, date)



    with open(output_file, 'w', encoding='utf-8') as file:
        file.write(xwiki_content)

    os.remove(temp_html_file)
    print(f"Processed file saved as: {output_file}")

    return full_media


if __name__ == '__main__':

    # Example usage
    input_html_file = 'PFSAE/Project-1-Background_241632206.html'
    output_xwiki_file = 'background.xwiki'
    process_html_file(input_html_file, output_xwiki_file)
