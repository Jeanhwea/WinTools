:: SET variables cannnot put any space between =
SET foo=bar
ECHO %foo%

:: Variable Scope (Global vs Local)
:: SET local variables by follow block
SETLOCAL
:: variables here are visibale locally
SET current_directory=%CD%
SET current_date=%DATE%
SET current_time=%TIME%
ENDLOCAL

:: Command Line Arguments
REM %0 -> command name
REM %1 -> first command line argument
REM %2 -> second command line argumet
...
REM %9 -> 9th command line argument
REM %* -> all command line argument in one variable

:: Trick with Command Line Arguments
:: 'For /?' can
ECHO 1=%1
ECHO ~1=%~1     :: remove qoute of first argument
ECHO ~f1=%~fs1  :: expand to full file path of first argument
ECHO ~fs1=%~fs1 :: expand to full file path, in short name of first argument
ECHO ~dp1=%~dp1 :: expand to parent directory of first argument
ECHO ~nx1=%~nx1 :: expand to file name and extension of first argument
ECHO ~n1=%~n1   :: expand to file name of first argument

:: Last Polish
:: put following to your script
SETLOCAL ENABLEEXTENSIONS
SET me=%~n0
SET parent=%~dp0

ECHO %me%: this is echo message.
