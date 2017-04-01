#!/bin/sh

set -e

chown -R www-data /var/www

# su -s /bin/sh www-data -c 'php7 /var/www/bin/indexer.php -c'

exec /usr/bin/supervisord -c /etc/supervisord.conf