#!/bin/sh

cd /var/www/opensky

ctags-exuberant -f ~/vim-php-ide/.vim/tags \
-h ".php" -R \
--exclude="\.svn" \
--exclude="\.git" \
--totals=yes \
--tag-relative=yes \
--PHP-kinds=+cf \
--regex-PHP='/abstract class ([^ ]*)/\1/c/' \
--regex-PHP='/interface ([^ ]*)/\1/c/' \
--regex-PHP='/(public |static |abstract |protected |private )+function ([^ (]*)/\2/f/'
