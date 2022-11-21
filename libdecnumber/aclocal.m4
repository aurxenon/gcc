# generated automatically by aclocal 1.16.5 -*- Autoconf -*-

# Copyright (C) 1996-2021 Free Software Foundation, Inc.

# This file is free software; the Free Software Foundation
# gives unlimited permission to copy and/or distribute it,
# with or without modifications, as long as this notice is preserved.

# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY, to the extent permitted by law; without
# even the implied warranty of MERCHANTABILITY or FITNESS FOR A
# PARTICULAR PURPOSE.

m4_ifndef([AC_CONFIG_MACRO_DIRS], [m4_defun([_AM_CONFIG_MACRO_DIRS], [])m4_defun([AC_CONFIG_MACRO_DIRS], [_AM_CONFIG_MACRO_DIRS($@)])])
dnl
dnl GCC_CET_FLAGS
dnl    (SHELL-CODE_HANDLER)
dnl
AC_DEFUN([GCC_CET_FLAGS],[dnl
GCC_ENABLE(cet, auto, ,[enable Intel CET in target libraries],
	   permit yes|no|auto)
AC_MSG_CHECKING([for CET support])

# NB: Avoid nested save_CFLAGS and save_LDFLAGS.
case "$host" in
  i[[34567]]86-*-linux* | x86_64-*-linux*)
    case "$enable_cet" in
      auto)
	# Check if target supports multi-byte NOPs
	# and if compiler and assembler support CET insn.
	cet_save_CFLAGS="$CFLAGS"
	CFLAGS="$CFLAGS -fcf-protection"
	AC_COMPILE_IFELSE(
	 [AC_LANG_PROGRAM(
	  [],
	  [
#if !defined(__SSE2__)
#error target does not support multi-byte NOPs
#else
asm ("setssbsy");
#endif
	  ])],
	 [enable_cet=yes],
	 [enable_cet=no])
	CFLAGS="$cet_save_CFLAGS"
	;;
      yes)
	# Check if assembler supports CET.
	AC_COMPILE_IFELSE(
	 [AC_LANG_PROGRAM(
	  [],
	  [asm ("setssbsy");])],
	 [],
	 [AC_MSG_ERROR([assembler with CET support is required for --enable-cet])])
	;;
    esac
    ;;
  *)
    enable_cet=no
    ;;
esac
if test x$enable_cet = xyes; then
  $1="-fcf-protection -mshstk"
  AC_MSG_RESULT([yes])
else
  AC_MSG_RESULT([no])
fi
])

dnl
dnl GCC_CET_HOST_FLAGS
dnl    (SHELL-CODE_HANDLER)
dnl
AC_DEFUN([GCC_CET_HOST_FLAGS],[dnl
GCC_ENABLE(cet, auto, ,[enable Intel CET in host libraries],
	   permit yes|no|auto)
AC_MSG_CHECKING([for CET support])

case "$host" in
  i[[34567]]86-*-linux* | x86_64-*-linux*)
    may_have_cet=yes
    cet_save_CFLAGS="$CFLAGS"
    CFLAGS="$CFLAGS -fcf-protection"
    case "$enable_cet" in
      auto)
	# Check if target supports multi-byte NOPs
	# and if compiler and assembler support CET.
	AC_COMPILE_IFELSE(
	 [AC_LANG_PROGRAM(
	  [],
	  [
#if !defined(__SSE2__)
#error target does not support multi-byte NOPs
#else
asm ("setssbsy");
#endif
	  ])],
	 [enable_cet=yes],
	 [enable_cet=no])
	;;
      yes)
	# Check if compiler and assembler support CET.
	AC_COMPILE_IFELSE(
	 [AC_LANG_PROGRAM(
	  [],
	  [asm ("setssbsy");])],
	 [support_cet=yes],
	 [support_cet=no])
	if test $support_cet = "no"; then
	  if test x$enable_bootstrap != xno \
	     && test -z "${with_build_subdir}" \
	     && (test ! -f ../stage_current \
	         || test `cat ../stage_current` != "stage1"); then
	    # Require CET support only for the final GCC build.
	    AC_MSG_ERROR([compiler and assembler with CET support are required for --enable-cet])
	  else
	    # Don't enable CET without CET support for non-bootstrap
	    # build, in stage1 nor for build support.
	    enable_cet=no
	  fi
	fi
	;;
    esac
    CFLAGS="$cet_save_CFLAGS"
    ;;
  *)
    may_have_cet=no
    enable_cet=no
    ;;
esac

cet_save_CFLAGS="$CFLAGS"
CFLAGS="$CFLAGS -fcf-protection=none"
cet_save_LDFLAGS="$LDFLAGS"
LDFLAGS="$LDFLAGS -Wl,-z,ibt,-z,shstk"
if test x$may_have_cet = xyes; then
  # Check whether -fcf-protection=none -Wl,-z,ibt,-z,shstk work.
  AC_TRY_LINK(
    [],[return 0;],
    [may_have_cet=yes],
    [may_have_cet=no])
fi

if test x$may_have_cet = xyes; then
  if test x$cross_compiling = xno; then
    AC_TRY_RUN([
int
main ()
{
  asm ("endbr32");
  return 0;
}
    ],
    [have_multi_byte_nop=yes],
    [have_multi_byte_nop=no])
    have_cet=no
    if test x$have_multi_byte_nop = xyes; then
      AC_TRY_RUN([
static void
foo (void)
{
}

static void
__attribute__ ((noinline, noclone))
xxx (void (*f) (void))
{
  f ();
}

static void
__attribute__ ((noinline, noclone))
bar (void)
{
  xxx (foo);
}

int
main ()
{
  bar ();
  return 0;
}
      ],
      [have_cet=no],
      [have_cet=yes])
    fi
    if test x$enable_cet = xno -a x$have_cet = xyes; then
      AC_MSG_ERROR([Intel CET must be enabled on Intel CET enabled host])
    fi
  fi
