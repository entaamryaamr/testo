@echo off

:: Download the 1024x768 resolution wallpaper image (default)
powershell -Command "Invoke-WebRequest https://raw.githubusercontent.com/entaamryaamr/testo/refs/heads/main/nu-1qeh3RAyzBUSzb_DImg.jpg -OutFile 1024x768.jpg"

:: Download the 1920x1080 resolution wallpaper image (for higher resolutions)
powershell -Command "Invoke-WebRequest https://raw.githubusercontent.com/entaamryaamr/testo/refs/heads/main/1920.jpg -OutFile 1920.jpg"

:: Set environment variables for both wallpaper files
set "TranscodedWallpaper=1024x768.jpg"
set "CachedImage1024=1024x768.jpg"
set "CachedImage1920=1920.jpg"

:: Define the destination directories for the wallpaper and cached files
set "destinationDir=C:\Users\runneradmin\AppData\Roaming\Microsoft\Windows\Themes"
set "cachedFileDir=C:\Users\runneradmin\AppData\Roaming\Microsoft\Windows\Themes\CachedFiles"

:: Copy the 1024x768 wallpaper image to the appropriate theme and cached files directories (default)
copy /y "%TranscodedWallpaper%" "%destinationDir%\TranscodedWallpaper"
copy /y "%CachedImage1024%" "%cachedFileDir%\CachedImage_1024_768.jpg"

:: Copy the 1920x1080 wallpaper image only to the cached files directory
copy /y "%CachedImage1920%" "%cachedFileDir%\CachedImage_1920_1080.jpg"

:: Update the system wallpaper settings to apply the default wallpaper
RUNDLL32.EXE USER32.DLL,UpdatePerUserSystemParameters ,1 ,True
