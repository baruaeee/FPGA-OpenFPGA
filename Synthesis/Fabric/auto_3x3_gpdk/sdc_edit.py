import os
import shutil

def combine_files(input_directory, output_file):
    with open(output_file, 'w') as outfile:
        for filename in os.listdir(input_directory):
            if filename.endswith('.sdc'):
                file_path = os.path.join(input_directory, filename)
                with open(file_path, 'r') as infile:
                    outfile.write(infile.read() + '\n')  # Add a newline for separation
    print(f'All files combined into {output_file}')

'''
def remove_duplicate_lines_in_place(file_path):
    seen = set()  # Set to keep track of seen lines
    unique_lines = []  # List to store unique lines

    # Read the file and collect unique lines
    with open(file_path, 'r') as infile:
        for line in infile:
            if line not in seen:
                unique_lines.append(line)  # Store unique line
                seen.add(line)              # Add line to seen set

    # Write the unique lines back to the same file
    with open(file_path, 'w') as outfile:
        outfile.writelines(unique_lines)
'''

def remove_duplicate_lines_in_place(file_path):
    seen = set()  # Set to keep track of seen lines
    unique_lines = []  # List to store unique lines

    # Read the file and collect unique lines
    with open(file_path, 'r') as infile:
        for line in infile:
            # Check if the line is not empty or if it is empty and not seen
            if line.strip() == "" or line not in seen:
                unique_lines.append(line)  # Store unique line
                seen.add(line)              # Add line to seen set

    # Write the unique lines back to the same file
    with open(file_path, 'w') as outfile:
        outfile.writelines(unique_lines)


def multiple_find_and_replace(file_path, replacements):
    # Read the file content
    with open(file_path, 'r') as file:
        content = file.read()

    # Perform multiple replacements
    for old, new in replacements.items():
        content = content.replace(old, new)

    # Write the modified content back to the same file
    with open(file_path, 'w') as file:
        file.write(content)


def clear_folder_and_move_file(folder_path, file_to_move):
    # Remove all files in the specified folder
    for filename in os.listdir(folder_path):
        file_path = os.path.join(folder_path, filename)
        try:
            if os.path.isfile(file_path):  # Check if it's a file
                os.remove(file_path)  # Remove the file
        except Exception as e:
            print(f"Error removing file {file_path}: {e}")

    # Move the specified file to the folder
    try:
        shutil.move(file_to_move, folder_path)
        print(f"Moved {file_to_move} to {folder_path}")
    except Exception as e:
        print(f"Error moving file {file_to_move}: {e}")


input_directory = 'SDC/'  # Change this to your directory
output_file = 'fabric.sdc'
combine_files(input_directory, output_file)

remove_duplicate_lines_in_place(output_file)

replacements = {
	'sram\n': 'sram*\n',
	'sram_inv\n': 'sram_inv*\n',
	'mode\n': 'mode*\n',
	'mode_inv\n': 'mode_inv*\n',
	'/out\n': '/out*\n',
	'_out\n': '_out*\n',
	'_tail\n': '_tail*\n',
	'/grid_clb/': '/grid_clb_*__*_/',
	'/grid_io_left/': '/grid_io_left_*__*_/'
}

multiple_find_and_replace(output_file, replacements)

clear_folder_and_move_file(input_directory, output_file)