else
  # Enable CET in cross compiler if possible so that it will run on both
  # CET and non-CET hosts.
  have_cet=yes
fi
if test x$enable_cet = xyes; then
  $1="-fcf-protection"
  AC_MSG_RESULT([yes])
else
  AC_MSG_RESULT([no])
fi
CFLAGS="$cet_save_CFLAGS"
LDFLAGS="$cet_save_LDFLAGS"
])

# Copyright (C) 2010-2022 Free Software Foundation, Inc.

# This file is part of GCC.

# GCC is free software; you can redistribute it and/or modify it under
# the terms of the GNU General Public License as published by the Free
# Software Foundation; either version 3, or (at your option) any
# later version.

# GCC is distributed in the hope that it will be useful, but WITHOUT
# ANY WARRANTY; without even the implied warranty of MERCHANTABILITY
# or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public
# License for more details.

# You should have received a copy of the GNU General Public License
# along with GCC; see the file COPYING3.  If not see
# <http://www.gnu.org/licenses/>.

dnl @synopsis GCC_AC_ENABLE_DECIMAL_FLOAT([target triplet])
dnl
dnl Enable C extension for decimal float if target supports it.
dnl
dnl @author Andreas Krebbel  <Andreas.Krebbel@de.ibm.com>

AC_DEFUN([GCC_AC_ENABLE_DECIMAL_FLOAT],
[
AC_ARG_ENABLE(decimal-float,
[  --enable-decimal-float={no,yes,bid,dpd}
			enable decimal float extension to C.  Selecting 'bid'
			or 'dpd' choses which decimal floating point format
			to use],
[
  case $enable_decimal_float in
    yes | no | bid | dpd) default_decimal_float=$enable_decimal_float ;;
    *) AC_MSG_ERROR(['$enable_decimal_float' is an invalid value for --enable-decimal-float.
Valid choices are 'yes', 'bid', 'dpd', and 'no'.]) ;;
  esac
],
[
  case $1 in
    aarch64* | \
    powerpc*-*-linux* | i?86*-*-linux* | x86_64*-*-linux* | s390*-*-linux* | \
    i?86*-*-elfiamcu | i?86*-*-gnu* | x86_64*-*-gnu* | \
    i?86*-*-mingw* | x86_64*-*-mingw* | \
    i?86*-*-cygwin* | x86_64*-*-cygwin*)
      enable_decimal_float=yes
      ;;
    *)
      AC_MSG_WARN([decimal float is not supported for this target, ignored])
      enable_decimal_float=no
      ;;
  esac
])

# x86's use BID format instead of DPD
case x$enable_decimal_float in
  xyes)
    case $1 in
      aarch64* | i?86*-*-* | x86_64*-*-*)
	enable_decimal_float=bid
	;;
      *)
	enable_decimal_float=dpd
	;;
    esac
    default_decimal_float=$enable_decimal_float
    ;;
  xno)
    # ENABLE_DECIMAL_FLOAT is set to 0. But we have to have proper
    # dependency on libdecnumber.
    default_decimal_float=dpd
    ;;
esac
AC_SUBST(enable_decimal_float)

])

dnl ----------------------------------------------------------------------
dnl This whole bit snagged from libstdc++-v3.

dnl
dnl GCC_ENABLE
dnl    (FEATURE, DEFAULT, HELP-ARG, HELP-STRING)
dnl    (FEATURE, DEFAULT, HELP-ARG, HELP-STRING, permit a|b|c)
dnl    (FEATURE, DEFAULT, HELP-ARG, HELP-STRING, SHELL-CODE-HANDLER)
dnl
dnl See docs/html/17_intro/configury.html#enable for documentation.
dnl
AC_DEFUN([GCC_ENABLE],[dnl
m4_define([_g_switch],[--enable-$1])dnl
m4_define([_g_help],[AC_HELP_STRING(_g_switch$3,[$4 @<:@default=$2@:>@])])dnl
 AC_ARG_ENABLE($1,_g_help,
  m4_bmatch([$5],
   [^permit ],
     [[
      case "$enableval" in
       m4_bpatsubst([$5],[permit ])) ;;
       *) AC_MSG_ERROR(Unknown argument to enable/disable $1) ;;
          dnl Idea for future:  generate a URL pointing to
          dnl "onlinedocs/configopts.html#whatever"
      esac
     ]],
   [^$],
     [[
      case "$enableval" in
       yes|no) ;;
       *) AC_MSG_ERROR(Argument to enable/disable $1 must be yes or no) ;;
      esac
     ]],
   [[$5]]),
  [enable_]m4_bpatsubst([$1],-,_)[=][$2])
m4_undefine([_g_switch])dnl
m4_undefine([_g_help])dnl
])


AC_DEFUN([GCC_STDINT_TYPES],
[AC_REQUIRE([AC_TYPE_INT8_T])
AC_REQUIRE([AC_TYPE_INT16_T])
AC_REQUIRE([AC_TYPE_INT32_T])
AC_REQUIRE([AC_TYPE_INT64_T])
AC_REQUIRE([AC_TYPE_INTMAX_T])
AC_REQUIRE([AC_TYPE_INTPTR_T])
AC_REQUIRE([AC_TYPE_UINT8_T])
AC_REQUIRE([AC_TYPE_UINT16_T])
AC_REQUIRE([AC_TYPE_UINT32_T])
AC_REQUIRE([AC_TYPE_UINT64_T])
AC_REQUIRE([AC_TYPE_UINTMAX_T])
AC_REQUIRE([AC_TYPE_UINTPTR_T])])

