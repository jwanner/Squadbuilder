#!/bin/sh
LDFLAGS="-L/Applications/BitNami/common/lib $LDFLAGS"
export LDFLAGS
CFLAGS="-I/Applications/BitNami/common/include $CFLAGS"
export CFLAGS
		    
PKG_CONFIG_PATH="/Applications/BitNami/common/lib/pkgconfig"
export PKG_CONFIG_PATH
