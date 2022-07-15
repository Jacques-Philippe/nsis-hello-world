!include "LogicLib.nsh"

; Variables
    ; Nice, human legible app name
!define APP_NAME "Hello World"
!define SOLUTION_NAME "HelloWorldApp"
!define BUILD_CONFIG "Release"
    ; the path to the built c# .exe
!define BUILT_EXE_PATH "${SOLUTION_NAME}/bin/${BUILD_CONFIG}/net5.0/${SOLUTION_NAME}.exe"
    ; The name of the organization
!define ORG_NAME "Some Org"
    ; The name of the directory the .exe is installed
!define INSTALL_DIR "C:\Program Files\${ORG_NAME}"

; Settings
    ; Installer name
Name "${APP_NAME} Installer"
    ; Created installer .exe file
OutFile "${APP_NAME} Installer.exe"

; Sections
Section "Install"
    ; build the app
ExecWait "powershell -ExecutionPolicy Bypass -WindowStyle Hidden -File ./dev/build/win.ps1"
    ; create the installation directory if it doesn't exist 
${If} ${FileExists} `${INSTALL_DIR}`
    ;file is a directory
${Else}
    CreateDirectory `${INSTALL_DIR}`
${EndIf}
    ; copy executable to installation directory
CopyFiles "${SOLUTION_NAME}/bin/${BUILD_CONFIG}/net5.0/${SOLUTION_NAME}*" "${INSTALL_DIR}"
    ; create desktop shortcut
CreateShortCut "$Desktop\${APP_NAME}.lnk" "${INSTALL_DIR}\${SOLUTION_NAME}.exe"
SectionEnd