dnl @synopsis GCC_HEADER_STDINT [( HEADER-TO-GENERATE [, HEADERS-TO-CHECK])]
dnl
dnl the "ISO C9X: 7.18 Integer types <stdint.h>" section requires the
dnl existence of an include file <stdint.h> that defines a set of
dnl typedefs, especially uint8_t,int32_t,uintptr_t.
dnl Many older installations will not provide this file, but some will
dnl have the very same definitions in <inttypes.h>. In other environments
dnl we can use the inet-types in <sys/types.h> which would define the
dnl typedefs int8_t and u_int8_t respectivly.
dnl
dnl This macros will create a local "_stdint.h" or the headerfile given as
dnl an argument. In many cases that file will pick the definition from a
dnl "#include <stdint.h>" or "#include <inttypes.h>" statement, while
dnl in other environments it will provide the set of basic 'stdint's defined:
dnl int8_t,uint8_t,int16_t,uint16_t,int32_t,uint32_t,intptr_t,uintptr_t
dnl int_least32_t.. int_fast32_t.. intmax_t
dnl which may or may not rely on the definitions of other files.
dnl
dnl Sometimes the stdint.h or inttypes.h headers conflict with sys/types.h,
dnl so we test the headers together with sys/types.h and always include it
dnl into the generated header (to match the tests with the generated file).
dnl Hopefully this is not a big annoyance.
dnl
dnl If your installed header files require the stdint-types you will want to
dnl create an installable file mylib-int.h that all your other installable
dnl header may include. So, for a library package named "mylib", just use
dnl      GCC_HEADER_STDINT(mylib-int.h)
dnl in configure.ac and install that header file in Makefile.am along with
dnl the other headers (mylib.h).  The mylib-specific headers can simply
dnl use "#include <mylib-int.h>" to obtain the stdint-types.
dnl
dnl Remember, if the system already had a valid <stdint.h>, the generated
dnl file will include it directly. No need for fuzzy HAVE_STDINT_H things...
dnl
dnl @author  Guido Draheim <guidod@gmx.de>, Paolo Bonzini <bonzini@gnu.org>

