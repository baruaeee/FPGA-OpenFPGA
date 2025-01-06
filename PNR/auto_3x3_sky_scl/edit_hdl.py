import os

def comment_default_nettype(folder_path):
    # Walk through all files and directories in the specified folder
    for dirpath, _, filenames in os.walk(folder_path):
        for filename in filenames:
            file_path = os.path.join(dirpath, filename)
            try:
                # Open the file and read its contents
                with open(file_path, 'r') as file:
                    lines = file.readlines()
                
                # Modify lines that contain `default_nettype
                modified_lines = []
                for line in lines:
                    if '`default_nettype' in line:
                        modified_lines.append('// ' + line)
                    else:
                        modified_lines.append(line)
                
                # Write the modified lines back to the file
                with open(file_path, 'w') as file:
                    file.writelines(modified_lines)
                    
            except Exception as e:
                print(f"Error processing file {file_path}: {e}")

# Specify the folder path here
folder_path = 'SRC'
comment_default_nettype(folder_path)
