#!/bin/sh
echo $DYLD_LIBRARY_PATH | egrep "/Applications/BitNami/common" > /dev/null
if [ $? -ne 0 ] ; then
PATH="/Applications/BitNami/varnish/bin:/Applications/BitNami/sqlite/bin:/Applications/BitNami/php/bin:/Applications/BitNami/mysql/bin:/Applications/BitNami/apache2/bin:/Applications/BitNami/common/bin:$PATH"
export PATH
DYLD_LIBRARY_PATH="/Applications/BitNami/varnish/lib:/Applications/BitNami/varnish/lib/varnish:/Applications/BitNami/varnish/lib/varnish/vmods:/Applications/BitNami/sqlite/lib:/Applications/BitNami/mysql/lib:/Applications/BitNami/apache2/lib:/Applications/BitNami/common/lib:$DYLD_LIBRARY_PATH"
export DYLD_LIBRARY_PATH
fi

TERMINFO=/Applications/BitNami/common/share/terminfo
export TERMINFO
##### VARNISH ENV #####
		
      ##### SQLITE ENV #####
			
SASL_CONF_PATH=/Applications/BitNami/common/etc
export SASL_CONF_PATH
SASL_PATH=/Applications/BitNami/common/lib/sasl2 
export SASL_PATH
LDAPCONF=/Applications/BitNami/common/etc/openldap/ldap.conf
export LDAPCONF
##### PHP ENV #####
		    
##### MYSQL ENV #####

##### APACHE ENV #####

##### CURL ENV #####
CURL_CA_BUNDLE=/Applications/BitNami/common/openssl/certs/curl-ca-bundle.crt
export CURL_CA_BUNDLE
##### SSL ENV #####
SSL_CERT_FILE=/Applications/BitNami/common/openssl/certs/curl-ca-bundle.crt
export SSL_CERT_FILE
OPENSSL_CONF=/Applications/BitNami/common/openssl/openssl.cnf
export OPENSSL_CONF
OPENSSL_ENGINES=/Applications/BitNami/common/lib/engines
export OPENSSL_ENGINES


. /Applications/BitNami/scripts/build-setenv.sh
