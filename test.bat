@echo off
REM Set the source and destination directories
set "source_dir=E:\SHRI AND SRI KPM RECEPTION\Test\Cam-001"
set "destination_dir=E:\SHRI AND SRI KPM RECEPTION\Final selected"
set "file_list=C:\Users\EZHIL\Desktop\final-photos.txt"  REM Path to the text file with filenames

REM Check if the destination directory exists, create it if it doesn't
if not exist "%destination_dir%" (
    mkdir "%destination_dir%"
)

REM Loop through the file list and copy files
for /f "delims=" %%f in (%file_list%) do (
    if exist "%source_dir%\%%f" (
        copy "%source_dir%\%%f" "%destination_dir%\"
        echo Copied: %%f
    ) else (
        echo File not found: %%f
    )
)

echo Task Completed!
pause