AC_DEFUN([GCC_HEADER_STDINT],
[m4_define(_GCC_STDINT_H, m4_ifval($1, $1, _stdint.h))

inttype_headers=`echo inttypes.h sys/inttypes.h $2 | sed -e 's/,/ /g'`

acx_cv_header_stdint=stddef.h
acx_cv_header_stdint_kind="(already complete)"
for i in stdint.h $inttype_headers; do
  unset ac_cv_type_uintptr_t
  unset ac_cv_type_uintmax_t
  unset ac_cv_type_int_least32_t
  unset ac_cv_type_int_fast32_t
  unset ac_cv_type_uint64_t
  _AS_ECHO_N([looking for a compliant stdint.h in $i, ])
  AC_CHECK_TYPE(uintmax_t,[acx_cv_header_stdint=$i],continue,[#include <sys/types.h>
#include <$i>])
  AC_CHECK_TYPE(uintptr_t,,[acx_cv_header_stdint_kind="(mostly complete)"], [#include <sys/types.h>
#include <$i>])
  AC_CHECK_TYPE(int_least32_t,,[acx_cv_header_stdint_kind="(mostly complete)"], [#include <sys/types.h>
#include <$i>])
  AC_CHECK_TYPE(int_fast32_t,,[acx_cv_header_stdint_kind="(mostly complete)"], [#include <sys/types.h>
#include <$i>])
  AC_CHECK_TYPE(uint64_t,,[acx_cv_header_stdint_kind="(lacks uint64_t)"], [#include <sys/types.h>
#include <$i>])
  break
done
if test "$acx_cv_header_stdint" = stddef.h; then
  acx_cv_header_stdint_kind="(lacks uintmax_t)"
  for i in stdint.h $inttype_headers; do
    unset ac_cv_type_uintptr_t
    unset ac_cv_type_uint32_t
    unset ac_cv_type_uint64_t
    _AS_ECHO_N([looking for an incomplete stdint.h in $i, ])
    AC_CHECK_TYPE(uint32_t,[acx_cv_header_stdint=$i],continue,[#include <sys/types.h>
#include <$i>])
    AC_CHECK_TYPE(uint64_t,,,[#include <sys/types.h>
#include <$i>])
    AC_CHECK_TYPE(uintptr_t,,,[#include <sys/types.h>
#include <$i>])
    break
  done
fi
if test "$acx_cv_header_stdint" = stddef.h; then
  acx_cv_header_stdint_kind="(u_intXX_t style)"
  for i in sys/types.h $inttype_headers; do
    unset ac_cv_type_u_int32_t
    unset ac_cv_type_u_int64_t
    _AS_ECHO_N([looking for u_intXX_t types in $i, ])
    AC_CHECK_TYPE(u_int32_t,[acx_cv_header_stdint=$i],continue,[#include <sys/types.h>
#include <$i>])
    AC_CHECK_TYPE(u_int64_t,,,[#include <sys/types.h>
#include <$i>])
    break
  done
fi
if test "$acx_cv_header_stdint" = stddef.h; then
  acx_cv_header_stdint_kind="(using manual detection)"
fi

test -z "$ac_cv_type_uintptr_t" && ac_cv_type_uintptr_t=no
test -z "$ac_cv_type_uint64_t" && ac_cv_type_uint64_t=no
test -z "$ac_cv_type_u_int64_t" && ac_cv_type_u_int64_t=no
test -z "$ac_cv_type_int_least32_t" && ac_cv_type_int_least32_t=no
test -z "$ac_cv_type_int_fast32_t" && ac_cv_type_int_fast32_t=no

# ----------------- Summarize what we found so far

AC_MSG_CHECKING([what to include in _GCC_STDINT_H])

case `AS_BASENAME(_GCC_STDINT_H)` in
  stdint.h) AC_MSG_WARN([are you sure you want it there?]) ;;
  inttypes.h) AC_MSG_WARN([are you sure you want it there?]) ;;
  *) ;;
esac

AC_MSG_RESULT($acx_cv_header_stdint $acx_cv_header_stdint_kind)

# ----------------- done included file, check C basic types --------

# Lacking an uintptr_t?  Test size of void *
case "$acx_cv_header_stdint:$ac_cv_type_uintptr_t" in
  stddef.h:* | *:no) AC_CHECK_SIZEOF(void *) ;;
esac

# Lacking an uint64_t?  Test size of long
case "$acx_cv_header_stdint:$ac_cv_type_uint64_t:$ac_cv_type_u_int64_t" in
  stddef.h:*:* | *:no:no) AC_CHECK_SIZEOF(long) ;;
esac

if test $acx_cv_header_stdint = stddef.h; then
  # Lacking a good header?  Test size of everything and deduce all types.
  AC_CHECK_SIZEOF(int)
  AC_CHECK_SIZEOF(short)
  AC_CHECK_SIZEOF(char)

  AC_MSG_CHECKING(for type equivalent to int8_t)
  case "$ac_cv_sizeof_char" in
    1) acx_cv_type_int8_t=char ;;
    *) AC_MSG_ERROR([no 8-bit type, please report a bug])
  esac
  AC_MSG_RESULT($acx_cv_type_int8_t)

  AC_MSG_CHECKING(for type equivalent to int16_t)
  case "$ac_cv_sizeof_int:$ac_cv_sizeof_short" in
    2:*) acx_cv_type_int16_t=int ;;
    *:2) acx_cv_type_int16_t=short ;;
    *) AC_MSG_ERROR([no 16-bit type, please report a bug])
  esac
  AC_MSG_RESULT($acx_cv_type_int16_t)

  AC_MSG_CHECKING(for type equivalent to int32_t)
  case "$ac_cv_sizeof_int:$ac_cv_sizeof_long" in
    4:*) acx_cv_type_int32_t=int ;;
    *:4) acx_cv_type_int32_t=long ;;
    *) AC_MSG_ERROR([no 32-bit type, please report a bug])
  esac
  AC_MSG_RESULT($acx_cv_type_int32_t)
fi

# These tests are here to make the output prettier

if test "$ac_cv_type_uint64_t" != yes && test "$ac_cv_type_u_int64_t" != yes; then
  case "$ac_cv_sizeof_long" in
    8) acx_cv_type_int64_t=long ;;
  esac
  AC_MSG_CHECKING(for type equivalent to int64_t)
  AC_MSG_RESULT(${acx_cv_type_int64_t-'using preprocessor symbols'})
fi

# Now we can use the above types

if test "$ac_cv_type_uintptr_t" != yes; then
  AC_MSG_CHECKING(for type equivalent to intptr_t)
  case $ac_cv_sizeof_void_p in
    2) acx_cv_type_intptr_t=int16_t ;;
    4) acx_cv_type_intptr_t=int32_t ;;
    8) acx_cv_type_intptr_t=int64_t ;;
    *) AC_MSG_ERROR([no equivalent for intptr_t, please report a bug])
  esac
  AC_MSG_RESULT($acx_cv_type_intptr_t)
fi

# ----------------- done all checks, emit header -------------
AC_CONFIG_COMMANDS(_GCC_STDINT_H, [
if test "$GCC" = yes; then
  echo "/* generated for " `$CC --version | sed 1q` "*/" > tmp-stdint.h
else
  echo "/* generated for $CC */" > tmp-stdint.h
fi

sed 's/^ *//' >> tmp-stdint.h <<EOF

  #ifndef GCC_GENERATED_STDINT_H
  #define GCC_GENERATED_STDINT_H 1

  #include <sys/types.h>
EOF

if test "$acx_cv_header_stdint" != stdint.h; then
  echo "#include <stddef.h>" >> tmp-stdint.h
fi
if test "$acx_cv_header_stdint" != stddef.h; then
  echo "#include <$acx_cv_header_stdint>" >> tmp-stdint.h
fi

sed 's/^ *//' >> tmp-stdint.h <<EOF
  /* glibc uses these symbols as guards to prevent redefinitions.  */
  #ifdef __int8_t_defined
  #define _INT8_T
  #define _INT16_T
  #define _INT32_T
  #endif
  #ifdef __uint32_t_defined
  #define _UINT32_T
  #endif

EOF

# ----------------- done header, emit basic int types -------------
if test "$acx_cv_header_stdint" = stddef.h; then
  sed 's/^ *//' >> tmp-stdint.h <<EOF

    #ifndef _UINT8_T
    #define _UINT8_T
    #ifndef __uint8_t_defined
    #define __uint8_t_defined
    #ifndef uint8_t
    typedef unsigned $acx_cv_type_int8_t uint8_t;
    #endif
    #endif
    #endif

    #ifndef _UINT16_T
    #define _UINT16_T
    #ifndef __uint16_t_defined
    #define __uint16_t_defined
    #ifndef uint16_t
    typedef unsigned $acx_cv_type_int16_t uint16_t;
    #endif
    #endif
    #endif

    #ifndef _UINT32_T
    #define _UINT32_T
    #ifndef __uint32_t_defined
    #define __uint32_t_defined
    #ifndef uint32_t
    typedef unsigned $acx_cv_type_int32_t uint32_t;
    #endif
    #endif
    #endif

    #ifndef _INT8_T
    #define _INT8_T
    #ifndef __int8_t_defined
    #define __int8_t_defined
    #ifndef int8_t
    typedef $acx_cv_type_int8_t int8_t;
    #endif
    #endif
    #endif

    #ifndef _INT16_T
    #define _INT16_T
    #ifndef __int16_t_defined
    #define __int16_t_defined
    #ifndef int16_t
    typedef $acx_cv_type_int16_t int16_t;
    #endif
    #endif
    #endif

    #ifndef _INT32_T
    #define _INT32_T
    #ifndef __int32_t_defined
    #define __int32_t_defined
    #ifndef int32_t
    typedef $acx_cv_type_int32_t int32_t;
    #endif
    #endif
    #endif
EOF
elif test "$ac_cv_type_u_int32_t" = yes; then
  sed 's/^ *//' >> tmp-stdint.h <<EOF

    /* int8_t int16_t int32_t defined by inet code, we do the u_intXX types */
    #ifndef _INT8_T
    #define _INT8_T
    #endif
    #ifndef _INT16_T
    #define _INT16_T
    #endif
    #ifndef _INT32_T
    #define _INT32_T
    #endif

    #ifndef _UINT8_T
    #define _UINT8_T
    #ifndef __uint8_t_defined
    #define __uint8_t_defined
    #ifndef uint8_t
    typedef u_int8_t uint8_t;
    #endif
    #endif
    #endif

    #ifndef _UINT16_T
    #define _UINT16_T
    #ifndef __uint16_t_defined
    #define __uint16_t_defined
    #ifndef uint16_t
    typedef u_int16_t uint16_t;
    #endif
    #endif
    #endif

    #ifndef _UINT32_T
    #define _UINT32_T
    #ifndef __uint32_t_defined
    #define __uint32_t_defined
    #ifndef uint32_t
    typedef u_int32_t uint32_t;
    #endif
    #endif
    #endif
EOF
else
  sed 's/^ *//' >> tmp-stdint.h <<EOF

    /* Some systems have guard macros to prevent redefinitions, define them.  */
    #ifndef _INT8_T
    #define _INT8_T
    #endif
    #ifndef _INT16_T
    #define _INT16_T
    #endif
    #ifndef _INT32_T
    #define _INT32_T
    #endif
    #ifndef _UINT8_T
    #define _UINT8_T
    #endif
    #ifndef _UINT16_T
    #define _UINT16_T
    #endif
    #ifndef _UINT32_T
    #define _UINT32_T
    #endif
EOF
fi

# ------------- done basic int types, emit int64_t types ------------
if test "$ac_cv_type_uint64_t" = yes; then
  sed 's/^ *//' >> tmp-stdint.h <<EOF

    /* system headers have good uint64_t and int64_t */
    #ifndef _INT64_T
    #define _INT64_T
    #endif
    #ifndef _UINT64_T
    #define _UINT64_T
    #endif
EOF
elif test "$ac_cv_type_u_int64_t" = yes; then
  sed 's/^ *//' >> tmp-stdint.h <<EOF

    /* system headers have an u_int64_t (and int64_t) */
    #ifndef _INT64_T
    #define _INT64_T
    #endif
    #ifndef _UINT64_T
    #define _UINT64_T
    #ifndef __uint64_t_defined
    #define __uint64_t_defined
    #ifndef uint64_t
    typedef u_int64_t uint64_t;
    #endif
    #endif
    #endif
EOF
elif test -n "$acx_cv_type_int64_t"; then
  sed 's/^ *//' >> tmp-stdint.h <<EOF

    /* architecture has a 64-bit type, $acx_cv_type_int64_t */
    #ifndef _INT64_T
    #define _INT64_T
    #ifndef int64_t
    typedef $acx_cv_type_int64_t int64_t;
    #endif
    #endif
    #ifndef _UINT64_T
    #define _UINT64_T
    #ifndef __uint64_t_defined
    #define __uint64_t_defined
    #ifndef uint64_t
    typedef unsigned $acx_cv_type_int64_t uint64_t;
    #endif
    #endif
    #endif
EOF
else
  sed 's/^ *//' >> tmp-stdint.h <<EOF

    /* some common heuristics for int64_t, using compiler-specific tests */
    #if defined __STDC_VERSION__ && (__STDC_VERSION__-0) >= 199901L
    #ifndef _INT64_T
    #define _INT64_T
    #ifndef __int64_t_defined
    #ifndef int64_t
    typedef long long int64_t;
    #endif
    #endif
    #endif
    #ifndef _UINT64_T
    #define _UINT64_T
    #ifndef uint64_t
    typedef unsigned long long uint64_t;
    #endif
    #endif

    #elif defined __GNUC__ && defined (__STDC__) && __STDC__-0
    /* NextStep 2.0 cc is really gcc 1.93 but it defines __GNUC__ = 2 and
       does not implement __extension__.  But that compiler doesn't define
       __GNUC_MINOR__.  */
    # if __GNUC__ < 2 || (__NeXT__ && !__GNUC_MINOR__)
    # define __extension__
    # endif

    # ifndef _INT64_T
    # define _INT64_T
    # ifndef int64_t
    __extension__ typedef long long int64_t;
    # endif
    # endif
    # ifndef _UINT64_T
    # define _UINT64_T
    # ifndef uint64_t
    __extension__ typedef unsigned long long uint64_t;
    # endif
    # endif

    #elif !defined __STRICT_ANSI__
    # if defined _MSC_VER || defined __WATCOMC__ || defined __BORLANDC__

    #  ifndef _INT64_T
    #  define _INT64_T
    #  ifndef int64_t
    typedef __int64 int64_t;
    #  endif
    #  endif
    #  ifndef _UINT64_T
    #  define _UINT64_T
    #  ifndef uint64_t
    typedef unsigned __int64 uint64_t;
    #  endif
    #  endif
    # endif /* compiler */

    #endif /* ANSI version */
EOF
fi

# ------------- done int64_t types, emit intptr types ------------
if test "$ac_cv_type_uintptr_t" != yes; then
  sed 's/^ *//' >> tmp-stdint.h <<EOF

    /* Define intptr_t based on sizeof(void*) = $ac_cv_sizeof_void_p */
    #ifndef __uintptr_t_defined
    #ifndef uintptr_t
    typedef u$acx_cv_type_intptr_t uintptr_t;
    #endif
    #endif
    #ifndef __intptr_t_defined
    #ifndef intptr_t
    typedef $acx_cv_type_intptr_t  intptr_t;
    #endif
    #endif
EOF
fi

# ------------- done intptr types, emit int_least types ------------
if test "$ac_cv_type_int_least32_t" != yes; then
  sed 's/^ *//' >> tmp-stdint.h <<EOF

    /* Define int_least types */
    typedef int8_t     int_least8_t;
    typedef int16_t    int_least16_t;
    typedef int32_t    int_least32_t;
    #ifdef _INT64_T
    typedef int64_t    int_least64_t;
    #endif

    typedef uint8_t    uint_least8_t;
    typedef uint16_t   uint_least16_t;
    typedef uint32_t   uint_least32_t;
    #ifdef _UINT64_T
    typedef uint64_t   uint_least64_t;
    #endif
EOF
fi

# ------------- done intptr types, emit int_fast types ------------
if test "$ac_cv_type_int_fast32_t" != yes; then
  dnl NOTE: The following code assumes that sizeof (int) > 1.
  dnl Fix when strange machines are reported.
  sed 's/^ *//' >> tmp-stdint.h <<EOF

    /* Define int_fast types.  short is often slow */
    typedef int8_t       int_fast8_t;
    typedef int          int_fast16_t;
    typedef int32_t      int_fast32_t;
    #ifdef _INT64_T
    typedef int64_t      int_fast64_t;
    #endif

    typedef uint8_t      uint_fast8_t;
    typedef unsigned int uint_fast16_t;
    typedef uint32_t     uint_fast32_t;
    #ifdef _UINT64_T
    typedef uint64_t     uint_fast64_t;
    #endif
EOF
fi

if test "$ac_cv_type_uintmax_t" != yes; then
  sed 's/^ *//' >> tmp-stdint.h <<EOF

    /* Define intmax based on what we found */
    #ifndef intmax_t
    #ifdef _INT64_T
    typedef int64_t       intmax_t;
    #else
    typedef long          intmax_t;
    #endif
    #endif
    #ifndef uintmax_t
    #ifdef _UINT64_T
    typedef uint64_t      uintmax_t;
    #else
    typedef unsigned long uintmax_t;
    #endif
    #endif
EOF
fi

sed 's/^ *//' >> tmp-stdint.h <<EOF

  #endif /* GCC_GENERATED_STDINT_H */
EOF

if test -r ]_GCC_STDINT_H[ && cmp -s tmp-stdint.h ]_GCC_STDINT_H[; then
  rm -f tmp-stdint.h
else
  mv -f tmp-stdint.h ]_GCC_STDINT_H[
fi

], [
GCC="$GCC"
CC="$CC"
acx_cv_header_stdint="$acx_cv_header_stdint"
acx_cv_type_int8_t="$acx_cv_type_int8_t"
acx_cv_type_int16_t="$acx_cv_type_int16_t"
acx_cv_type_int32_t="$acx_cv_type_int32_t"
acx_cv_type_int64_t="$acx_cv_type_int64_t"
acx_cv_type_intptr_t="$acx_cv_type_intptr_t"
ac_cv_type_uintmax_t="$ac_cv_type_uintmax_t"
ac_cv_type_uintptr_t="$ac_cv_type_uintptr_t"
ac_cv_type_uint64_t="$ac_cv_type_uint64_t"
ac_cv_type_u_int64_t="$ac_cv_type_u_int64_t"
ac_cv_type_u_int32_t="$ac_cv_type_u_int32_t"
ac_cv_type_int_least32_t="$ac_cv_type_int_least32_t"
ac_cv_type_int_fast32_t="$ac_cv_type_int_fast32_t"
ac_cv_sizeof_void_p="$ac_cv_sizeof_void_p"
])

])

# Autoconf include file defining macros related to compile-time warnings.

# Copyright 2004, 2005, 2007, 2009, 2011 Free Software Foundation, Inc.

#This file is part of GCC.

#GCC is free software; you can redistribute it and/or modify it under
#the terms of the GNU General Public License as published by the Free
#Software Foundation; either version 3, or (at your option) any later
#version.

#GCC is distributed in the hope that it will be useful, but WITHOUT
#ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
#FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License
#for more details.

#You should have received a copy of the GNU General Public License
#along with GCC; see the file COPYING3.  If not see
#<http://www.gnu.org/licenses/>.

# ACX_PROG_CC_WARNING_OPTS(WARNINGS, [VARIABLE = WARN_CFLAGS])
#   Sets @VARIABLE@ to the subset of the given options which the
#   compiler accepts.
AC_DEFUN([ACX_PROG_CC_WARNING_OPTS],
[AC_REQUIRE([AC_PROG_CC])dnl
AC_LANG_PUSH(C)
m4_pushdef([acx_Var], [m4_default([$2], [WARN_CFLAGS])])dnl
AC_SUBST(acx_Var)dnl
m4_expand_once([acx_Var=
],m4_quote(acx_Var=))dnl
save_CFLAGS="$CFLAGS"
for real_option in $1; do
  # Do the check with the no- prefix removed since gcc silently
  # accepts any -Wno-* option on purpose
  case $real_option in
    -Wno-*) option=-W`expr x$real_option : 'x-Wno-\(.*\)'` ;;
    *) option=$real_option ;;
  esac
  AS_VAR_PUSHDEF([acx_Woption], [acx_cv_prog_cc_warning_$option])
  AC_CACHE_CHECK([whether $CC supports $option], acx_Woption,
    [CFLAGS="$option"
    AC_COMPILE_IFELSE([AC_LANG_PROGRAM([],[])],
      [AS_VAR_SET(acx_Woption, yes)],
      [AS_VAR_SET(acx_Woption, no)])
  ])
  AS_IF([test AS_VAR_GET(acx_Woption) = yes],
        [acx_Var="$acx_Var${acx_Var:+ }$real_option"])
  AS_VAR_POPDEF([acx_Woption])dnl
done
CFLAGS="$save_CFLAGS"
m4_popdef([acx_Var])dnl
AC_LANG_POP(C)
])# ACX_PROG_CC_WARNING_OPTS

