import os
import re

def batch_find_replace(directory, patterns):
    """
    Perform find and replace operations on multiple files in a directory.
    
    Args:
    - directory (str): Path to the directory containing files
    - patterns (list): List of tuples containing (find_pattern, replace_pattern)
    
    Returns:
    - dict: Summary of processed files
    """
    # Tracking results
    results = {
        'total_files': 0,
        'modified_files': 0,
        'skipped_files': 0,
        'modifications': []
    }
    
    # Validate input directory
    if not os.path.isdir(directory):
        raise ValueError(f"Invalid directory: {directory}")
    
    # Iterate through files in the directory
    for filename in os.listdir(directory):
        filepath = os.path.join(directory, filename)
        
        # Skip directories
        if os.path.isdir(filepath):
            continue
        
        results['total_files'] += 1
        
        try:
            # Read file content
            with open(filepath, 'r', encoding='utf-8') as file:
                content = file.read()
            
            # Track if file was modified
            file_modified = False
            original_content = content
            
            # Apply each replacement pattern
            for find_pattern, replace_pattern in patterns:
                # Use regex for more flexible matching
                new_content = re.sub(find_pattern, replace_pattern, content)
                
                # Check if content changed
                if new_content != content:
                    content = new_content
                    file_modified = True
            
            # Save modified file if changes were made
            if file_modified:
                with open(filepath, 'w', encoding='utf-8') as file:
                    file.write(content)
                
                results['modified_files'] += 1
                results['modifications'].append({
                    'filename': filename,
                    'changes': len(re.findall(find_pattern, original_content))
                })
            
        except Exception as e:
            print(f"Error processing {filename}: {e}")
            results['skipped_files'] += 1
    
    return results

def main():
    # Example usage
    directory = 'SDC/'
    
    # Define replacement patterns
    # Each tuple is (find_pattern, replace_pattern)
    patterns = [
        # Example 1: Simple string replacement
        (r'sram\n', 'sram*\n'),

	(r'sram_inv\n', 'sram_inv*\n'),
	(r'mode\n', 'mode*\n'),
	(r'mode_inv\n', 'mode_inv*\n'),
	(r'/out\n', '/out*\n'),
	(r'_out\n', '_out*\n'),
	(r'_tail\n', '_tail*\n'),
	(r'grid_clb/', 'grid_clb_*__*_/'),
	(r'grid_io_left/', 'grid_io_left_*__*_/'),
	(r' fpga_top/', ' ') 
        
        # Example 2: Regex pattern replacement
        #(r'version\s*=\s*\d+', 'version = 2024'),
        
        # Example 3: Replace with more complex pattern
        #(r'(disable_timing\s*)(\w+)', r'\1global_disable')
    ]
    
    # Run the batch find and replace
    results = batch_find_replace(directory, patterns)
    
    # Print summary
    print("\nFile Processing Summary:")
    print(f"Total Files: {results['total_files']}")
    print(f"Modified Files: {results['modified_files']}")
    print(f"Skipped Files: {results['skipped_files']}")
    
    # Detailed modifications
    if results['modifications']:
        print("\nModification Details:")
        for mod in results['modifications']:
            print(f"- {mod['filename']}: {mod['changes']} changes")

if __name__ == '__main__':
    main()
