@echo off
setlocal enableextensions enabledelayedexpansion
rem Defaults to be overridden in ~/.config/xdebug_wrapper.bat
SET XDEBUG_IDEKEY=PHPSTORM
SET PHP_BINARY=php

rem Override defaults
SET XDEBUG_OVERRIDE_FILE=%UserProfile%\.config\xdebug_wrapper.bat
IF EXIST %XDEBUG_OVERRIDE_FILE% (
	CALL %XDEBUG_OVERRIDE_FILE%
)

IF NOT DEFINED EXTENSION_PATH (
	for /f %%i in ('%PHP_BINARY% -r "echo ini_get('extension_dir');"') do set EXTENSION_PATH=%%i
)

rem Find xdebug file if not set
IF NOT DEFINED XDEBUG_FILE (
	for /f "delims=" %%j in ('dir /b %EXTENSION_PATH% ^| %windir%\System32\find "xdebug"') do set XDEBUG_FILE=%%j
) 

rem Execute binary
SET XDEBUG_CONFIG=idekey=%XDEBUG_IDEKEY%
%PHP_BINARY% -dzend_extension="%EXTENSION_PATH%\%XDEBUG_FILE%" -dxdebug.remote_enable=1 -dxdebug.idekey="%XDEBUG_IDEKEY%" %*
