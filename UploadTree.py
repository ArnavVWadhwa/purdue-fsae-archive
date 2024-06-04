import json
import os

import requests
from requests.auth import HTTPBasicAuth
from ConvertHtmlToXwikiWithEdits import process_html_file


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
            return 1001

        # Get the attachment type from the file extension
        attachment_type = attachment_path.split('.')[-1].lower()

        image_types = ['png', 'jpg', 'jpeg', 'gif', 'jfif']
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

        try:
            with open(attachment_path, 'rb') as file:
                response = session.put(url, data=file, headers=headers)

                if response.status_code not in range(200, 203):
                    print(f'Failed to upload attachment to XWiki. Status code: {response.status_code}')

                return response.status_code
        except FileNotFoundError:
            print(f'Attachment file not found: {attachment_path}')
            return 1001


def put_xml_request(url, xml_str, username, password):
    with requests.Session() as session:
        session.auth = HTTPBasicAuth(username, password)

        # Get CSRF Token
        csrf_token = get_csrf_token(session, 'http://localhost:8080/rest/')
        if not csrf_token:
            print("Failed to get CSRF token")
            return

        #
        headers = {
            'XWiki-Form-Token': csrf_token,
            'Content-Type': 'application/xml'
        }

        response = session.put(url, data=xml_str, headers=headers)

        return response.status_code


def generate_xwiki_page_xml(xml_template: str, title: str, path: str, content: str):
    """
    Generate the XML for an XWiki page using the provided template and content file.
    :param xml_template:
    :param title:
    :param path:
    :param content_file:
    :return:
    """
    # Replace dots with slashes for URL paths
    path_with_slashes = path.replace('.', '/')

    # Prepare the replacements
    replacements = {
        'id': f'xwiki:{path}.WebHome',
        'fullName': f'{path}.WebHome',
        'space': path,
        'title': title,
        'parent': path.rsplit('.', 1)[0],
        'parentId': f'xwiki:{path.rsplit(".", 1)[0]}.WebHome',
        'xwikiRelativeUrl': f'http://purdue-xwiki-4pzlmwxteuso-2140735236.us-east-1.elb.amazonaws.com/xwiki/bin/view/{path_with_slashes}',
        'xwikiAbsoluteUrl': f'http://purdue-xwiki-4pzlmwxteuso-2140735236.us-east-1.elb.amazonaws.com/xwiki/bin/view/{path_with_slashes}',
        'content': content
    }


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


def batch_upload():
    base_url = 'http://purdue-xwiki-4pzlmwxteuso-2140735236.us-east-1.elb.amazonaws.com/rest'
    username = 'ArnavWadhwa'
    password = 'Earthvirgo678!'
    # Read in the path_dict.json file
    with open('path_dictionary.json', 'r') as file:
        path_dict = json.load(file)

    # Read in the template file
    with open('template.xml', 'r', encoding='utf-8') as file:
        xml_template = file.read()

    count = 0

    for html, path in path_dict.items():

        if html == 'Purdue-Formula-SAE-Home_127569448.html':
            continue

        # Convert the HTML to XWiki format
        html = f'PFSAE/{html}'
        # The xml_path is the final portion of the path after the last dot
        title = path.split('.')[-1]
        xwiki_path = f'ConvertedFiles/{title}.xwiki'

        try:
            media = process_html_file(html, xwiki_path, path_dict)
        except Exception as e:
            print(f"Failed to process {html}.")
            continue

        with open(xwiki_path, 'r', encoding='utf-8') as file:
            xwiki_content = file.read()

        xml_str = generate_xwiki_page_xml(xml_template, title, path, xwiki_content)

        # The URL path is the path given with the . replaces with /spaces/
        url_path = path.replace('.', '/spaces/')
        url = f'{base_url}/wikis/xwiki/spaces/{url_path}/pages/WebHome'

        if 200 <= put_xml_request(url, xml_str, username, password) <= 202:
            print(f"Successfully uploaded {title} to XWiki of count {count}.")
            # delete the xwiki file
            os.remove(xwiki_path)

        else:
            print(f"Failed to upload {title} to XWiki.")
            xwiki_content = f'Failed'
            xml_str = generate_xwiki_page_xml(xml_template, title, path, xwiki_content)
            if 200 <= put_xml_request(url, xml_str, username, password) <= 202:
                print(f"Second attempt successful.")
            else:
                print(f"Second attempt failed.")

        # Upload the media files
        for attachment_path, attachment_name in media.items():
            # Prepend PFSAE/ to the attachment path
            attachment_path = f'PFSAE/{attachment_path}'
            attachment_url = f'{url}/attachments/{attachment_name}'
            put_request_attachment(attachment_url, attachment_path, username, password)

        count += 1


def uplaod_single_page():
    base_url = 'http://purdue-xwiki-4pzlmwxteuso-2140735236.us-east-1.elb.amazonaws.com/rest'
    username = 'ArnavWadhwa'
    password = 'Earthvirgo678!'
    html = 'Purdue-Formula-SAE-Home_127569448.html'
    target_xml = 'ConvertedFiles/0- Defining Chassis Design Objectives & PF23 Timeline.xwiki'
    target_xml = None
    # Read in the path_dict.json file
    with open('path_dictionary.json', 'r') as file:
        path_dict = json.load(file)

    # Read in the template file
    with open('template.xml', 'r', encoding='utf-8') as file:
        xml_template = file.read()

    path = path_dict[html]

    # Convert the HTML to XWiki format
    html = f'PFSAE/{html}'
    # The xml_path is the final portion of the path after the last dot
    title = path.split('.')[-1]

    if target_xml is None:
        xwiki_path = f'{title}.xwiki'
    else:
        xwiki_path = f'test.xwiki'

    media = process_html_file(html, xwiki_path, path_dict)

    if target_xml is None:
        with open(xwiki_path, 'r', encoding='utf-8') as file:
            xwiki_content = file.read()
    else:
        with open(target_xml, 'r', encoding='utf-8') as file:
            xwiki_content = file.read()

    xml_str = generate_xwiki_page_xml(xml_template, title, path, xwiki_content)

    print(xml_str)

    # The URL path is the path given with the . replaces with /spaces/
    url_path = path.replace('.', '/spaces/')
    url = f'{base_url}/wikis/xwiki/spaces/{url_path}/pages/WebHome'

    if 200 <= put_xml_request(url, xml_str, username, password) <= 202:
        print(f"Successfully uploaded {title} to XWiki.")
        # delete the xwiki file
        # os.remove(xwiki_path)

    else:
        print(f"Failed to upload {title} to XWiki.")
        xwiki_content = f'Failed'
        xml_str = generate_xwiki_page_xml(xml_template, title, path, xwiki_content)
        if 200 <= put_xml_request(url, xml_str, username, password) <= 202:
            print(f"Second attempt successful.")
        else:
            print(f"Second attempt failed.")

    # Upload the media files
    for attachment_path, attachment_name in media.items():
        # Prepend PFSAE/ to the attachment path
        attachment_path = f'PFSAE/{attachment_path}'
        print(f'Uploading attachment: {attachment_name} with path: {attachment_path}')

        attachment_url = f'{url}/attachments/{attachment_name}'
        put_request_attachment(attachment_url, attachment_path, username, password)


if __name__ == '__main__':
    batch_upload()
    # uplaod_single_page()

