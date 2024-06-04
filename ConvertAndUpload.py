import requests
from requests.auth import HTTPBasicAuth

from ConvertHtmlToXwikiWithEdits import process_html_file


def put_xml_request(url, xml_str, username, password):
    headers = {'Content-Type': 'application/xml'}
    response = requests.put(url, data=xml_str, headers=headers, auth=HTTPBasicAuth(username, password))

    if response.status_code == 201:
        return response.content
    else:
        print(f'Failed to put request. Status code: {response.status_code}')
        print('Response:', response.text)
        return None


def generate_xwiki_page_xml(template_file, title, path, content_file):
    # Replace dots with slashes for URL paths
    path_with_slashes = path.replace('.', '/')

    # Prepare the replacements
    replacements = {
        'id': f'xwiki:{path}.{title}.WebHome',
        'fullName': f'{path}.{title}.WebHome',
        'space': path,
        'title': title,
        'parent': path.rsplit('.', 1)[0],
        'parentId': f'xwiki:{path.rsplit(".", 1)[0]}.WebHome',
        'xwikiRelativeUrl': f'http://localhost:8080/xwiki/bin/view/{path_with_slashes}/{title}',
        'xwikiAbsoluteUrl': f'http://localhost:8080/xwiki/bin/view/{path_with_slashes}/{title}'
    }

    print(replacements)

    # Read the XML template from the file
    with open(template_file, 'r', encoding='utf-8') as file:
        xml_template = file.read()

    # Read the content from the file
    with open(content_file, 'r', encoding='utf-8') as file:
        content = file.read()

    # Add content to the replacements dictionary
    replacements['content'] = content

    # Replace placeholders with the actual values
    xml_template = xml_template.replace('ID', replacements['id'])
    xml_template = xml_template.replace('FULL_NAME', replacements['fullName'])
    xml_template = xml_template.replace('SPACE', replacements['space'])
    xml_template = xml_template.replace('TITLE', replacements["title"])
    xml_template = xml_template.replace('PARENT', replacements['parent'])
    xml_template = xml_template.replace('PI', replacements['parentId'])
    xml_template = xml_template.replace('http://localhost:8080/xwiki/bin/view/Main',
                                        replacements['xwikiRelativeUrl'])
    xml_template = xml_template.replace('CONTENT HERE', replacements['content'])

    return xml_template


def get_csrf_token(session, xwiki_base_url):
    response = session.get(xwiki_base_url)
    if 'XWiki-Form-Token' in response.headers:
        return response.headers['XWiki-Form-Token']
    return None


def put_request_attachment(url, attachment_path, username, password):
    with requests.Session() as session:
        session.auth = HTTPBasicAuth(username, password)

        # Get CSRF Token
        csrf_token = get_csrf_token(session, 'http://localhost:8080/rest/')
        if not csrf_token:
            print("Failed to get CSRF token")
            return

        # Get the attachment type from the file extension
        attachment_type = attachment_path.split('.')[-1]

        image_types = ['.png', '.jpg', '.jpeg', '.gif', '.jfif']
        video_types = ['mp4']

        if attachment_type in image_types:
            content_type = 'image/jpeg'
        elif attachment_type in video_types:
            content_type = 'video/mp4'
        else:
            content_type = 'application/octet-stream'

        headers = {
            'XWiki-Form-Token': csrf_token,
            'Content-Type': content_type
        }

        with open(attachment_path, 'rb') as file:
            response = session.put(url, data=file, headers=headers)

            if response.status_code in [200, 201]:
                print(f'Successfully uploaded image to XWiki.')
            else:
                print(f'Failed to upload image to XWiki. Status code: {response.status_code}')
                print('Response:', response.text)


if __name__ == '__main__':

    title, media = process_html_file('PFSAE/General-Onboarding_185501569.html', 'test.xwiki')
    # Replace spaces with underscores
    title = title.replace(' ', '_')
    # Remove all special characters
    title = ''.join(e for e in title if e.isalnum())

    base_url = 'http://localhost:8080/rest'
    username = 'ArnavWadhwa'
    password = 'Earthvirgo678!'

    # Get the XML template for the XWiki page
    template_file = 'template.xml'
    content_file = 'test.xwiki'
    xml_str = generate_xwiki_page_xml(template_file, title, 'Main', content_file)

    print(xml_str)
    print(f'Uploading page: {title}')

    # Put the XML request to create the XWiki page
    url = f'{base_url}/wikis/xwiki/spaces/Main/spaces/{title}/pages/WebHome'
    put_xml_request(url, xml_str, username, password)

    # Put the attachments


    # for attachment_path, attachment_name in media.items():
    #     # Prepend PFSAE/ to the attachment path
    #     attachment_path = f'PFSAE/{attachment_path}'
    #     print(f'Uploading attachment: {attachment_name} with path: {attachment_path}')
    #
    #     url = f'{base_url}/wikis/xwiki/spaces/Main/spaces/{title}/pages/WebHome/attachments/{attachment_name}'
    #     put_xml_request(url, attachment_path, username, password)



