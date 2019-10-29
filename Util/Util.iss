; -- Util.iss --
;
; This script Create Installator and deinstallator of the
; C:\Util catalog

[Setup]
AppName=Utilities Exponenta Plugin
AppVersion=1.5.3.0
AllowRootDirectory=yes
ArchitecturesAllowed=x86 x64
Compression=lzma
DefaultDirName={%UTIL|c:\Util}
MinVersion=0,6.0
SetupLogging=yes
UsePreviousAppDir=yes
DisableStartupPrompt=yes
Output=yes
OutputDir=d:\Download
OutputBaseFilename=UtilSetup
AppCopyright=Copyright (c) Yuri A. Denisov 1992-2019
RestartIfNeededByRun=False
AppPublisher=Юрий А. Денисов 9yudenisov)
AppPublisherURL=http://anticriminalonline.ru/
AppSupportURL=http://yudenisov.ru/
AppContact=yudenisov@mail.ru
AppSupportPhone=+79047071125
UserInfoPage=True
VersionInfoVersion=1.5.3.0
VersionInfoCompany=New Internet Technologies Ltd.
VersionInfoCopyright=Copyright (c) Yuri A. Denisov 1992-2019
VersionInfoProductName=Utilities Exponenta Plugin
VersionInfoProductVersion=1.5.3.0
SolidCompression=True
InternalCompressLevel=max

[Files]

Source: "*.*"; DestDir: "{app}"; Flags: recursesubdirs uninsremovereadonly uninsrestartdelete restartreplace

[Registry]

Root: HKLM; Subkey: "SYSTEM\CurrentControlSet\Control\Session Manager\Environment"; Flags: deletevalue noerror uninsdeletevalue; ValueType: string; ValueName: "UTIL"; ValueData: "{app}"

; Root: HKLM; Subkey: "SYSTEM\CurrentControlSet\Control\Session Manager\Environment"; Flags: noerror; ValueType: string; ValueName: "PATH"; ValueData: "{olddata};{app}"

[UninstallRun]

