#!/usr/bin/env bash
# usage: travis.sh before|after

if [ $1 == 'before' ]; then

	composer global require "phpunit/phpunit=6.*"

<<<<<<< HEAD
	# No Xdebug and therefore no coverage in PHP 5.3
	[[ ${TRAVIS_PHP_VERSION} == '5.3' ]] && exit;

	if [[ ${TRAVIS_PHP_VERSION:0:2} == "5." ]]; then
		composer global require "phpunit/phpunit=4.8.*"
	else
		composer global require "phpunit/phpunit=6.2.*"
=======
	if [[ ${RUN_PHPCS} == 1 ]]; then
		composer install
>>>>>>> 4ad0fbd5217e8fc7ecb454fbed049b6092b28464
	fi

fi

if [ $1 == 'after' ]; then

	if [[ ${RUN_CODE_COVERAGE} == 1 ]]; then
		bash <(curl -s https://codecov.io/bash)
		wget https://scrutinizer-ci.com/ocular.phar
		chmod +x ocular.phar
		php ocular.phar code-coverage:upload --format=php-clover coverage.clover
	fi

	if [[ ${RUN_E2E} == 1 && $(ls -A $TRAVIS_BUILD_DIR/screenshots) ]]; then
		if [[ -z "${ARTIFACTS_KEY}" ]]; then
  			echo "Screenshots were not uploaded. Please run the e2e tests locally to see failures."
		else
  			curl -sL https://raw.githubusercontent.com/travis-ci/artifacts/master/install | bash
			artifacts upload
		fi
	fi

fi
