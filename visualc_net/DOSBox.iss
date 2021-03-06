; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

[Setup]
; NOTE: The value of AppId uniquely identifies this application.
; Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{FBA7CAFC-8256-457B-910A-32E070BA7CFB}
AppName=DOSBox SVN
AppVersion=r4229
AppPublisher=The Uploader
AppPublisherURL=https://github.com/maximilien-noal/dosbox-svn
AppUpdatesURL=https://github.com/maximilien-noal/dosbox-svn/releases
DefaultDirName={pf32}\DOSBox-SVN
DefaultGroupName=\DOSBox SVN
InfoBeforeFile=..\COPYING
OutputDir=.\
OutputBaseFilename=setup-DOSBox_SVN_r4229
SetupIconFile=..\src\dosbox.ico
DisableWelcomePage=no
SolidCompression=True

[Tasks]
Name: desktopicon; Description: {cm:CreateDesktopIcon}; GroupDescription: {cm:AdditionalIcons};
Name: quicklaunchicon; Description: {cm:CreateQuickLaunchIcon}; GroupDescription: {cm:AdditionalIcons}; Flags: unchecked; OnlyBelowVersion: 0,6.1

[Files]
Source: "Release\DOSBox.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\deps\libpng\projects\vstudio\Release\libpng16.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "SDL.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "SDL_net.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "VC_redist.x86.exe"; DestDir: "{tmp}"; Flags: ignoreversion
; NOTE: Don't use "Flags: ignoreversion" on any shared system files

[Icons]
Name: "{group}\DOSBox SVN"; Filename: "{app}\DOSBox.exe"; IconIndex: 0;
Name: "{group}\{cm:UninstallProgram,DOSBox SVN}"; Filename: "{uninstallexe}";
Name: "{commondesktop}\DOSBox SVN"; Filename: "{app}\DOSBox.exe";
Name: "{userappdata}\Microsoft\Internet Explorer\Quick Launch\DOSBox SVN"; Filename: "{app}\DOSBox.exe";

[Run]
Filename: "{tmp}\VC_redist.x86.exe"; Parameters: "/quiet /norestart"; StatusMsg: "Installation MSVC Runtime 2017 x86..."; WorkingDir: "{tmp}"
Filename: "{app}\DOSBox.exe"; Flags: shellexec postinstall skipifsilent; Description: "{cm:LaunchProgram,DOSBox SVN}"