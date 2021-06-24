#!/bin/sh

if [ -d .git ];
then
    DIR_PREFIX=
else
    DIR_PREFIX=../
fi

if [ -e "$DIR_PREFIX.git/hooks/pre-commit" ];
then
    PRE_COMMIT_EXISTS=1
else
    PRE_COMMIT_EXISTS=0
fi

if [ ! -d "$DIR_PREFIX.git/hooks" ]; then
  mkdir -p "$DIR_PREFIX.git/hooks"
fi

cp vendor/balfour-group/phpcs-pre-commit-hook/src/pre-commit "$DIR_PREFIX.git/hooks/pre-commit"
chmod +x "$DIR_PREFIX.git/hooks/pre-commit"

if [ "$PRE_COMMIT_EXISTS" = 0 ];
then
    echo "Pre-commit git hook is installed!"
else
    echo "Pre-commit git hook is updated!"
fi
