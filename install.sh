###################################
# Prerequisites

# Update the list of packages: Este comando se ejecuta como SuperUsuario y actualiza la lista (no progrmas) de paquetes de software disponibles en los repositorios de nuestro sistema linux
sudo apt-get update

# Install pre-requisite packages: Este comando se ejecuta como SuperUsuario y le pide al encargado de software que instale (install), aceptando todas las preguntas (-y), los programas "wget", "apt-transport-https" y "software-properties-common" en nuestro sistema linux.
sudo apt-get install -y wget apt-transport-https software-properties-common

# Get the version of Ubuntu: Este comando ejecuta (source) el archivo /etc/os-release. Esto carga las variables definidas dentro de ese archivo para que lo usen de una vez en la sesión de la terminal actual.
source /etc/os-release

# Download the Microsoft repository keys:Este comando utiliza el programa de descargas "wget" con el modo silencioso "(-q)"" para descargar directamente desde un servidor de Microsoft en internet el archivo "packages-microsoft-prod.deb". Este archivo se usa para añadir un nuevo repositorio  al sistema adaptado al mismo
wget -q https://packages.microsoft.com/config/ubuntu/$VERSION_ID/packages-microsoft-prod.deb

# Register the Microsoft repository keys :Este comando se ejecuta como SuperUsuario y utiliza el gestor de paquetes de bajo nivel de Debian (dpkg) para instalar (-i) el archivo .deb llamado packages-microsoft-prod.deb. Este archivo es un paquete de configuración que añade la dirección de un nuevo repositorio de Microsoft a nuestro sistema Linux.
sudo dpkg -i packages-microsoft-prod.deb

# Delete the Microsoft repository keys file: Este comando utiliza el programa rm que es remove para borrar permanentmente el archivo "packages-microsoft-prod.deb" del disco duro. Se ejecuta sin sudo porque el archivo fue descargado en el directorio actual y el usuario tiene permisos para eliminarlo.
rm packages-microsoft-prod.deb

# Update the list of packages after we added packages.microsoft.com:  Este comando se ejecuta como SuperUsuario y le pide al encargado de software que actualice (update) la lista (no los programas) de paquetes de software disponibles, incluyendo tambien a las nuevas fuentes que añadimos en los repositorios de nuestro sistema .
sudo apt-get update

###################################
# Install PowerShell: Este comando se ejecuta como SuperUsuario y le pide al encargado de software (apt-get) que instale (install) aceptando todas las preguntas de confirmación (-y) el programa powershell en nuestro sistema . Este programa nos deja  usar el lenguaje de línea de comandos y scripting de MicrosoftPowerShell en un entorno como nuesro caso, Linux.
sudo apt-get install -y powershell

# Start PowerShell: ejecución del programa que habiamos instalado.
pwsh
