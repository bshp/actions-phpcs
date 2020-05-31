#!/bin/sh
set -e

PHP_CLI_VERSION=$(php -r 'echo phpversion();')

if [ -z "$1" ]; then
  DIR_TO_SNIFF="."
else
  DIR_TO_SNIFF="$1"
fi

if [ -z "$2" ]; then
  CLI_ARGS=""
else
  CLI_ARGS="$2"
fi

echo "## Running SquizLabs PHP CodeSniffer on ${DIR_TO_SNIFF}"
echo "PHP-CLI Version : ${PHP_CLI_VERSION}"
echo "CLI Arguments: ${CLI_ARGS}"


if [ ! -d "${DIR_TO_SNIFF}" ] && [ ! -f "${DIR_TO_SNIFF}" ]; then
  php -d memory_limit=-1 /phpcs -pv
  echo "\nInvalid Directory or File Specified: ${DIR_TO_SNIFF}"
  echo "\n\n"
  exit 2
fi

echo "php -d memory_limit=-1 /phpcs ${DIR_TO_SNIFF} -pv ${CLI_ARGS}"
php -d memory_limit=-1 /phpcs ${DIR_TO_SNIFF} -pv ${CLI_ARGS}
