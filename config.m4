dnl config.m4 for extension tulip

AC_PROG_CXX

# Use PHP-CPP
CXXFLAGS="$CXXFLAGS -fPIC -lphpcpp -L/usr/include"
# Linking for phpcpp
LDFLAGS="$LDFLAGS -lphpcpp -L/usr/include -lindicators -shared"

PHP_ARG_WITH(indicators, for tulip support, 
[ --with-indicators Include tulip support]) 

if test "$PHP_TULIND" != "no"; then 
  AC_DEFINE(HAVE_TULIP,1,[ ])
  PHP_NEW_EXTENSION(tulip, tulip.cpp, $ext_shared)
fi
