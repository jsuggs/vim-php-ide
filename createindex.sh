#!/bin/sh

cd /var/www/opensky

ctags-exuberant -f tags \
-h ".php" -R \
--exclude="\.svn" \
--exclude="\.git" \
--exclude="*\.js" \
--exclude="*\.html" \
--totals=yes \
--tag-relative=yes \
--PHP-kinds=+icdf \
--regex-PHP='/abstract class ([^ ]*)/\1/c/' \
--regex-PHP='/(public\s+|static\s+|abstract\s+|protected\s+|private\s+)function\s+([^ (]*)/\2/f/'
