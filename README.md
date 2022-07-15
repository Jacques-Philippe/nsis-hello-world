# How to use
1. Run command `dev/create-installer/[your os]`
1. Run the installer

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
## Install `makensis`
### Linux (Ubuntu)
1. [Install NSIS](https://installati.one/ubuntu/21.04/nsis/)
1. Use command `makensis [installer file].nsi`
### Windows
1. [Install NSIS](https://nsis.sourceforge.io/Download)
1. Use command `"C:\Program Files (x86)\NSIS\makensis.exe" "C:\projects\nsis\installer.nsi"`

