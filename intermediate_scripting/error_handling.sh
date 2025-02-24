#!/bin/bash

# Function to create a directory
create_directory(){
    if [ -d "demo" ]; then
        echo "Directory 'demo' already exists."
        return 1  # Exit function with error
    else
        mkdir demo
        echo "Directory 'demo' created successfully."
    fi
}

# Call the function and handle failure
if ! create_directory; then
    echo "Exiting: The directory already exists."
    exit 1
fi

# Create a sample file inside the directory
echo "Creating a sample file inside 'demo'..."
touch demo/sample.txt
echo "Hello, this is a test file." > demo/sample.txt

# Set directory permissions
chmod 755 demo
echo "Permissions set for 'demo' directory."

# Log actions to a file
LOGFILE="script.log"
echo "$(date) - Directory 'demo' created with a sample file." >> $LOGFILE

# Display completion message
echo "Script executed successfully. Directory and file created."

