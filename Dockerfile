FROM dreamlabs/php-composer:latest

RUN composer global require phpstan/phpstan && \
    ln -s /root/.composer/vendor/bin/phpstan /usr/bin/phpstan;

ENTRYPOINT ["phpstan"]