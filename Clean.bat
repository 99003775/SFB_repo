@echo off

REM
REM This script prepares the working copy for a clean compile of all the 
REM files necessary for BuildAll.bat
REM

REM
REM Delete the _inc and _source directories, used by the debugger for source
REM code access
REM
REM  /s   Deletes a directory tree (the specified directory and all its 
REM       subdirectories, including all files). 
REM  /q   Specifies quiet mode. Does not prompt for confirmation when 
REM       deleting a directory tree. (Note that /q works only if /s is specified.)
REM      

echo Deleting debugger source reference files...
rd /s /q _inc
rd /s /q _source

REM
REM next delete the object repository
REM N.B. save Output/bin from removal
REM

echo Deleting object files...
rd /s /q Output\objects

