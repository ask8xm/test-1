#!/bin/sh
echo $PATH | egrep "/opt/bitnami/common" > /dev/null
if [ $? -ne 0 ] ; then
PATH="/opt/bitnami/nodejs/bin:/opt/bitnami/apps/django/bin:/opt/bitnami/git/bin:/opt/bitnami/python/bin:/opt/bitnami/postgresql/bin:/opt/bitnami/mysql/bin:/opt/bitnami/sqlite/bin:/opt/bitnami/subversion/bin:/opt/bitnami/common/bin:/opt/bitnami/apache2/bin:$PATH"
export PATH
fi
echo $LD_LIBRARY_PATH | egrep "/opt/bitnami/common" > /dev/null
if [ $? -ne 0 ] ; then
LD_LIBRARY_PATH="/opt/bitnami/apps/django/lib/python3.6/site-packages:/opt/bitnami/git/lib:/opt/bitnami/python/lib:/opt/bitnami/postgresql/lib:/opt/bitnami/mysql/lib:/opt/bitnami/sqlite/lib:/opt/bitnami/subversion/lib:/opt/bitnami/common/lib:/opt/bitnami/apache2/lib${LD_LIBRARY_PATH:+:$LD_LIBRARY_PATH}"
export LD_LIBRARY_PATH
fi

TERMINFO=/opt/bitnami/common/share/terminfo
export TERMINFO
##### NODEJS ENV #####

export NODE_PATH=/opt/bitnami/nodejs/lib/node_modules

            export PYTHON_EGG_CACHE=/opt/bitnami/.tmp
                ##### GIT ENV #####
GIT_EXEC_PATH=/opt/bitnami/git/libexec/git-core/
export GIT_EXEC_PATH
GIT_TEMPLATE_DIR=/opt/bitnami/git/share/git-core/templates
export GIT_TEMPLATE_DIR
GIT_SSL_CAINFO=/opt/bitnami/common/openssl/certs/curl-ca-bundle.crt
export GIT_SSL_CAINFO

##### POSTGRES ENV #####

        ##### MYSQL ENV #####

##### SQLITE ENV #####
			
##### SUBVERSION ENV #####
			
##### APACHE ENV #####

##### CURL ENV #####
CURL_CA_BUNDLE=/opt/bitnami/common/openssl/certs/curl-ca-bundle.crt
export CURL_CA_BUNDLE
##### SSL ENV #####
SSL_CERT_FILE=/opt/bitnami/common/openssl/certs/curl-ca-bundle.crt
export SSL_CERT_FILE
OPENSSL_CONF=/opt/bitnami/common/openssl/openssl.cnf
export OPENSSL_CONF
OPENSSL_ENGINES=/opt/bitnami/common/lib/engines
export OPENSSL_ENGINES


. /opt/bitnami/scripts/build-setenv.sh
