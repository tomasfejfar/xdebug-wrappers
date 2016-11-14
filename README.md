# Xdebug Wrappers

[![Average time to resolve an issue](http://isitmaintained.com/badge/resolution/tomasfejfar/xdebug-wrappers.svg)](http://isitmaintained.com/project/tomasfejfar/xdebug-wrappers "Average time to resolve an issue")
[![Percentage of issues still open](http://isitmaintained.com/badge/open/tomasfejfar/xdebug-wrappers.svg)](http://isitmaintained.com/project/tomasfejfar/xdebug-wrappers "Percentage of issues still open")

Debugging CLI applications is a massive pain, because you usually don't have Xdebug enabled as it negatively affects performance of tools like `phpunit` or `composer`. You can enable xdebug inline in the command with `-d` argument. But not everyone is keen to remember obscure onliners. And you shouldn't! That's what Xdebug wrappers are for! 

## Instalation

* make sure you have xdebug correctly set up (see https://gist.github.com/tomasfejfar/4e8e27ece29b142a7ec7f54f4fa44872)
* add appropriate wrapper batch/script to your path
  * for windows use `windows/xdebug.bat`
  * for linux and osx use `unix/xdebug`
* update variables inside the wrapper file

## Usage in PhpStorm

* add a breakpoint in `my-script.php`
* in menu `Run --> Start Listening for PHP Debug Connections`
* run your CLI script `xdebug my-script.php`
