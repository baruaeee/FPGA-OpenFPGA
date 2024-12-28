import os
from pathlib import Path

def remove_duplicates_from_file(file_path):
    """
    Remove duplicate lines from a single file while preserving order.
    
    Args:
        file_path (str): Path to the file to process
    
    Returns:
        int: Number of duplicate lines removed
    """
    try:
        # Read all lines from the file
        with open(file_path, 'r', encoding='utf-8') as f:
            lines = f.readlines()
        
        # Count original lines
        original_count = len(lines)
        
        # Remove duplicates while preserving order
        seen = set()
        unique_lines = []
        for line in lines:
            if line not in seen:
                unique_lines.append(line)
                seen.add(line)
        
        # Count duplicates removed
        duplicates_removed = original_count - len(unique_lines)
        
        # Write back to file if duplicates were found
        if duplicates_removed > 0:
            with open(file_path, 'w', encoding='utf-8') as f:
                f.writelines(unique_lines)
        
        return duplicates_removed
    
    except Exception as e:
        print(f"Error processing {file_path}: {str(e)}")
        return 0

def remove_duplicates_in_folder(folder_path, file_extensions=None):
    """
    Remove duplicate lines from all files in the specified folder.
    
    Args:
        folder_path (str): Path to the folder containing files to process
        file_extensions (list): List of file extensions to process (e.g., ['.txt', '.log'])
                              If None, process all files
    """
    folder = Path(folder_path)
    if not folder.exists():
        print(f"Folder not found: {folder_path}")
        return
    
    # Initialize counters
    total_files_processed = 0
    total_duplicates_removed = 0
    
    # Process each file in the folder
    for file_path in folder.glob('*'):
        # Skip directories
        if file_path.is_dir():
            continue
            
        # Check file extension if specified
        if file_extensions and file_path.suffix.lower() not in file_extensions:
            continue
        
        print(f"Processing: {file_path.name}")
        duplicates_removed = remove_duplicates_from_file(file_path)
        
        if duplicates_removed > 0:
            print(f"  Removed {duplicates_removed} duplicate lines")
        
        total_files_processed += 1
        total_duplicates_removed += duplicates_removed
    
    # Print summary
    print("\nSummary:")
    print(f"Files processed: {total_files_processed}")
    print(f"Total duplicate lines removed: {total_duplicates_removed}")

if __name__ == "__main__":
    # Example usage
    folder_path = "."  # Current directory - change this to your folder path
    file_extensions = ['.txt', '.log']  # Specify file extensions to process
    
    print("Duplicate Line Remover")
    print("====================")
    
    # Get folder path from user if not specified
    user_folder = input("Enter folder path (press Enter for current directory): ").strip()
    if user_folder:
        folder_path = user_folder
    
    # Ask if user wants to filter by file extensions
    filter_ext = input("Do you want to filter by file extensions? (y/n): ").lower().strip()
    if filter_ext == 'y':
        ext_input = input("Enter file extensions separated by space (e.g., .txt .log): ").strip()
        if ext_input:
            file_extensions = ext_input.split()
    else:
        file_extensions = None
    
    print(f"\nProcessing files in: {folder_path}")
    if file_extensions:
        print(f"File extensions: {', '.join(file_extensions)}")
    else:
        print("Processing all files")
    
    print("\nStarting duplicate removal...")
    remove_duplicates_in_folder(folder_path, file_extensions)
