; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

[Setup]
; NOTE: The value of AppId uniquely identifies this application.
; Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
PrivilegesRequired=none
AppId={{67C0F37C-E0F4-4D6A-9A20-5BA8FB27308E}}
AppName=SolarPILOT

; 64-bit installer extensions - remove if an issue
;ArchitecturesAllowed=x86 x64 ia64
;ArchitecturesInstallIn64BitMode=x64 ia64

; 64-bit installer
; "ArchitecturesInstallIn64BitMode=x64" requests that the install be
; done in "64-bit mode" on x64, meaning it should use the native
; 64-bit Program Files directory and the 64-bit view of the registry.
ArchitecturesInstallIn64BitMode=x64


; UPDATE THESE TO MATCH THE VERSION
AppVerName=SolarPILOT 1.3.8
DefaultDirName={pf}\SolarPILOT\1.3.8

AppPublisher=National Renewable Energy Laboratory
AppPublisherURL=http://www.nrel.gov/csp/solarpilot.html
AppSupportURL=http://www.nrel.gov/csp/solarpilot.html
AppUpdatesURL=http://www.nrel.gov/csp/solarpilot.html
DefaultGroupName=SolarPILOT
OutputDir=.
OutputBaseFilename=solarpilot-install
Compression=lzma
SolidCompression=yes
ChangesAssociations=yes
InfoBeforeFile=setup_disclaimer.rtf
UsePreviousAppDir=no

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked

[Files]

Source: "samples/*"; DestDir: "{app}/samples"; Excludes: ".svn,*.map"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "exelib/*"; DestDir: "{app}/exelib"; Excludes: ".svn,\custom"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "climate_files/*"; DestDir: "{app}/climate_files"; Excludes: ".svn"; Flags: ignoreversion recursesubdirs createallsubdirs

Source: "x64/ssleay32.dll"; DestDir: "{app}/x64"; Excludes: ".svn,*.map"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "x64/msvcr120.dll"; DestDir: "{app}/x64"; Excludes: ".svn,*.map";  Flags: ignoreversion recursesubdirs createallsubdirs
Source: "x64/msvcp120.dll"; DestDir: "{app}/x64"; Excludes: ".svn,*.map";  Flags: ignoreversion recursesubdirs createallsubdirs
Source: "x64/dbghelp.dll"; DestDir: "{app}/x64"; Excludes: ".svn,*.map";  Flags: ignoreversion recursesubdirs createallsubdirs
Source: "x64/libssh2.dll"; DestDir: "{app}/x64"; Excludes: ".svn,*.map";  Flags: ignoreversion recursesubdirs createallsubdirs
Source: "x64/libeay32.dll"; DestDir: "{app}/x64"; Excludes: ".svn,*.map";  Flags: ignoreversion recursesubdirs createallsubdirs
Source: "x64/libcurl.dll"; DestDir: "{app}/x64"; Excludes: ".svn,*.map";  Flags: ignoreversion recursesubdirs createallsubdirs
Source: "x64/solarpilot.exe"; DestDir: "{app}/x64"; Excludes: ".svn,*.map";  Flags: ignoreversion recursesubdirs createallsubdirs
;Source: "x64/solarpilot.pdb"; DestDir: "{app}/x64"; Excludes: ".svn,*.map";  Flags: ignoreversion recursesubdirs createallsubdirs


; NOTE: Don't use "Flags: ignoreversion" on any shared system files
[Icons]
Name: "{group}\SolarPILOT"; Filename: "{app}\x64\solarpilot.exe"  ; Check: Is64BitInstallMode
;
Name: "{commondesktop}\SolarPILOT (x64)"; Filename: "{app}\x64\solarpilot.exe"; Tasks: desktopicon; Check: Is64BitInstallMode

[Registry]
; 12/4/08 - delete left over entry to prevent issue reported by Paul - opening with earlier version when new verions installed
Root: HKCR; Subkey: "Applications\solarpilot.exe"; ValueType: none; ValueName: ; ValueData: SolarPILOT; Flags: deletekey; Check: IsAdminLoggedOn

; 12/4/08 for admin privileges -see Documentation\InnoSetup\AdminPrivileges
Root: HKCR; Subkey: ".sam"; ValueType: string; ValueName: ; ValueData: "NREL.SolarPILOT"; Flags: uninsdeletevalue; Check: IsAdminLoggedOn
Root: HKCR; Subkey: "NREL.SolarPILOT"; ValueType: string; ValueName: ; ValueData: "SolarPILOT Project File"; Flags: uninsdeletekey; Check: IsAdminLoggedOn         
Root: HKCR; Subkey: "NREL.SolarPILOT\DefaultIcon"; ValueType: string; ValueName: ; ValueData: "{app}\x64\solarpilot.exe,0"; Check: IsAdminLoggedOn  and Is64BitInstallMode
Root: HKCR; Subkey: "NREL.SolarPILOT\shell\open\command"; ValueType: string; ValueName: ; ValueData: """{app}\x64\solarpilot.exe"" ""%1"""; Check: IsAdminLoggedOn  and Is64BitInstallMode

; 12/4/08 for non-admin privileges -see Documentation\InnoSetup\AdminPrivileges
Root: HKCU; Subkey: "Software\Classes\.sam"; ValueType: string; ValueName: ; ValueData: "NREL.SolarPILOT"; Flags: uninsdeletevalue; Check: not IsAdminLoggedOn
Root: HKCU; Subkey: "Software\Classes\NREL.SolarPILOT"; ValueType: string; ValueName: ; ValueData: "SolarPILOT Project File"; Flags: uninsdeletekey; Check: not IsAdminLoggedOn            
Root: HKCU; Subkey: "Software\Classes\NREL.SolarPILOT\DefaultIcon"; ValueType: string; ValueName: ; ValueData: "{app}\x64\solarpilot.exe,0"; Check: not IsAdminLoggedOn  and Is64BitInstallMode
Root: HKCU; Subkey: "Software\Classes\NREL.SolarPILOT\shell\open\command"; ValueType: string; ValueName: ; ValueData: """{app}\x64\solarpilot.exe"" ""%1"""; Check: not IsAdminLoggedOn  and Is64BitInstallMode

[Run]
Filename: "{app}\x64\solarpilot.exe"; Flags: postinstall skipifsilent unchecked; Description: "{cm:LaunchProgram,SolarPILOT}"; Check: Is64BitInstallMode



; added 9/19/07 to check for running instances on install and uninstall

[Code]

function InitializeUninstall(): boolean;

begin
   MsgBox('Please close any running instances of SolarPILOT before continuing.', mbConfirmation, MB_OK);
   Result := true;
end;

// 12/08/08 - added to select appropriate installation path that is writeable by the user
function IsRegularUser(): Boolean;
begin
  Result := not (IsAdminLoggedOn or IsPowerUserLoggedOn);
end;

// 4/14/09 - modify to install in localappdata always - avoids UAC issue reported by Paul
function DefDirRoot(Param: String): String;
begin
//  if IsRegularUser then
    Result := ExpandConstant('{localappdata}')
//  else
//    Result := ExpandConstant('{pf}')
end;


