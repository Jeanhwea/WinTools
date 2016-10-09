:: Checking Return Codes

IF %ERRORLEVEL% NEQ 0 (
  REM do something here to address the error
)

REM if ERRORLEVEL is any number equal to or greater than 1
IF ERRORLEVEL 1 (
  REM do something here to address the error
)
:: exit this script with return code 1
EXIT /B 1

@ECHO OFF
SETLOCAL ENABLEEXTENSIONS

SET /A errno=0
SET /A ERROR_HELP_SCREEN=1
SET /A ERROR_SOMECOMMAND_NOT_FOUND=2
SET /A ERROR_OTHERCOMMAND_FAILED=4

SomeCommand.exe
IF %ERRORLEVEL% NEQ 0 SET /A errno^|=%ERROR_SOMECOMMAND_NOT_FOUND%

OtherCommand.exe
IF %ERRORLEVEL% NEQ 0 (
    SET /A errno^|=%ERROR_OTHERCOMMAND_FAILED%
)

EXIT /B %errno%