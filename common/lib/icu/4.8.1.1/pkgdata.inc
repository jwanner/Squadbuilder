GENCCODE_ASSEMBLY_TYPE=-a gcc-darwin
SO=dylib
SOBJ=dylib
A=a
LIBPREFIX=lib
LIB_EXT_ORDER=.48.1.1.dylib
COMPILE=gcc -DU_ATTRIBUTE_DEPRECATED= -I/Applications/BitNami/common/include -I/bitnami/mampstack-osx-x64/output/sqlite/include -I/Applications/BitNami/common/include/sasl -I/Applications/BitNami/common/include -arch x86_64  -I/Applications/BitNami/common/include -arch x86_64 -Wall -ansi -pedantic -Wshadow -Wpointer-arith -Wmissing-prototypes -Wwrite-strings -Wno-long-long  -fno-common -c
LIBFLAGS=-I/Applications/BitNami/common/include  -dynamic
GENLIB=gcc -dynamiclib -dynamic -I/Applications/BitNami/common/include -arch x86_64 -Wall -ansi -pedantic -Wshadow -Wpointer-arith -Wmissing-prototypes -Wwrite-strings -Wno-long-long  -L/bitnami/mampstack-osx-x64/output/sqlite/lib -L/Applications/BitNami/common/lib -arch x86_64  
LDICUDTFLAGS=
LD_SONAME=-Wl,-compatibility_version -Wl,48 -Wl,-current_version -Wl,48.1.1 -install_name
RPATH_FLAGS=
BIR_LDFLAGS=
AR=ar
ARFLAGS=r
RANLIB=ranlib
INSTALL_CMD=/usr/bin/install -c
