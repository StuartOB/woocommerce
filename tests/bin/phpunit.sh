#!/usr/bin/env bash
<<<<<<< HEAD
if [[ ${TRAVIS_PHP_VERSION} == '7.1' ]]; then
	phpunit -c phpunit.xml --coverage-clover=coverage.clover
=======
if [[ ${RUN_CODE_COVERAGE} == 1 ]]; then
	phpdbg -qrr -d memory_limit=-1 $HOME/.composer/vendor/bin/phpunit -c phpunit.xml --coverage-clover=coverage.clover --exclude-group=timeout
>>>>>>> 4ad0fbd5217e8fc7ecb454fbed049b6092b28464
else
	phpunit -c phpunit.xml
fi
