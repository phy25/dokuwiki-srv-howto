phy25/dokuwiki-srv-howto
=========================

### For internal use only

Based on `_/php:php-apache`. Thanks for the open source community!

### How to run

> docker run -d -p 80:80 daocloud.io/phy25/dokuwiki-srv-howto

### How to build with fluency

> docker build -t howto-docker . --build-arg HTTP_PROXY=http://[INTARNET IP]:1080