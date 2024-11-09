@echo off

:: Download the high-resolution wallpaper image from the provided URL
powershell -Command "Invoke-WebRequest https://raw.githubusercontent.com/entaamryaamr/testo/refs/heads/main/1920.jpg -OutFile 1920.jpg"

:: Set environment variables for the downloaded high-res wallpaper file
set "TranscodedWallpaper=1920.jpg"
set "CachedImage=1920.jpg"

:: Define the destination directories for the wallpaper and cached files
set "destinationDir=C:\Users\runneradmin\AppData\Roaming\Microsoft\Windows\Themes"
set "cachedFileDir=C:\Users\runneradmin\AppData\Roaming\Microsoft\Windows\Themes\CachedFiles"

:: Copy the high-res wallpaper image to the appropriate theme and cached files directories
copy /y "%TranscodedWallpaper%" "%destinationDir%\TranscodedWallpaper"
copy /y "%CachedImage%" "%cachedFileDir%\CachedImage_1920_1080.jpg"

:: Update the system wallpaper settings
RUNDLL32.EXE USER32.DLL,UpdatePerUserSystemParameters ,1 ,True