# ACX_PROG_CC_WARNING_ALMOST_PEDANTIC(WARNINGS, [VARIABLE = WARN_PEDANTIC])
#   Append to VARIABLE "-pedantic" + the argument, if the compiler is GCC
#   and accepts all of those options simultaneously, otherwise to nothing.
AC_DEFUN([ACX_PROG_CC_WARNING_ALMOST_PEDANTIC],
[AC_REQUIRE([AC_PROG_CC])dnl
AC_LANG_PUSH(C)
m4_pushdef([acx_Var], [m4_default([$2], [WARN_PEDANTIC])])dnl
AC_SUBST(acx_Var)dnl
m4_expand_once([acx_Var=
],m4_quote(acx_Var=))dnl
# Do the check with the no- prefix removed from the warning options
# since gcc silently accepts any -Wno-* option on purpose
m4_pushdef([acx_Woptions], [m4_bpatsubst([$1], [-Wno-], [-W])])dnl
AS_VAR_PUSHDEF([acx_Pedantic], [acx_cv_prog_cc_pedantic_]acx_Woptions)dnl
AS_IF([test "$GCC" = yes],
[AC_CACHE_CHECK([whether $CC supports -pedantic ]acx_Woptions, acx_Pedantic,
[save_CFLAGS="$CFLAGS"
CFLAGS="-pedantic acx_Woptions"
AC_COMPILE_IFELSE([AC_LANG_PROGRAM([],[])],
   [AS_VAR_SET(acx_Pedantic, yes)],
   [AS_VAR_SET(acx_Pedantic, no)])
CFLAGS="$save_CFLAGS"])
AS_IF([test AS_VAR_GET(acx_Pedantic) = yes],
      [acx_Var="$acx_Var${acx_Var:+ }-pedantic $1"])
])
AS_VAR_POPDEF([acx_Pedantic])dnl
m4_popdef([acx_Woptions])dnl
m4_popdef([acx_Var])dnl
AC_LANG_POP(C)
])# ACX_PROG_CC_WARNING_ALMOST_PEDANTIC

