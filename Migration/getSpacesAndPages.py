import requests
from xml.dom.minidom import parseString
from requests.auth import HTTPBasicAuth

# Configuration
base_url = 'http://purdue-xwiki-4pzlmwxteuso-2140735236.us-east-1.elb.amazonaws.com:80/rest'
wiki_name = 'xwiki'
username = 'ArnavWadhwa'
password = 'Earthvirgo678!'


def get_csrf_token(session, xwiki_base_url):
    response = session.get(xwiki_base_url)
    if 'XWiki-Form-Token' in response.headers:
        return response.headers['XWiki-Form-Token']
    return None


def get_request_xml(url, username, password):
    response = requests.get(url, auth=HTTPBasicAuth(username, password))
    if response.status_code == 200:
        return response.content
    else:
        print(f'Failed to get request. Status code: {response.status_code}')
        print('Response:', response.text)
        return None
    return response


def get_spaces(base_url, wiki_name, username, password):
    url = f'{base_url}/wikis/{wiki_name}/spaces'
    response = requests.get(url, auth=HTTPBasicAuth(username, password))

    if response.status_code == 200:
        xml_response = response.content
        return xml_response
    else:
        print(f'Failed to get spaces. Status code: {response.status_code}')
        print('Response:', response.text)
        return None


def get_pages(base_url, wiki_name, space_name, username, password):
    url = f'{base_url}/wikis/{wiki_name}/spaces/{space_name}/pages'
    response = requests.get(url, auth=HTTPBasicAuth(username, password))

    if response.status_code == 200:
        pages = response.json()['pageSummaries']
        return [page['title'] for page in pages]
    else:
        print(f'Failed to get pages in space {space_name}. Status code: {response.status_code}')
        print('Response:', response.text)
        return []


def pretty_print_xml(xml_str):
    dom = parseString(xml_str)
    pretty_xml_as_string = dom.toprettyxml()
    return pretty_xml_as_string


def put_xml_request(url, xml_str, username, password):
    headers = {'Content-Type': 'application/xml'}
    response = requests.put(url, data=xml_str, headers=headers, auth=HTTPBasicAuth(username, password))

    if response.status_code == 201:
        return response.content
    else:
        print(f'Failed to put request. Status code: {response.status_code}')
        print('Response:', response.text)
        return None


def put_request_full():
    url = f'{base_url}/wikis/xwiki/spaces/Main/spaces/pageOne/pages/WebHome'
    # url = 'http://localhost:8080/rest/wikis/xwiki/spaces/Sandbox/spaces/TestNestedPage/pages/WebHome/attachments'
    with open('page.xml', 'r') as f:
        c = f.read()
    xml_response = put_xml_request(url, c, username, password)
    if xml_response:
        formatted_xml = pretty_print_xml(xml_response)
        print(formatted_xml)


def put_request_attachment(url, attachment_path, username, password):
    with requests.Session() as session:
        session.auth = HTTPBasicAuth(username, password)

        # Get CSRF Token
        csrf_token = get_csrf_token(session, 'http://localhost:8080/rest/')
        if not csrf_token:
            print("Failed to get CSRF token")
            return

        headers = {
            'XWiki-Form-Token': csrf_token,
            'Content-Type': 'image/jpeg'  # Adjust based on the type of image
        }

        with open(attachment_path, 'rb') as file:
            response = session.put(url, data=file, headers=headers)

            if response.status_code in [200, 201]:
                print(f'Successfully uploaded image to XWiki.')
            else:
                print(f'Failed to upload image to XWiki. Status code: {response.status_code}')
                print('Response:', response.text)


def get_request_full():
    url = f'{base_url}/wikis/xwiki/spaces/Sandbox/pages/WebHome'
    xml_response = get_request_xml(url, username, password)
    if xml_response:
        formatted_xml = pretty_print_xml(xml_response)
        print(formatted_xml)


def put_attachment():
    url = f'{base_url}/wikis/xwiki/spaces/Sandbox/spaces/ConverterTest/pages/WebHome/attachments/187088057.png'
    attachment_path = 'PFSAE/attachments/185501569/187088057.png'
    put_request_attachment(url, attachment_path, username, password)


if __name__ == '__main__':
    # get_request_full()
    put_request_full()
    # put_attachment()

