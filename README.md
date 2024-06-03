# Azure-Bash-CLI-Uploader

This Bash script allows you to seamlessly upload files to an Azure Storage Account using the Azure CLI. Ensure you have Azure CLI installed before proceeding.

## Prerequisites
- [Azure CLI](https://docs.microsoft.com/cli/azure/install-azure-cli)
- An Azure Subscription with the appropriate [permissions](https://learn.microsoft.com/en-us/azure/role-based-access-control/role-assignments-portal) assigned
- An environment capable of running Bash scripts (e.g., Linux/Unix, Windows Subsystem for Linux (WSL), Git Bash, VSCode, Dev Containers, etc.)

## Installation
**Clone the Repository**:
   ```bash
   git clone https://github.com/permach-tech/Azure-Bash-CLI-Uploader.git
   ```
## Usage
Navigate to the directory containing the script and ensure it has execute permissions:
```bash
   chmod +x azure-uploader.sh
   ```
Execute the script:
```bash
   sh azure-uploader.sh -g <your-resource-group> -a <your-storage-account> -c <your-container-name> -f <file-path>
   ```
## Resources
- https://learn.microsoft.com/en-us/cli/azure/azure-cli-learn-bash
- https://learn.microsoft.com/en-us/cli/azure/get-started-tutorial-1-prepare-environment?tabs=bash#find-and-change-your-active-subscription
