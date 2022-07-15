# How to use
1. Install `makensis`
    - Linux (Ubuntu)
        1. [Install NSIS](https://installati.one/ubuntu/21.04/nsis/)
        1. Use command `makensis [installer file].nsi`
    - Windows
        1. [Install NSIS](https://nsis.sourceforge.io/Download)
        1. Use command `"C:\Program Files (x86)\NSIS\makensis.exe" "C:\[full path to root]\installer.nsi"`
1. Create installer
    - Linux
        - `dev/create-installer/linux.sh`
    - Windows 
        - Use command `"C:\Program Files (x86)\NSIS\makensis.exe" "C:\[full path to root]\installer.nsi"`
1. (Windows only) Execute the installer

# Purpose
Experiment with NSIS and create an installer.

# Implementation
1. Create a basic `hello-world` .NET console app.
1. Create an NSIS installer to install the compiled `hello-world`. Installer should
    1. have name `Hello World Installer`
    1. Create the executable at `C:\Program Files\Installer Demo\hello-world.exe`
    1. Create a shortcut on desktop to the `hello-world.exe`

# How it works
The .nsi `installer` file is compiled by `makensis`. Note that this file is an executable to be run on a Windows OS.

