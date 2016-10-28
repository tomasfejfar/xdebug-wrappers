@echo off
rem Update according to your needs
SET XDEBUG_FILE=php_xdebug-2.4.0-7.0-vc14.dll
SET XDEBUG_PATH=C:\xampp-php7\php\ext\
SET XDEBUG_IDEKEY=PHPSTORM

rem No need to touch this
SET XDEBUG_CONFIG=idekey=%XDEBUG_IDEKEY%
php -dzend_extension="%XDEBUG_PATH%%XDEBUG_FILE%" %*