# ACX_PROG_CC_WARNINGS_ARE_ERRORS([x.y.z], [VARIABLE = WERROR])
#   sets @VARIABLE@ to "-Werror" if the compiler is GCC >=x.y.z, or if
#   --enable-werror-always was given on the command line, otherwise
#   to nothing.
#   If the argument is the word "manual" instead of a version number,
#   then @VARIABLE@ will be set to -Werror only if --enable-werror-always
#   appeared on the configure command line.
AC_DEFUN([ACX_PROG_CC_WARNINGS_ARE_ERRORS],
[AC_REQUIRE([AC_PROG_CC])dnl
AC_LANG_PUSH(C)
m4_pushdef([acx_Var], [m4_default([$2], [WERROR])])dnl
AC_SUBST(acx_Var)dnl
m4_expand_once([acx_Var=
],m4_quote(acx_Var=))dnl
AC_ARG_ENABLE(werror-always, 
    AS_HELP_STRING([--enable-werror-always],
		   [enable -Werror despite compiler version]),
[], [enable_werror_always=no])
AS_IF([test $enable_werror_always = yes],
      [acx_Var="$acx_Var${acx_Var:+ }-Werror"])
 m4_if($1, [manual],,
 [AS_VAR_PUSHDEF([acx_GCCvers], [acx_cv_prog_cc_gcc_$1_or_newer])dnl
  AC_CACHE_CHECK([whether $CC is GCC >=$1], acx_GCCvers,
    [set fnord `echo $1 | tr '.' ' '`
     shift
     AC_PREPROC_IFELSE(
[#if __GNUC__ * 10000 + __GNUC_MINOR__ * 100 + __GNUC_PATCHLEVEL__ \
  < [$]1 * 10000 + [$]2 * 100 + [$]3
#error insufficient
#endif],
   [AS_VAR_SET(acx_GCCvers, yes)],
   [AS_VAR_SET(acx_GCCvers, no)])])
 AS_IF([test AS_VAR_GET(acx_GCCvers) = yes],
       [acx_Var="$acx_Var${acx_Var:+ }-Werror"])
  AS_VAR_POPDEF([acx_GCCvers])])
m4_popdef([acx_Var])dnl
AC_LANG_POP(C)
])# ACX_PROG_CC_WARNINGS_ARE_ERRORS

# ACX_PROG_CXX_WARNING_OPTS(WARNINGS, [VARIABLE = WARN_CXXFLAGS])
#   Sets @VARIABLE@ to the subset of the given options which the
#   compiler accepts.
AC_DEFUN([ACX_PROG_CXX_WARNING_OPTS],
[AC_REQUIRE([AC_PROG_CXX])dnl
AC_LANG_PUSH(C++)
m4_pushdef([acx_Var], [m4_default([$2], [WARN_CXXFLAGS])])dnl
AC_SUBST(acx_Var)dnl
m4_expand_once([acx_Var=
],m4_quote(acx_Var=))dnl
save_CXXFLAGS="$CXXFLAGS"
for real_option in $1; do
  # Do the check with the no- prefix removed since gcc silently
  # accepts any -Wno-* option on purpose
  case $real_option in
    -Wno-*) option=-W`expr x$real_option : 'x-Wno-\(.*\)'` ;;
    *) option=$real_option ;;
  esac
  AS_VAR_PUSHDEF([acx_Woption], [acx_cv_prog_cc_warning_$option])
  AC_CACHE_CHECK([whether $CXX supports $option], acx_Woption,
    [CXXFLAGS="$option"
    AC_COMPILE_IFELSE([AC_LANG_PROGRAM([],[])],
      [AS_VAR_SET(acx_Woption, yes)],
      [AS_VAR_SET(acx_Woption, no)])
  ])
  AS_IF([test AS_VAR_GET(acx_Woption) = yes],
        [acx_Var="$acx_Var${acx_Var:+ }$real_option"])
  AS_VAR_POPDEF([acx_Woption])dnl
done
CXXFLAGS="$save_CXXFLAGS"
m4_popdef([acx_Var])dnl
AC_LANG_POP(C++)
])# ACX_PROG_CXX_WARNING_OPTS

