; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

#define MyAppName "PicoGK"
#define MyAppVersion "1.1.0"
#define MyAppPublisher "LEAP 71"
#define MyAppURL "https://github.com/leap71"

[Setup]
; NOTE: The value of AppId uniquely identifies this application. Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{C8830407-8014-4177-AD02-795D7FFAAF02}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
;AppVerName={#MyAppName} {#MyAppVersion}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
DefaultDirName={userdocs}\{#MyAppName}
DefaultGroupName={#MyAppName}
LicenseFile=..\LICENSE.txt
OutputBaseFilename=PicoGK_Installer_{#MyAppVersion}_Win64
OutputDir=../
Compression=lzma
SolidCompression=yes
WizardStyle=modern
ArchitecturesAllowed=x64
ArchitecturesInstallIn64BitMode=x64

WizardImageFile=Src\Icons\*.bmp
WizardImageStretch=no
WizardSmallImageFile=Src\Icons\*.bmp

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"

[Icons]
Name: "{group}\PicoGK Example";  Filename: "{app}\Example";

[Files]
Source: "Src\blosc.dll"; DestDir: "{sys}"
Source: "Src\lz4.dll"; DestDir: "{sys}"
Source: "Src\picogk.1.1.dll"; DestDir: "{sys}"
Source: "Src\tbb12.dll"; DestDir: "{sys}"
Source: "Src\zlib1.dll"; DestDir: "{sys}"
Source: "Src\zstd.dll"; DestDir: "{sys}"
Source: "Src\PicoGKExample\*"; DestDir: "{app}\Example"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "..\..\PicoGK\*"; DestDir: "{app}\Example\PicoGK"; Flags: ignoreversion recursesubdirs createallsubdirs
; NOTE: Don't use "Flags: ignoreversion" on any shared system files
