from bs4 import BeautifulSoup
import json

"""
This class is used to create the tree structure from the index.html page
Each node will be a key value pair where the key is the english name of the tree and the value

We are also going to have a map where the key is the name of the html file and the value is the path of the tree 
"""


class TreeNode:
    def __init__(self, name, href=None):
        self.name = name.replace('.', '-').replace(' ', '_')
        self.href = href
        self.children = []

    def add_child(self, child_node):
        self.children.append(child_node)

    def to_dict(self):
        return {
            "name": self.name,
            "href": self.href,
            "children": [child.to_dict() for child in self.children]
        }


def parse_list(ul, path=''):
    path_dict = {}
    root = TreeNode("root")

    def add_nodes(node, ul, path):
        for li in ul.find_all('li', recursive=False):
            a = li.find('a')
            if a:
                key = a.text.strip().replace('.', '-')
                if key[0] == '_' or key[0] == '-':
                    key = key[1:]

                if key[-1] == '_' or key[-1] == '-':
                    key = key[:-1]

                if '_|_' in key:
                    key = key.replace('_|_', '_')

                if '/' in key:
                    key = key.replace('/', '-')

                if '_-_' in key:
                    key = key.replace('_-_', '-')

                value = a['href']

                new_node = TreeNode(key, value)
                node.add_child(new_node)
                new_path = f"{path}.{key}" if path else key
                path_dict[value] = new_path
                nested_uls = li.find_all('ul', recursive=False)
                for nested_ul in nested_uls:
                    add_nodes(new_node, nested_ul, new_path)

    add_nodes(root, ul, path)
    return root, path_dict


def main():
    # Load and parse the HTML file
    with open('PFSAE-PRIVATE/index.html', 'r', encoding='utf-8') as file:
        html_content = file.read()

    soup = BeautifulSoup(html_content, 'html.parser')
    page_section = soup.find('div', id='Tree')

    # Debugging statements
    if page_section:
        print("Found pageSection div.")
    else:
        print("pageSection div not found.")

    ul_tag = page_section.find('ul') if page_section else None

    # Debugging statements
    if ul_tag:
        print("Found ul tag within pageSection div.")
    else:
        print("ul tag not found within pageSection div.")

    # Parse the tree structure
    if ul_tag:
        tree_root, path_dictionary = parse_list(ul_tag)

        # Convert the tree to a dictionary for visualization
        tree_dict = tree_root.to_dict()

        # Print the tree structure and path dictionary
        print(json.dumps(tree_dict, indent=2))
        print(json.dumps(path_dictionary, indent=2))

        # Save the results to JSON files
        with open('tree_structure_private.json', 'w', encoding='utf-8') as f:
            json.dump(tree_dict, f, ensure_ascii=False, indent=2)

        with open('path_dictionary_private.json', 'w', encoding='utf-8') as f:
            json.dump(path_dictionary, f, ensure_ascii=False, indent=2)
    else:
        print("Failed to find the ul tag within the specified div.")


if __name__ == "__main__":
    main()
