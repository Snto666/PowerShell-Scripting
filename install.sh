###################################
# Prerequisites

# Update the list of packages: Este comando se ejecuta como SuperUsuario y actualiza la lista (no progrmas) de paquetes de software disponibles en los repositorios de nuestro sistema linux
sudo apt-get update

# Install pre-requisite packages: Este comando se ejecuta como SuperUsuario y le pide al encargado de software que instale (install), aceptando todas las preguntas (-y), los programas "wget", "apt-transport-https" y "software-properties-common" en nuestro sistema linux.
sudo apt-get install -y wget apt-transport-https software-properties-common

# Get the version of Ubuntu
source /etc/os-release

# Download the Microsoft repository keys
wget -q https://packages.microsoft.com/config/ubuntu/$VERSION_ID/packages-microsoft-prod.deb

# Register the Microsoft repository keys
sudo dpkg -i packages-microsoft-prod.deb

# Delete the Microsoft repository keys file
rm packages-microsoft-prod.deb

# Update the list of packages after we added packages.microsoft.com
sudo apt-get update

###################################
# Install PowerShell
sudo apt-get install -y powershell

# Start PowerShell
pwsh
