#!/bin/bash

# Specify the path of the text file containing student names
input_file="file_name.txt"

# Make sure the file exists
if [ ! -f "$input_file" ]; then
    echo "The file $input_file does not exist."
    exit 1
fi

# Read the file line by line and clone the repos
while IFS= read -r repo_name; do
   
    # For this part, you can use the ssh link for the example we use user johndoe
    # But change this part to add your username
    repo_url="git@github.com:johndoe/$repo_name.git"

    echo "Cloning repo for $repo_name..."
    
    # Add a debug message to see the value of repo_url
    echo "Repo URL: $repo_url"
    
    # Add a debug message to see the result of the git clone command
    git clone "$repo_url"
    
    # Add a debug message to see if the git clone command succeeded or failed
    if [ $? -eq 0 ]; then
        echo "Cloning successful for $repo_name"
    else
        echo "Cloning failed for $repo_name"
    fi
done < "$input_file"

echo "Cloning completed."
