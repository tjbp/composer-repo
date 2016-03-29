#!/bin/bash
cd "$( dirname "${BASH_SOURCE[0]}" )"
curl -sS https://getcomposer.org/installer | php
php composer.phar create-project composer/satis --stability=dev --keep-vcs
php satis/bin/satis build satis.json public
rm composer.phar
rm -rf satis
