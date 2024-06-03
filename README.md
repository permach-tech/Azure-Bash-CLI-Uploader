# Azure-Bash-CLI-Uploader

This Bash script allows one to seamlessly upload files to an Azure Storage Account, this script leverages Azure CLI as well, so you will need to install Azure CLI.

## Prerequisites
- [Azure CLI](https://docs.microsoft.com/cli/azure/install-azure-cli)
- Azure Subscription and correct [permissions](https://learn.microsoft.com/en-us/azure/role-based-access-control/role-assignments-portal) assigned
- An environment where Bash scripts can be run i.e. Linux/Unix, Windows Subsystem for Linux(WSL), Git Bash GUI, VSCode, Dev Containers, etc.

## Installation
**Clone the Repository**:
   ```bash
   git clone https://github.com/permach-tech/Azure-Bash-CLI-Uploader.git
   ```
## Usage
Navigate to the directory where the script is and ensure the script has execute permissions:
```bash
   chmod +x azure-uploader.sh
   ```
Execute the script:
```bash
   sh azure-uploader.sh
   ```
