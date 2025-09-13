@echo off
setlocal enabledelayedexpansion

set "folder=D:\Documents\.net\Doujin" 
set "search=[Doujindesu.XXX]_"
set "replace="

for %%F in ("%folder%\*%search%*") do (
    set "filename=%%~nxF"
    set "newname=!filename:%search%=%replace%!"
    ren "%%F" "!newname!"
)

endlocal
