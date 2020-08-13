ACLOCAL_AMFLAGS = -I m4

luaexec_LTLIBRARIES = libluamutator.la

libluamutator_la_SOURCES = mutator.c
libluamutator_la_LDFLAGS = -module -avoid-version
libluamutator_la_CPPFLAGS = @LUA_INCLUDE@ -Werror -Wall -std=c99
libluamutator_la_LIBADD = @LUA_LIB@
