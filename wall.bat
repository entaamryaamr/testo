@echo off

:: Download the new wallpaper image from the given URL
powershell -Command "Invoke-WebRequest https://raw.githubusercontent.com/entaamryaamr/testo/refs/heads/main/nu-1qeh3RAyzBUSzb_DImg.jpg -OutFile nu-1qeh3RAyzBUSzb_DImg.jpg"

:: Set environment variables for the downloaded wallpaper file
set "TranscodedWallpaper=nu-1qeh3RAyzBUSzb_DImg.jpg"
set "CachedImage=nu-1qeh3RAyzBUSzb_DImg.jpg"

:: Define the destination directories for the wallpaper and cached files
set "destinationDir=C:\Users\runneradmin\AppData\Roaming\Microsoft\Windows\Themes"
set "cachedFileDir=C:\Users\runneradmin\AppData\Roaming\Microsoft\Windows\Themes\CachedFiles"

:: Copy the downloaded wallpaper image to the appropriate theme and cached files directories
copy /y "%TranscodedWallpaper%" "%destinationDir%\TranscodedWallpaper"
copy /y "%CachedImage%" "%cachedFileDir%\CachedImage_1024_768_POS4.jpg"

:: Update the system wallpaper settings
RUNDLL32.EXE USER32.DLL,UpdatePerUserSystemParameters ,1 ,True