# ACX_PROG_CXX_WARNING_ALMOST_PEDANTIC(WARNINGS, [VARIABLE = WARN_PEDANTIC])
#   Append to VARIABLE "-pedantic" + the argument, if the compiler is G++
#   and accepts all of those options simultaneously, otherwise to nothing.
AC_DEFUN([ACX_PROG_CXX_WARNING_ALMOST_PEDANTIC],
[AC_REQUIRE([AC_PROG_CXX])dnl
AC_LANG_PUSH(C++)
m4_pushdef([acx_Var], [m4_default([$2], [WARN_PEDANTIC])])dnl
AC_SUBST(acx_Var)dnl
m4_expand_once([acx_Var=
],m4_quote(acx_Var=))dnl
# Do the check with the no- prefix removed from the warning options
# since gcc silently accepts any -Wno-* option on purpose
m4_pushdef([acx_Woptions], [m4_bpatsubst([$1], [-Wno-], [-W])])dnl
AS_VAR_PUSHDEF([acx_Pedantic], [acx_cv_prog_cc_pedantic_]acx_Woptions)dnl
AS_IF([test "$GXX" = yes],
[AC_CACHE_CHECK([whether $CXX supports -pedantic ]acx_Woptions, acx_Pedantic,
[save_CXXFLAGS="$CXXFLAGS"
CXXFLAGS="-pedantic acx_Woptions"
AC_COMPILE_IFELSE([AC_LANG_PROGRAM([],[])],
   [AS_VAR_SET(acx_Pedantic, yes)],
   [AS_VAR_SET(acx_Pedantic, no)])
CXXFLAGS="$save_CXXFLAGS"])
AS_IF([test AS_VAR_GET(acx_Pedantic) = yes],
      [acx_Var="$acx_Var${acx_Var:+ }-pedantic $1"])
])
AS_VAR_POPDEF([acx_Pedantic])dnl
m4_popdef([acx_Woptions])dnl
m4_popdef([acx_Var])dnl
AC_LANG_POP(C++)
])# ACX_PROG_CXX_WARNING_ALMOST_PEDANTIC

