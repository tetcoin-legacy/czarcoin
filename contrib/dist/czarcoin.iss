; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

#define MyAppName "Czarcoin"
#define MyAppVersion "8.7.5"
#define MyAppPublisher "Kedia"
#define MyAppURL "https://czarcoin.com"
#define MyAppExeName "czarcoin-qt.exe"

[Setup]
; NOTE: The value of AppId uniquely identifies this application.
; Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{61910ACF-366E-434F-9761-FF22957F49AE}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
;AppVerName={#MyAppName} {#MyAppVersion}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
DefaultDirName={pf}\{#MyAppName}
DisableProgramGroupPage=yes
LicenseFile=C:\Users\kedia\Downloads\czarcoin-qt-v8.7.5-02.27.18-win64\COPYING.txt
InfoAfterFile=C:\Users\kedia\Downloads\czarcoin-qt-v8.7.5-02.27.18-win64\Readme.txt
OutputDir=C:\Users\kedia\Downloads\czarcoin-qt-v8.7.5-02.27.18-win64
OutputBaseFilename=czarcoin-8-install
Compression=lzma
SolidCompression=yes

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked
Name: "quicklaunchicon"; Description: "{cm:CreateQuickLaunchIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked; OnlyBelowVersion: 0,6.1

[Files]
Source: "C:\Users\kedia\Downloads\czarcoin-qt-v8.7.5-02.27.18-win64\czarcoin-qt.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\kedia\Downloads\czarcoin-qt-v8.7.5-02.27.18-win64\COPYING.txt"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\kedia\Downloads\czarcoin-qt-v8.7.5-02.27.18-win64\Readme.txt"; DestDir: "{app}"; Flags: ignoreversion
; NOTE: Don't use "Flags: ignoreversion" on any shared system files

[Icons]
Name: "{commonprograms}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"
Name: "{commondesktop}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; Tasks: desktopicon
Name: "{userappdata}\Microsoft\Internet Explorer\Quick Launch\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; Tasks: quicklaunchicon

[Run]
Filename: "{app}\{#MyAppExeName}"; Description: "{cm:LaunchProgram,{#StringChange(MyAppName, '&', '&&')}}"; Flags: nowait postinstall skipifsilent
