#!/bin/bash

# Function to display usage
usage() {
    echo "Usage: $0 -g <resource-group> -a <storage-account> -c <container-name> -f <file-path>"
    exit 1
}

# Parse command-line arguments
while getopts ":g:a:c:f:" opt; do
    case $opt in
        g) RESOURCE_GROUP="$OPTARG"
        ;;
        a) STORAGE_ACCOUNT="$OPTARG"
        ;;
        c) CONTAINER_NAME="$OPTARG"
        ;;
        f) FILE_PATH="$OPTARG"
        ;;
        \?) echo "Invalid option -$OPTARG" >&2
            usage
        ;;
        :) echo "Option -$OPTARG requires an argument." >&2
           usage
        ;;
    esac
done

# Check if all arguments are provided
if [ -z "$RESOURCE_GROUP" ] || [ -z "$STORAGE_ACCOUNT" ] || [ -z "$CONTAINER_NAME" ] || [ -z "$FILE_PATH" ]; then
    usage
fi

# Check if the file exists
if [ ! -f "$FILE_PATH" ]; then
    echo "File not found: $FILE_PATH"
    exit 1
fi

# Get the storage account key
ACCOUNT_KEY=$(az storage account keys list --resource-group "$RESOURCE_GROUP" --account-name "$STORAGE_ACCOUNT" --query "[0].value" --output tsv)

# Upload the file to the blob container
az storage blob upload --account-name "$STORAGE_ACCOUNT" --account-key "$ACCOUNT_KEY" --container-name "$CONTAINER_NAME" --file "$FILE_PATH" --name "$(basename $FILE_PATH)"

# Check if the upload was successful
if [ $? -eq 0 ]; then
    echo "File uploaded successfully!"
else
    echo "File upload failed."
    exit 1
fi