# ACX_PROG_CXX_WARNINGS_ARE_ERRORS([x.y.z], [VARIABLE = WERROR])
#   sets @VARIABLE@ to "-Werror" if the compiler is G++ >=x.y.z, or if
#   --enable-werror-always was given on the command line, otherwise
#   to nothing.
#   If the argument is the word "manual" instead of a version number,
#   then @VARIABLE@ will be set to -Werror only if --enable-werror-always
#   appeared on the configure command line.
AC_DEFUN([ACX_PROG_CXX_WARNINGS_ARE_ERRORS],
[AC_REQUIRE([AC_PROG_CXX])dnl
AC_LANG_PUSH(C++)
m4_pushdef([acx_Var], [m4_default([$2], [WERROR])])dnl
AC_SUBST(acx_Var)dnl
m4_expand_once([acx_Var=
],m4_quote(acx_Var=))dnl
AC_ARG_ENABLE(werror-always,
    AS_HELP_STRING([--enable-werror-always],
		   [enable -Werror despite compiler version]),
[], [enable_werror_always=no])
AS_IF([test $enable_werror_always = yes],
      [acx_Var="$acx_Var${acx_Var:+ }-Werror"])
 m4_if($1, [manual],,
 [AS_VAR_PUSHDEF([acx_GXXvers], [acx_cv_prog_cxx_gxx_$1_or_newer])dnl
  AC_CACHE_CHECK([whether $CXX is G++ >=$1], acx_GXXvers,
    [set fnord `echo $1 | tr '.' ' '`
     shift
     AC_PREPROC_IFELSE(
[#if __GNUC__ * 10000 + __GNUC_MINOR__ * 100 + __GNUC_PATCHLEVEL__ \
  < [$]1 * 10000 + [$]2 * 100 + [$]3
#error insufficient
#endif],
   [AS_VAR_SET(acx_GXXvers, yes)],
   [AS_VAR_SET(acx_GXXvers, no)])])
 AS_IF([test AS_VAR_GET(acx_GXXvers) = yes],
       [acx_Var="$acx_Var${acx_Var:+ }-Werror"])
  AS_VAR_POPDEF([acx_GXXvers])])
m4_popdef([acx_Var])dnl
AC_LANG_POP(C++)
])# ACX_PROG_CXX_WARNINGS_ARE_ERRORS

