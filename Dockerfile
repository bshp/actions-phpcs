FROM php:7.2-cli-alpine

LABEL version="1.0"
LABEL repository="https://github.com/bshp/actions-phpcs"
LABEL homepage="https://github.com/bshp/actions-phpcs"
LABEL maintainer="Jason A. Everling <jason.e***@gmail.com>"

RUN curl -L https://squizlabs.github.io/PHP_CodeSniffer/phpcs.phar -o /phpcs

COPY "entrypoint.sh" "/entrypoint.sh"

RUN chmod +x /entrypoint.sh && chmod a+x /phpcs
ENTRYPOINT ["/entrypoint.sh"]
