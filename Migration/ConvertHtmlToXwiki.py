import subprocess
import os


def convert_html_to_xwiki(input_file, output_file):
    try:
        # Construct the Pandoc command
        pandoc_command = [
            'pandoc',
            '-f', 'html',
            '-t', 'xwiki',
            '-o', output_file,
            input_file
        ]

        # Execute the Pandoc command
        subprocess.run(pandoc_command, check=True)
        print(f"Conversion successful: {input_file} -> {output_file}")
    except subprocess.CalledProcessError as e:
        print(f"An error occurred: {e}")


if __name__ == '__main__':

    # Example usage
    input_html_file = 'PFSAE/General-Onboarding_185501569.html'
    output_xwiki_file = 'general_onboarding.xwiki'
    css_file = 'PFSAE/styles/site.css'
    convert_html_to_xwiki(input_html_file, output_xwiki_file)
