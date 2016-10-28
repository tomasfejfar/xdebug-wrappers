#!/bin/bash

# Update according to your needs
XDEBUG_FILE=php_xdebug-2.4.0-7.0-vc14.dll
XDEBUG_PATH=/path/to/
PHP_BINARY=/usr/bin/php
XDEBUG_IDEKEY=PHPSTORM

# No need to touch this
export XDEBUG_CONFIG="idekey=$XDEBUG_IDEKEY"
$PHP_BINARY -dzend_extension="$XDEBUG_PATH$XDEBUG_FILE" "$@"