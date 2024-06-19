@REM Dump SAM,NTUSER,SECURITY,SYSTEM & SOFTWARE
@echo off
setlocal

@REM variables
set "sam_path=%~dp0Outputsam_backup"
set "sec_path=%~dp0sec_backup"
set "sys_path=%~dp0sys_backup"
set "INDEXPATH=%cd%"

@REM 
set "backup_dir=%~dp0Output"
set "ntuser_path=%~dp0ntuser_backup"

@REM Create the backup directory if it doesn't exist
if not exist "%backup_dir%" mkdir "%backup_dir%"

rem Create the backup directory if it doesn't exist
reg save HKLM\SAM "%backup_dir%\sam_backup"
reg save HKLM\SECURITY "%backup_dir%\security_backup"
reg save HKLM\SYSTEM "%backup_dir%\system_backup"

@REM TODO: Save the NTUSER.DAT file of the current user
@REM copy "%USERPROFILE%\NTUSER.DAT"

