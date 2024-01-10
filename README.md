# Multi-Repo Cloning Script

## Overview

This Bash script is designed to automate the process of cloning multiple GitHub repositories simultaneously. 
It reads a list of repository names from a text file and clones each repository using the SSH protocol.

## Prerequisites

Before using this script, make sure you have the following prerequisites:

- Git installed on your machine
- GitHub account with SSH keys configured

## Usage

1. Create a text file (`file_name.txt`) containing the names of the GitHub repositories, with each name on a new line.

2. Run the script by executing the following command in the terminal:

   ```bash
   ./clone_repos.sh

3. Ensure that the script file (clone_repos.sh) has executable permissions:

    ```bash
    chmod +x clone_repos.sh
