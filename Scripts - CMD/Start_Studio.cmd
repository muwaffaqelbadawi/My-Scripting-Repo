@echo off

REM Call the Windows PowerShell 5.1 script and pass parameters
powershell -File "E:\UiPath\Scripts - PowerShell\Start Studio\Start-Studio.ps1" -UiRobot_process "C:\Users\Muwaffaq\AppData\Local\Programs\UiPath\Studio\UiRobot.exe" -UiPathAssistant_process "C:\Users\Muwaffaq\AppData\Local\Programs\UiPath\Studio\UiPathAssistant\UiPath.Assistant.exe" -UiPathStudio_process "C:\Users\Muwaffaq\AppData\Local\Programs\UiPath\Studio\UiPath.Studio.exe" -Verbose

pause