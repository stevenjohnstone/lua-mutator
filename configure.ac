AC_PREREQ([2.50])
AC_INIT([lua-mutator], [0.0.0], [steven.james.johnstone@gmail.com])
AM_INIT_AUTOMAKE([foreign])
AC_CONFIG_MACRO_DIR([m4])
LT_INIT

AC_CONFIG_FILES([Makefile])

AX_PROG_LUA([5.1], [5.4],
  [AC_MSG_NOTICE([passed])],
  [AC_MSG_ERROR([failed])])

AX_LUA_HEADERS(
  [AC_MSG_NOTICE([passed])],
  [AC_MSG_ERROR([failed])])

AX_LUA_LIBS(
  [AC_MSG_NOTICE([passed])],
  [AC_MSG_ERROR([failed])])

AC_OUTPUT
