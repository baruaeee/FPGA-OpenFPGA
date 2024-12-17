def remove_cdn_loop_breaker(file_path):
    # Read the file contents
    with open(file_path, 'r') as file:
        lines = file.readlines()
    
    # Filter out lines containing "cdn_loop_breaker"
    filtered_lines = [line for line in lines if "cdn_loop_breaker" not in line]
    
    # Write the filtered content back to the same file
    with open(file_path, 'w') as file:
        file.writelines(filtered_lines)

# Example usage
file_path = './genus_invs_des/genus.dont_touch.sdc'  # Replace with your actual file path
remove_cdn_loop_breaker(file_path)

print(f"Removed cdn_loop_breaker lines from {file_path}")
