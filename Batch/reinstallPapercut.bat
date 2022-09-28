@echo off
echo.
echo Reinstalling Papercut...

wmic product where name="PaperCut Print Deploy Client" call uninstall /nointeractive > NUL
If %ERRORLEVEL% NEQ 0 (
    EXIT /B %ERRORLEVEL%
)
msiexec /i "\\bsdapps\install\Papercut\PaperCut Print Deploy client 1.4.1484 - June 2022\pc-print-deploy-client[papercut.boiseschools.org].msi" /quiet
goto :success

:success
cls
echo PaperCut has been reinstalled!
echo Please readd all desired printers by launching PaperCut and going to the "add printers" tab on the lefthand side
echo.
echo If any issues occur please reach out to help desk by going to support.boiseschools.org or by calling 208-854-6670
echo.
PAUSE