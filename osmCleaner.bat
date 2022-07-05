echo off
echo "I'm located in this path - %cd%"
::echo %cd%
echo "Are you sure to remove these files?"
set /p menu="click (Y or N) to process (Y/N):"
if %menu%==Y goto Yes
if %menu%==y goto Yes
if %menu%==N goto No
if %menu%==n goto no
cls

:Yes
::+++++----<{ remove the listed files & folders below and
::put here your desired files & folders to delete
::rmdir /s /q CMakeFiles
::rmdir /s CMakeFiles
::rm -r CMakeFiles
echo delete folder
rd /s CMakeFiles
echo delete folder
rd /s lib
del CMakeCache.txt
del libmain_lib.a
del output.map
del compile_commands.json
del cmake_install.cmake
::del Makefile?
::+++++-----}>
exit

:No
echo "files hasn't deleted!"
exit