<?php

namespace PHPCodeChecker;

class Installer
{
    public static function postInstall()
    {
        system('sh vendor/balfour-group/phpcs-pre-commit-hook/src/setup.sh');
    }
}