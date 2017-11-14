#!/bin/sh

# link apace configuration files from preloaded secret.
ln -sf /tmp/httpd/httpd.conf /usr/local/apache2/conf/httpd.conf
ln -sf /tmp/httpd/httpd-ssl.conf /usr/local/apache2/conf/extra/httpd-ssl.conf

# Redirect logs to stdout and stderr for docker reasons.
ln -sf /dev/stdout /usr/local/apache2/logs/access_log
ln -sf /dev/stderr /usr/local/apache2/logs/error_log

# start the apache server in the foreground so docker can monitor.
/usr/local/apache2/bin/httpd -DFOREGROUND 
