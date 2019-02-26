#!/usr/bin/env bash
<<<<<<< HEAD
<<<<<<< HEAD
if [[ ${TRAVIS_PHP_VERSION} == '7.1' ]]; then
	phpunit -c phpunit.xml --coverage-clover=coverage.clover
=======
=======

if [[ ${RUN_PHPCS} == 1 ]] || [[ ${RUN_E2E} == 1 ]]; then
	exit
fi

>>>>>>> 176965d13952e65e432cfe27ac9831eb116308af
if [[ ${RUN_CODE_COVERAGE} == 1 ]]; then
	phpdbg -qrr -d memory_limit=-1 $HOME/.composer/vendor/bin/phpunit -c phpunit.xml --coverage-clover=coverage.clover --exclude-group=timeout
>>>>>>> 4ad0fbd5217e8fc7ecb454fbed049b6092b28464
else
	phpunit -c phpunit.xml
fi
