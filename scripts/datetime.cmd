:: echo datetime in yyyy-mm-dd HH:MM:SS format
@ECHO off
SETLOCAL

SET year=%DATE:~0,4%
SET month=%DATE:~5,2%
SET day=%DATE:~8,2%

SET hour=%TIME:~0,2%
SET minute=%TIME:~3,2%
SET second=%TIME:~6,2%

ECHO %year%-%month%-%day% %hour%:%minute%:%second%

ENDLOCAL
ECHO on