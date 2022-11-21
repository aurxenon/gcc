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
# Autoconf M4 include file defining utility macros for complex Canadian
# cross builds.

dnl ####
dnl # _GCC_TOPLEV_NONCANONICAL_BUILD
dnl # $build_alias or canonical $build if blank.
dnl # Used when we would use $build_alias, but empty is not OK.
AC_DEFUN([_GCC_TOPLEV_NONCANONICAL_BUILD],
[AC_REQUIRE([AC_CANONICAL_BUILD]) []dnl
case ${build_alias} in
  "") build_noncanonical=${build} ;;
  *) build_noncanonical=${build_alias} ;;
esac
]) []dnl # _GCC_TOPLEV_NONCANONICAL_BUILD

dnl ####
dnl # _GCC_TOPLEV_NONCANONICAL_HOST
dnl # $host_alias, or $build_noncanonical if blank.
dnl # Used when we would use $host_alias, but empty is not OK.
AC_DEFUN([_GCC_TOPLEV_NONCANONICAL_HOST],
[AC_REQUIRE([_GCC_TOPLEV_NONCANONICAL_BUILD]) []dnl
case ${host_alias} in
  "") host_noncanonical=${build_noncanonical} ;;
  *) host_noncanonical=${host_alias} ;;
esac
]) []dnl # _GCC_TOPLEV_NONCANONICAL_HOST

dnl ####
dnl # _GCC_TOPLEV_NONCANONICAL_TARGET
dnl # $target_alias or $host_noncanonical if blank.
dnl # Used when we would use $target_alias, but empty is not OK.
AC_DEFUN([_GCC_TOPLEV_NONCANONICAL_TARGET],
[AC_REQUIRE([_GCC_TOPLEV_NONCANONICAL_HOST]) []dnl
case ${target_alias} in
  "") target_noncanonical=${host_noncanonical} ;;
  *) target_noncanonical=${target_alias} ;;
esac
]) []dnl # _GCC_TOPLEV_NONCANONICAL_TARGET

dnl ####
dnl # ACX_NONCANONICAL_BUILD
dnl # Like underscored version, but AC_SUBST's.
AC_DEFUN([ACX_NONCANONICAL_BUILD],
[AC_REQUIRE([_GCC_TOPLEV_NONCANONICAL_BUILD]) []dnl
AC_SUBST(build_noncanonical)
]) []dnl # ACX_NONCANONICAL_BUILD

dnl ####
dnl # ACX_NONCANONICAL_HOST
dnl # Like underscored version, but AC_SUBST's.
AC_DEFUN([ACX_NONCANONICAL_HOST],
[AC_REQUIRE([_GCC_TOPLEV_NONCANONICAL_HOST]) []dnl
AC_SUBST(host_noncanonical)
]) []dnl # ACX_NONCANONICAL_HOST

dnl ####
dnl # ACX_NONCANONICAL_TARGET
dnl # Like underscored version, but AC_SUBST's.
AC_DEFUN([ACX_NONCANONICAL_TARGET],
[AC_REQUIRE([_GCC_TOPLEV_NONCANONICAL_TARGET]) []dnl
AC_SUBST(target_noncanonical)
]) []dnl # ACX_NONCANONICAL_TARGET

dnl ####
dnl # GCC_TOPLEV_SUBDIRS
dnl # GCC & friends build 'build', 'host', and 'target' tools.  These must
dnl # be separated into three well-known subdirectories of the build directory:
dnl # build_subdir, host_subdir, and target_subdir.  The values are determined
dnl # here so that they can (theoretically) be changed in the future.  They
dnl # were previously reproduced across many different files.
dnl #
dnl # This logic really amounts to very little with autoconf 2.13; it will
dnl # amount to a lot more with autoconf 2.5x.
AC_DEFUN([GCC_TOPLEV_SUBDIRS],
[AC_REQUIRE([_GCC_TOPLEV_NONCANONICAL_TARGET]) []dnl
AC_REQUIRE([_GCC_TOPLEV_NONCANONICAL_BUILD]) []dnl

# post-stage1 host modules use a different CC_FOR_BUILD so, in order to
# have matching libraries, they should use host libraries: Makefile.tpl
# arranges to pass --with-build-libsubdir=$(HOST_SUBDIR).
# However, they still use the build modules, because the corresponding
# host modules (e.g. bison) are only built for the host when bootstrap
# finishes. So:
# - build_subdir is where we find build modules, and never changes.
# - build_libsubdir is where we find build libraries, and can be overridden.

# Prefix 'build-' so this never conflicts with target_subdir.
build_subdir="build-${build_noncanonical}"
AC_ARG_WITH(build-libsubdir,
[  --with-build-libsubdir=[DIR]  Directory where to find libraries for build system],
build_libsubdir="$withval",
build_libsubdir="$build_subdir")
# --srcdir=. covers the toplevel, while "test -d" covers the subdirectories
if ( test $srcdir = . && test -d gcc ) \
   || test -d $srcdir/../host-${host_noncanonical}; then
  host_subdir="host-${host_noncanonical}"
else
  host_subdir=.
fi
# No prefix.
target_subdir=${target_noncanonical}
AC_SUBST([build_libsubdir]) []dnl
AC_SUBST([build_subdir]) []dnl
AC_SUBST([host_subdir]) []dnl
AC_SUBST([target_subdir]) []dnl
]) []dnl # GCC_TOPLEV_SUBDIRS


# _NCN_TOOL_PREFIXES:  Some stuff that oughtta be done in AC_CANONICAL_SYSTEM 
# or AC_INIT.
# These demand that AC_CANONICAL_SYSTEM be called beforehand.
AC_DEFUN([_NCN_TOOL_PREFIXES],
[ncn_tool_prefix=
test -n "$host_alias" && ncn_tool_prefix=$host_alias-
ncn_target_tool_prefix=
test -n "$target_alias" && ncn_target_tool_prefix=$target_alias-
]) []dnl # _NCN_TOOL_PREFIXES

# NCN_STRICT_CHECK_TOOLS(variable, progs-to-check-for,[value-if-not-found],[path])
# Like plain AC_CHECK_TOOLS, but require prefix if build!=host.

AC_DEFUN([NCN_STRICT_CHECK_TOOLS],
[AC_REQUIRE([_NCN_TOOL_PREFIXES]) []dnl
AC_ARG_VAR([$1], [$1 for the host])

if test -n "[$]$1"; then
  ac_cv_prog_$1=[$]$1
elif test -n "$ac_cv_prog_$1"; then
  $1=$ac_cv_prog_$1
fi

if test -n "$ac_cv_prog_$1"; then
  for ncn_progname in $2; do
    AC_CHECK_PROG([$1], [${ncn_progname}], [${ncn_progname}], , [$4])
  done
fi

for ncn_progname in $2; do
  if test -n "$ncn_tool_prefix"; then
    AC_CHECK_PROG([$1], [${ncn_tool_prefix}${ncn_progname}], 
                  [${ncn_tool_prefix}${ncn_progname}], , [$4])
  fi
  if test -z "$ac_cv_prog_$1" && test $build = $host ; then
    AC_CHECK_PROG([$1], [${ncn_progname}], [${ncn_progname}], , [$4]) 
  fi
  test -n "$ac_cv_prog_$1" && break
done

if test -z "$ac_cv_prog_$1" ; then
  ifelse([$3],[], [set dummy $2
  if test $build = $host ; then
    $1="[$]2"
  else
    $1="${ncn_tool_prefix}[$]2"
  fi], [$1="$3"])
fi
]) []dnl # NCN_STRICT_CHECK_TOOLS

# NCN_STRICT_CHECK_TARGET_TOOLS(variable, progs-to-check-for,[value-if-not-found],[path])
# Like CVS Autoconf AC_CHECK_TARGET_TOOLS, but require prefix if build!=target.

AC_DEFUN([NCN_STRICT_CHECK_TARGET_TOOLS],
[AC_REQUIRE([_NCN_TOOL_PREFIXES]) []dnl
AC_ARG_VAR([$1], patsubst([$1], [_FOR_TARGET$], [])[ for the target])

if test -n "[$]$1"; then
  ac_cv_prog_$1=[$]$1
elif test -n "$ac_cv_prog_$1"; then
  $1=$ac_cv_prog_$1
fi

if test -n "$ac_cv_prog_$1"; then
  for ncn_progname in $2; do
    AC_CHECK_PROG([$1], [${ncn_progname}], [${ncn_progname}], , [$4])
  done
fi

if test -z "$ac_cv_prog_$1" && test -n "$with_build_time_tools"; then
  for ncn_progname in $2; do
    AC_MSG_CHECKING([for ${ncn_progname} in $with_build_time_tools])
    if test -x $with_build_time_tools/${ncn_progname}; then
      ac_cv_prog_$1=$with_build_time_tools/${ncn_progname}
      AC_MSG_RESULT(yes)
      break
    else
      AC_MSG_RESULT(no)
    fi
  done
fi

if test -z "$ac_cv_prog_$1"; then
  for ncn_progname in $2; do
    if test -n "$ncn_target_tool_prefix"; then
      AC_CHECK_PROG([$1], [${ncn_target_tool_prefix}${ncn_progname}], 
                    [${ncn_target_tool_prefix}${ncn_progname}], , [$4])
    fi
    if test -z "$ac_cv_prog_$1" && test $build = $target ; then
      AC_CHECK_PROG([$1], [${ncn_progname}], [${ncn_progname}], , [$4]) 
    fi
    test -n "$ac_cv_prog_$1" && break
  done
fi
  
if test -z "$ac_cv_prog_$1" ; then
  ifelse([$3],[], [set dummy $2
  if test $build = $target ; then
    $1="[$]2"
  else
    $1="${ncn_target_tool_prefix}[$]2"
  fi], [$1="$3"])
else
  $1="$ac_cv_prog_$1"
fi
]) []dnl # NCN_STRICT_CHECK_TARGET_TOOLS
  

# Backported from Autoconf 2.5x; can go away when and if
# we switch.  Put the OS path separator in $PATH_SEPARATOR.
AC_DEFUN([ACX_PATH_SEP], [
# The user is always right.
if test "${PATH_SEPARATOR+set}" != set; then
  echo "#! /bin/sh" >conf$$.sh
  echo  "exit 0"   >>conf$$.sh
  chmod +x conf$$.sh
  if (PATH="/nonexistent;."; conf$$.sh) >/dev/null 2>&1; then
    PATH_SEPARATOR=';'
  else
    PATH_SEPARATOR=: 
  fi
  rm -f conf$$.sh
fi
])


dnl ####
dnl # GCC_BASE_VER
dnl # Determine GCC version number to use in compiler directories.

AC_DEFUN([GCC_BASE_VER],
[
  get_gcc_base_ver="cat"
  AC_ARG_WITH(gcc-major-version-only,
  [AS_HELP_STRING([--with-gcc-major-version-only], [use only GCC major number in filesystem paths])],
  [if test x$with_gcc_major_version_only = xyes ; then
    changequote(,)dnl
    get_gcc_base_ver="sed -e 's/^\([0-9]*\).*/\1/'"
    changequote([,])dnl
  fi
  ])
  AC_SUBST(get_gcc_base_ver)
])


AC_DEFUN([ACX_TOOL_DIRS], [
AC_REQUIRE([ACX_PATH_SEP])
AC_REQUIRE([GCC_BASE_VER])
if test "x$exec_prefix" = xNONE; then
        if test "x$prefix" = xNONE; then
                gcc_cv_tool_prefix=$ac_default_prefix
        else
                gcc_cv_tool_prefix=$prefix
        fi
else
        gcc_cv_tool_prefix=$exec_prefix
fi

# If there is no compiler in the tree, use the PATH only.  In any
# case, if there is no compiler in the tree nobody should use
# AS_FOR_TARGET and LD_FOR_TARGET.
if test x$host = x$build && test -f $srcdir/gcc/BASE-VER; then
    if test x$with_gcc_major_version_only = xyes ; then
        changequote(,)dnl
        gcc_version=`sed -e 's/^\([0-9]*\).*$/\1/' $srcdir/gcc/BASE-VER`
        changequote([,])dnl
    else
        gcc_version=`cat $srcdir/gcc/BASE-VER`
    fi
    gcc_cv_tool_dirs="$gcc_cv_tool_prefix/libexec/gcc/$target_noncanonical/$gcc_version$PATH_SEPARATOR"
    gcc_cv_tool_dirs="$gcc_cv_tool_dirs$gcc_cv_tool_prefix/libexec/gcc/$target_noncanonical$PATH_SEPARATOR"
    gcc_cv_tool_dirs="$gcc_cv_tool_dirs/usr/lib/gcc/$target_noncanonical/$gcc_version$PATH_SEPARATOR"
    gcc_cv_tool_dirs="$gcc_cv_tool_dirs/usr/lib/gcc/$target_noncanonical$PATH_SEPARATOR"
    gcc_cv_tool_dirs="$gcc_cv_tool_dirs$gcc_cv_tool_prefix/$target_noncanonical/bin/$target_noncanonical/$gcc_version$PATH_SEPARATOR"
    gcc_cv_tool_dirs="$gcc_cv_tool_dirs$gcc_cv_tool_prefix/$target_noncanonical/bin$PATH_SEPARATOR"
else
    gcc_cv_tool_dirs=
fi

if test x$build = x$target && test -n "$md_exec_prefix"; then
        gcc_cv_tool_dirs="$gcc_cv_tool_dirs$md_exec_prefix$PATH_SEPARATOR"
fi

]) []dnl # ACX_TOOL_DIRS

# ACX_HAVE_GCC_FOR_TARGET
# Check if the variable GCC_FOR_TARGET really points to a GCC binary.
AC_DEFUN([ACX_HAVE_GCC_FOR_TARGET], [
cat > conftest.c << \EOF
#ifdef __GNUC__
  gcc_yay;
#endif
EOF
if ($GCC_FOR_TARGET -E conftest.c | grep gcc_yay) > /dev/null 2>&1; then
  have_gcc_for_target=yes
else
  GCC_FOR_TARGET=${ncn_target_tool_prefix}gcc
  have_gcc_for_target=no
fi
rm conftest.c
])

# ACX_CHECK_INSTALLED_TARGET_TOOL(VAR, PROG)
# Searching for installed target binutils.  We need to take extra care,
# else we may find the wrong assembler, linker, etc., and lose.
#
# First try --with-build-time-tools, if specified.
#
# For build != host, we ask the installed GCC for the name of the tool it
# uses, and accept it if it is an absolute path.  This is because the
# only good choice for a compiler is the same GCC version that is being
# installed (or we couldn't make target libraries), and we assume that
# on the host system we'll have not only the same GCC version, but also
# the same binutils version.
#
# For build == host, search the same directories that the installed
# compiler will search.  We used to do this for the assembler, linker,
# and nm only; for simplicity of configuration, however, we extend this
# criterion to tools (such as ar and ranlib) that are never invoked by
# the compiler, to avoid mismatches.
#
# Also note we have to check MD_EXEC_PREFIX before checking the user's path
# if build == target.  This makes the most sense only when bootstrapping,
# but we also do so when build != host.  In this case, we hope that the
# build and host systems will have similar contents of MD_EXEC_PREFIX.
#
# If we do not find a suitable binary, then try the user's path.

AC_DEFUN([ACX_CHECK_INSTALLED_TARGET_TOOL], [
AC_REQUIRE([ACX_TOOL_DIRS])
AC_REQUIRE([ACX_HAVE_GCC_FOR_TARGET])
if test -z "$ac_cv_path_$1" ; then
  if test -n "$with_build_time_tools"; then
    AC_MSG_CHECKING([for $2 in $with_build_time_tools])
    if test -x $with_build_time_tools/$2; then
      $1=`cd $with_build_time_tools && pwd`/$2
      ac_cv_path_$1=[$]$1
      AC_MSG_RESULT([$ac_cv_path_$1])
    else
      AC_MSG_RESULT(no)
    fi
  elif test $build != $host && test $have_gcc_for_target = yes; then
    $1=`$GCC_FOR_TARGET --print-prog-name=$2`
    test [$]$1 = $2 && $1=
    test -n "[$]$1" && ac_cv_path_$1=[$]$1
  fi
fi
if test -z "$ac_cv_path_$1" && test -n "$gcc_cv_tool_dirs"; then
  AC_PATH_PROG([$1], [$2], [], [$gcc_cv_tool_dirs])
fi
if test -z "$ac_cv_path_$1" ; then
  NCN_STRICT_CHECK_TARGET_TOOLS([$1], [$2])
else
  $1=$ac_cv_path_$1
fi
]) []dnl # ACX_CHECK_INSTALLED_TARGET_TOOL

# AC_PROG_CPP_WERROR
# Used for autoconf 2.5x to force AC_PREPROC_IFELSE to reject code which
# triggers warnings from the preprocessor.  Will be in autoconf 2.58.
# For now, using this also overrides header checks to use only the
# preprocessor (matches 2.13 behavior; matching 2.58's behavior is a
# bit harder from here).
# Eventually autoconf will default to checking headers with the compiler
# instead, and we'll have to do this differently.

AC_DEFUN([AC_PROG_CPP_WERROR],
[AC_REQUIRE([AC_PROG_CPP])dnl
m4_define([AC_CHECK_HEADER],m4_defn([_AC_CHECK_HEADER_OLD]))
ac_c_preproc_warn_flag=yes])# AC_PROG_CPP_WERROR

# Test for GNAT.
# We require the gnatbind & gnatmake programs, as well as a compiler driver
# that understands Ada.  We use the user's CC setting, already found, and
# possibly add $1 to the command-line parameters.
#
# Sets the shell variable have_gnat to yes or no as appropriate, and
# substitutes GNATBIND and GNATMAKE.
AC_DEFUN([ACX_PROG_GNAT],
[AC_REQUIRE([AC_CHECK_TOOL_PREFIX])
AC_REQUIRE([AC_PROG_CC])
AC_CHECK_TOOL(GNATBIND, gnatbind, no)
AC_CHECK_TOOL(GNATMAKE, gnatmake, no)
AC_CACHE_CHECK([whether compiler driver understands Ada],
		 acx_cv_cc_gcc_supports_ada,
[cat >conftest.adb <<EOF
procedure conftest is begin null; end conftest;
EOF
acx_cv_cc_gcc_supports_ada=no
# There is a bug in old released versions of GCC which causes the
# driver to exit successfully when the appropriate language module
# has not been installed.  This is fixed in 2.95.4, 3.0.2, and 3.1.
# Therefore we must check for the error message as well as an
# unsuccessful exit.
# Other compilers, like HP Tru64 UNIX cc, exit successfully when
# given a .adb file, but produce no object file.  So we must check
# if an object file was really produced to guard against this.
errors=`(${CC} $1[]m4_ifval([$1], [ ])-c conftest.adb) 2>&1 || echo failure`
if test x"$errors" = x && test -f conftest.$ac_objext; then
  acx_cv_cc_gcc_supports_ada=yes
fi
rm -f conftest.*])

if test "x$GNATBIND" != xno && test "x$GNATMAKE" != xno && test x$acx_cv_cc_gcc_supports_ada != xno; then
  have_gnat=yes
else
  have_gnat=no
fi
])

# Test for D.
AC_DEFUN([ACX_PROG_GDC],
[AC_REQUIRE([AC_CHECK_TOOL_PREFIX])
AC_REQUIRE([AC_PROG_CC])
AC_CHECK_TOOL(GDC, gdc, no)
AC_CACHE_CHECK([whether the D compiler works],
		 acx_cv_d_compiler_works,
[cat >conftest.d <<EOF
module conftest; int main() { return 0; }
EOF
acx_cv_d_compiler_works=no
if test "x$GDC" != xno; then
  errors=`(${GDC} $1[]m4_ifval([$1], [ ])-c conftest.d) 2>&1 || echo failure`
  if test x"$errors" = x && test -f conftest.$ac_objext; then
    acx_cv_d_compiler_works=yes
  fi
  rm -f conftest.*
fi])
if test "x$GDC" != xno && test x$acx_cv_d_compiler_works != xno; then
  have_gdc=yes
else
  have_gdc=no
fi
])

dnl 'make compare' can be significantly faster, if cmp itself can
dnl skip bytes instead of using tail.  The test being performed is
dnl "if cmp --ignore-initial=2 t1 t2 && ! cmp --ignore-initial=1 t1 t2"
dnl but we need to sink errors and handle broken shells.  We also test
dnl for the parameter format "cmp file1 file2 skip1 skip2" which is
dnl accepted by cmp on some systems.
AC_DEFUN([ACX_PROG_CMP_IGNORE_INITIAL],
[AC_CACHE_CHECK([how to compare bootstrapped objects], gcc_cv_prog_cmp_skip,
[ echo abfoo >t1
  echo cdfoo >t2
  gcc_cv_prog_cmp_skip='tail -c +17 $$f1 > tmp-foo1; tail -c +17 $$f2 > tmp-foo2; cmp tmp-foo1 tmp-foo2'
  if cmp t1 t2 2 2 > /dev/null 2>&1; then
    if cmp t1 t2 1 1 > /dev/null 2>&1; then
      :
    else
      gcc_cv_prog_cmp_skip='cmp $$f1 $$f2 16 16'
    fi
  fi
  if cmp --ignore-initial=2 t1 t2 > /dev/null 2>&1; then
    if cmp --ignore-initial=1 t1 t2 > /dev/null 2>&1; then
      :
    else
      gcc_cv_prog_cmp_skip='cmp --ignore-initial=16 $$f1 $$f2'
    fi
  fi
  rm t1 t2
])
do_compare="$gcc_cv_prog_cmp_skip"
AC_SUBST(do_compare)
])

dnl See whether we can include both string.h and strings.h.
AC_DEFUN([ACX_HEADER_STRING],
[AC_CACHE_CHECK([whether string.h and strings.h may both be included],
  gcc_cv_header_string,
[AC_TRY_COMPILE([#include <string.h>
#include <strings.h>], , gcc_cv_header_string=yes, gcc_cv_header_string=no)])
if test $gcc_cv_header_string = yes; then
  AC_DEFINE(STRING_WITH_STRINGS, 1, [Define if you can safely include both <string.h> and <strings.h>.])
fi
])

dnl See if stdbool.h properly defines bool and true/false.
dnl Check whether _Bool is built-in.
AC_DEFUN([ACX_HEADER_STDBOOL],
[AC_CACHE_CHECK([for working stdbool.h],
  ac_cv_header_stdbool_h,
[AC_TRY_COMPILE([#include <stdbool.h>],
[bool foo = false;],
ac_cv_header_stdbool_h=yes, ac_cv_header_stdbool_h=no)])
if test $ac_cv_header_stdbool_h = yes; then
  AC_DEFINE(HAVE_STDBOOL_H, 1,
  [Define if you have a working <stdbool.h> header file.])
fi
AC_CACHE_CHECK(for built-in _Bool, gcc_cv_c__bool,
[AC_TRY_COMPILE(,
[_Bool foo;],
gcc_cv_c__bool=yes, gcc_cv_c__bool=no)
])
if test $gcc_cv_c__bool = yes; then
  AC_DEFINE(HAVE__BOOL, 1, [Define if the \`_Bool' type is built-in.])
fi
])

dnl See if hard links work and if not, try to substitute $1 or simple copy.
AC_DEFUN([ACX_PROG_LN],
[AC_MSG_CHECKING(whether ln works)
AC_CACHE_VAL(acx_cv_prog_LN,
[rm -f conftestdata_t
echo >conftestdata_f
if ln conftestdata_f conftestdata_t 2>/dev/null
then
  acx_cv_prog_LN=ln
else
  acx_cv_prog_LN=no
fi
rm -f conftestdata_f conftestdata_t
])dnl
if test $acx_cv_prog_LN = no; then
  LN="ifelse([$1],,cp,[$1])"
  AC_MSG_RESULT([no, using $LN])
else
  LN="$acx_cv_prog_LN"
  AC_MSG_RESULT(yes)
fi
AC_SUBST(LN)dnl
])

dnl GCC_TARGET_TOOL(PROGRAM, TARGET-VAR, HOST-VAR, IN-TREE-TOOL, LANGUAGE)
AC_DEFUN([GCC_TARGET_TOOL],
[AC_MSG_CHECKING(where to find the target $1)
if test "x${build}" != "x${host}" ; then
  if expr "x[$]$2" : "x/" > /dev/null; then
    # We already found the complete path
    ac_dir=`dirname [$]$2`
    AC_MSG_RESULT(pre-installed in $ac_dir)
  else
    # Canadian cross, just use what we found
    AC_MSG_RESULT(pre-installed)
  fi
else
  ifelse([$4],,,
  [ok=yes
  case " ${configdirs} " in
    *" patsubst([$4], [/.*], []) "*) ;;
    *) ok=no ;;
  esac
  ifelse([$5],,, 
  [case ,${enable_languages}, in
    *,$5,*) ;;
    *) ok=no ;;
  esac])
  if test $ok = yes; then
    # An in-tree tool is available and we can use it
    $2='$$r/$(HOST_SUBDIR)/$4'
    AC_MSG_RESULT(just compiled)
  el])if expr "x[$]$2" : "x/" > /dev/null; then
    # We already found the complete path
    ac_dir=`dirname [$]$2`
    AC_MSG_RESULT(pre-installed in $ac_dir)
  elif test "x$target" = "x$host"; then
    # We can use an host tool
    $2='$($3)'
    AC_MSG_RESULT(host tool)
  else
    # We need a cross tool
    AC_MSG_RESULT(pre-installed)
  fi
fi
AC_SUBST($2)])


dnl Locate a program and check that its version is acceptable.
dnl ACX_PROG_CHECK_VER(var, name, version-switch,
dnl                    version-extract-regexp, version-glob)
AC_DEFUN([ACX_CHECK_PROG_VER],[
  AC_CHECK_PROG([$1], [$2], [$2])
  if test -n "[$]$1"; then
    # Found it, now check the version.
    AC_CACHE_CHECK([for modern $2],
                   [gcc_cv_prog_$2_modern],
                   [ac_prog_version=`eval [$]$1 $3 2>&1 |
                                     sed -n 's/^.*patsubst([[$4]],/,\/).*$/\1/p'`

                    [case $ac_prog_version in
                      '')  gcc_cv_prog_$2_modern=no;;
                      $5)  gcc_cv_prog_$2_modern=yes;;
                      *)   gcc_cv_prog_$2_modern=no;;
                    esac]
                   ])
  else
    gcc_cv_prog_$2_modern=no
  fi
  if test $gcc_cv_prog_$2_modern = no; then
    $1="${CONFIG_SHELL-/bin/sh} $ac_aux_dir/missing $2"
  fi
])

dnl Support the --with-pkgversion configure option.
dnl ACX_PKGVERSION(default-pkgversion)
AC_DEFUN([ACX_PKGVERSION],[
  AC_ARG_WITH(pkgversion,
    AS_HELP_STRING([--with-pkgversion=PKG],
                   [Use PKG in the version string in place of "$1"]),
    [case "$withval" in
      yes) AC_MSG_ERROR([package version not specified]) ;;
      no)  PKGVERSION= ;;
      *)   PKGVERSION="($withval) " ;;
     esac],
    PKGVERSION="($1) "
  )
  AC_SUBST(PKGVERSION)
])

dnl Support the --with-bugurl configure option.
dnl ACX_BUGURL(default-bugurl)
AC_DEFUN([ACX_BUGURL],[
  AC_ARG_WITH(bugurl,
    AS_HELP_STRING([--with-bugurl=URL],
                   [Direct users to URL to report a bug]),
    [case "$withval" in
      yes) AC_MSG_ERROR([bug URL not specified]) ;;
      no)  BUGURL=
	   ;;
      *)   BUGURL="$withval"
	   ;;
     esac],
     BUGURL="$1"
  )
  case ${BUGURL} in
  "")
    REPORT_BUGS_TO=
    REPORT_BUGS_TEXI=
    ;;
  *)
    REPORT_BUGS_TO="<$BUGURL>"
    REPORT_BUGS_TEXI=@uref{`echo "$BUGURL" | sed 's/@/@@/g'`}
    ;;
  esac;
  AC_SUBST(REPORT_BUGS_TO)
  AC_SUBST(REPORT_BUGS_TEXI)
])

dnl ####
dnl # ACX_CHECK_CYGWIN_CAT_WORKS
dnl # On Cygwin hosts, check that the cat command ignores 
dnl # carriage returns as otherwise builds will not work.
dnl # See binutils PR 4334 for more details.
AC_DEFUN([ACX_CHECK_CYGWIN_CAT_WORKS],[
AC_MSG_CHECKING([to see if cat works as expected])
echo a >cygwin-cat-check
if test `cat cygwin-cat-check` = a ; then
  rm cygwin-cat-check
  AC_MSG_RESULT(yes)
else
  rm cygwin-cat-check
  AC_MSG_RESULT(no)
  AC_MSG_ERROR([The cat command does not ignore carriage return characters.
  Please either mount the build directory in binary mode or run the following
  commands before running any configure script:
set -o igncr
export SHELLOPTS 
  ])
fi
])

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

# codeset.m4 serial AM1 (gettext-0.10.40)
dnl Copyright (C) 2000-2002 Free Software Foundation, Inc.
dnl This file is free software, distributed under the terms of the GNU
dnl General Public License.  As a special exception to the GNU General
dnl Public License, this file may be distributed as part of a program
dnl that contains a configuration script generated by Autoconf, under
dnl the same distribution terms as the rest of that program.

dnl From Bruno Haible.

AC_DEFUN([AM_LANGINFO_CODESET],
[
  AC_CACHE_CHECK([for nl_langinfo and CODESET], am_cv_langinfo_codeset,
    [AC_TRY_LINK([#include <langinfo.h>],
      [char* cs = nl_langinfo(CODESET);],
      am_cv_langinfo_codeset=yes,
      am_cv_langinfo_codeset=no)
    ])
  if test $am_cv_langinfo_codeset = yes; then
    AC_DEFINE(HAVE_LANGINFO_CODESET, 1,
      [Define if you have <langinfo.h> and nl_langinfo(CODESET).])
  fi
])


# Copyright (C) 1999, 2000, 2001, 2002, 2003, 2004, 2005, 2007
# Free Software Foundation, Inc.
#
# This file is free software; the Free Software Foundation
# gives unlimited permission to copy and/or distribute it,
# with or without modifications, as long as this notice is preserved.

# serial 8

# Based on depend.m4 from automake 1.9, modified for standalone use in
# an environment where GNU make is required. 

# ZW_PROG_COMPILER_DEPENDENCIES
# -----------------------------
# Variant of _AM_DEPENDENCIES which just does the dependency probe and
# sets fooDEPMODE accordingly.  Cache-variable compatible with
# original; not side-effect compatible.  As the users of this macro
# may require accurate dependencies for correct builds, it does *not*
# honor --disable-dependency-checking, and failure to detect a usable
# method is an error.  depcomp is assumed to be located in
# $ac_aux_dir.
#
# FIXME: Should use the Autoconf 2.5x language-selection mechanism.

AC_DEFUN([ZW_PROG_COMPILER_DEPENDENCIES],
[ifelse([$1], CC,   [depcc="$CC"   am_compiler_list=],
        [$1], CXX,  [depcc="$CXX"  am_compiler_list=],
        [$1], OBJC, [depcc="$OBJC" am_compiler_list='gcc3 gcc'],
        [$1], GCJ,  [depcc="$GCJ"  am_compiler_list='gcc3 gcc'],
                    [depcc="$$1"   am_compiler_list=])

am_depcomp=$ac_aux_dir/depcomp
AC_CACHE_CHECK([dependency style of $depcc],
               [am_cv_$1_dependencies_compiler_type],
[if test -f "$am_depcomp"; then
  # We make a subdir and do the tests there.  Otherwise we can end up
  # making bogus files that we don't know about and never remove.  For
  # instance it was reported that on HP-UX the gcc test will end up
  # making a dummy file named `D' -- because `-MD' means `put the output
  # in D'.
  mkdir conftest.dir
  # Copy depcomp to subdir because otherwise we won't find it if we're
  # using a relative directory.
  cp "$am_depcomp" conftest.dir
  cd conftest.dir
  # We will build objects and dependencies in a subdirectory because
  # it helps to detect inapplicable dependency modes.  For instance
  # both Tru64's cc and ICC support -MD to output dependencies as a
  # side effect of compilation, but ICC will put the dependencies in
  # the current directory while Tru64 will put them in the object
  # directory.
  mkdir sub

  am_cv_$1_dependencies_compiler_type=none
  if test "$am_compiler_list" = ""; then
     am_compiler_list=`sed -n ['s/^\([a-zA-Z0-9]*\))$/\1/p'] < ./depcomp`
  fi
  for depmode in $am_compiler_list; do
    if test $depmode = none; then break; fi

    _AS_ECHO([$as_me:$LINENO: trying $depmode], AS_MESSAGE_LOG_FD)
    # Setup a source with many dependencies, because some compilers
    # like to wrap large dependency lists on column 80 (with \), and
    # we should not choose a depcomp mode which is confused by this.
    #
    # We need to recreate these files for each test, as the compiler may
    # overwrite some of them when testing with obscure command lines.
    # This happens at least with the AIX C compiler.
    : > sub/conftest.c
    for i in 1 2 3 4 5 6; do
      echo '#include "conftst'$i'.h"' >> sub/conftest.c
      # Using `: > sub/conftst$i.h' creates only sub/conftst1.h with
      # Solaris 8's {/usr,}/bin/sh.
      touch sub/conftst$i.h
    done
    echo "include sub/conftest.Po" > confmf

    # We check with `-c' and `-o' for the sake of the "dashmstdout"
    # mode.  It turns out that the SunPro C++ compiler does not properly
    # handle `-M -o', and we need to detect this.
    depcmd="depmode=$depmode \
       source=sub/conftest.c object=sub/conftest.${OBJEXT-o} \
       depfile=sub/conftest.Po tmpdepfile=sub/conftest.TPo \
       $SHELL ./depcomp $depcc -c -o sub/conftest.${OBJEXT-o} sub/conftest.c"
    echo "| $depcmd" | sed -e 's/  */ /g' >&AS_MESSAGE_LOG_FD
    if env $depcmd > conftest.err 2>&1 &&
       grep sub/conftst6.h sub/conftest.Po >>conftest.err 2>&1 &&
       grep sub/conftest.${OBJEXT-o} sub/conftest.Po >>conftest.err 2>&1 &&
       ${MAKE-make} -s -f confmf >>conftest.err 2>&1; then
      # icc doesn't choke on unknown options, it will just issue warnings
      # or remarks (even with -Werror).  So we grep stderr for any message
      # that says an option was ignored or not supported.
      # When given -MP, icc 7.0 and 7.1 complain thusly:
      #   icc: Command line warning: ignoring option '-M'; no argument required
      # The diagnosis changed in icc 8.0:
      #   icc: Command line remark: option '-MP' not supported
      if (grep 'ignoring option' conftest.err ||
          grep 'not supported' conftest.err) >/dev/null 2>&1; then :; else
        am_cv_$1_dependencies_compiler_type=$depmode
	_AS_ECHO([$as_me:$LINENO: success], AS_MESSAGE_LOG_FD)
        break
      fi
    fi
    _AS_ECHO([$as_me:$LINENO: failure, diagnostics are:], AS_MESSAGE_LOG_FD)
    sed -e 's/^/| /' < conftest.err >&AS_MESSAGE_LOG_FD
  done

  cd ..
  rm -rf conftest.dir
else
  am_cv_$1_dependencies_compiler_type=none
fi
])
if test x${am_cv_$1_dependencies_compiler_type-none} = xnone
then AC_MSG_ERROR([no usable dependency style found])
else AC_SUBST([$1DEPMODE], [depmode=$am_cv_$1_dependencies_compiler_type])
fi
])

# AM_SET_DEPDIR
# -------------
# Choose a directory name for dependency files.
AC_DEFUN([AM_SET_DEPDIR],
[AC_REQUIRE([AM_SET_LEADING_DOT])dnl
AC_SUBST([DEPDIR], ["${am__leading_dot}deps"])dnl
])

# ZW_CREATE_DEPDIR
# ----------------
# As AM_SET_DEPDIR, but also create the directory at config.status time.
AC_DEFUN([ZW_CREATE_DEPDIR],
[AC_REQUIRE([AM_SET_DEPDIR])dnl
AC_CONFIG_COMMANDS([depdir], [$SHELL $ac_aux_dir/mkinstalldirs $DEPDIR],
			     [ac_aux_dir=$ac_aux_dir DEPDIR=$DEPDIR])
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


# intl sister-directory configuration rules.
#

# The idea behind this macro is that there's no need to repeat all the
# autoconf probes done by the intl directory - it's already done them
# for us.  In fact, there's no need even to look at the cache for the
# answers.  All we need to do is nab a few pieces of information.
# The intl directory is set up to make this easy, by generating a
# small file which can be sourced as a shell script; then we produce
# the necessary substitutions and definitions for this directory.

AC_DEFUN([ZW_GNU_GETTEXT_SISTER_DIR],
[# If we haven't got the data from the intl directory,
# assume NLS is disabled.
USE_NLS=no	AC_SUBST(USE_NLS)
LIBINTL=	AC_SUBST(LIBINTL)
LIBINTL_DEP=	AC_SUBST(LIBINTL_DEP)
INCINTL=	AC_SUBST(INCINTL)
XGETTEXT=	AC_SUBST(XGETTEXT)
GMSGFMT=	AC_SUBST(GMSGFMT)
POSUB=		AC_SUBST(POSUB)

if test -f  ifelse([$1],,[../intl],[$1])/config.intl; then
  .  ifelse([$1],,[../intl],[$1])/config.intl
fi
AC_MSG_CHECKING([whether NLS is requested])
if test x"$USE_NLS" != xyes; then
  AC_MSG_RESULT(no)
else
  AC_MSG_RESULT(yes)
  AC_DEFINE(ENABLE_NLS, 1, 
 [Define to 1 if translation of program messages to the 
  user's native language is requested.])

  AC_MSG_CHECKING(for catalogs to be installed)
  # Look for .po and .gmo files in the source directory.
  CATALOGS=  AC_SUBST(CATALOGS)
  XLINGUAS=
  for cat in $srcdir/po/*.gmo $srcdir/po/*.po; do
    # If there aren't any .gmo files the shell will give us the
    # literal string "../path/to/srcdir/po/*.gmo" which has to be
    # weeded out.
    case "$cat" in *\**)
      continue;;
    esac
    # The quadruple backslash is collapsed to a double backslash
    # by the backticks, then collapsed again by the double quotes,
    # leaving us with one backslash in the sed expression (right
    # before the dot that mustn't act as a wildcard).
    cat=`echo $cat | sed -e "s!$srcdir/po/!!" -e "s!\\\\.po!.gmo!"`
    lang=`echo $cat | sed -e "s!\\\\.gmo!!"`
    # The user is allowed to set LINGUAS to a list of languages to
    # install catalogs for.  If it's empty that means "all of them."
    if test "x$LINGUAS" = x; then
      CATALOGS="$CATALOGS $cat"
      XLINGUAS="$XLINGUAS $lang"
    else
      case "$LINGUAS" in *$lang*)
        CATALOGS="$CATALOGS $cat"
        XLINGUAS="$XLINGUAS $lang"
        ;;
      esac
    fi
  done
  LINGUAS="$XLINGUAS"
  AC_MSG_RESULT($LINGUAS)

  dnl Set up some additional variables which our po/Make-in files
  dnl may need.

  dnl For backward compatibility. Some Makefiles may be using these.
  DATADIRNAME=share
  AC_SUBST(DATADIRNAME)
  INSTOBJEXT=.mo
  AC_SUBST(INSTOBJEXT)
  GENCAT=gencat
  AC_SUBST(GENCAT)
  CATOBJEXT=.gmo
  AC_SUBST(CATOBJEXT)
fi])

# iconv.m4 serial AM4 (gettext-0.11.3)
dnl Copyright (C) 2000-2002 Free Software Foundation, Inc.
dnl This file is free software, distributed under the terms of the GNU
dnl General Public License.  As a special exception to the GNU General
dnl Public License, this file may be distributed as part of a program
dnl that contains a configuration script generated by Autoconf, under
dnl the same distribution terms as the rest of that program.

dnl From Bruno Haible.

AC_DEFUN([AM_ICONV_LINKFLAGS_BODY],
[
  dnl Prerequisites of AC_LIB_LINKFLAGS_BODY.
  AC_REQUIRE([AC_LIB_PREPARE_PREFIX])
  AC_REQUIRE([AC_LIB_RPATH])

  dnl Search for libiconv and define LIBICONV, LTLIBICONV and INCICONV
  dnl accordingly.
  AC_LIB_LINKFLAGS_BODY([iconv])
])

AC_DEFUN([AM_ICONV_LINK],
[
  dnl Some systems have iconv in libc, some have it in libiconv (OSF/1 and
  dnl those with the standalone portable GNU libiconv installed).

  dnl Search for libiconv and define LIBICONV, LTLIBICONV and INCICONV
  dnl accordingly.
  AC_REQUIRE([AM_ICONV_LINKFLAGS_BODY])

  dnl Add $INCICONV to CPPFLAGS before performing the following checks,
  dnl because if the user has installed libiconv and not disabled its use
  dnl via --without-libiconv-prefix, he wants to use it. The first
  dnl AC_TRY_LINK will then fail, the second AC_TRY_LINK will succeed.
  am_save_CPPFLAGS="$CPPFLAGS"
  AC_LIB_APPENDTOVAR([CPPFLAGS], [$INCICONV])

  AC_CACHE_CHECK(for iconv, am_cv_func_iconv, [
    am_cv_func_iconv="no, consider installing GNU libiconv"
    am_cv_lib_iconv=no
    AC_TRY_LINK([#include <stdlib.h>
#include <iconv.h>],
      [iconv_t cd = iconv_open("","");
       iconv(cd,NULL,NULL,NULL,NULL);
       iconv_close(cd);],
      am_cv_func_iconv=yes)
    if test "$am_cv_func_iconv" != yes; then
      am_save_LIBS="$LIBS"
      LIBS="$LIBS $LIBICONV"
      AC_TRY_LINK([#include <stdlib.h>
#include <iconv.h>],
        [iconv_t cd = iconv_open("","");
         iconv(cd,NULL,NULL,NULL,NULL);
         iconv_close(cd);],
        am_cv_lib_iconv=yes
        am_cv_func_iconv=yes)
      LIBS="$am_save_LIBS"
    fi
  ])
  if test "$am_cv_func_iconv" = yes; then
    AC_DEFINE(HAVE_ICONV, 1, [Define if you have the iconv() function.])
  fi
  if test "$am_cv_lib_iconv" = yes; then
    AC_MSG_CHECKING([how to link with libiconv])
    AC_MSG_RESULT([$LIBICONV])
  else
    dnl If $LIBICONV didn't lead to a usable library, we don't need $INCICONV
    dnl either.
    CPPFLAGS="$am_save_CPPFLAGS"
    LIBICONV=
    LTLIBICONV=
  fi
  AC_SUBST(LIBICONV)
  AC_SUBST(LTLIBICONV)
])

AC_DEFUN([AM_ICONV],
[
  AM_ICONV_LINK
  if test "$am_cv_func_iconv" = yes; then
    AC_MSG_CHECKING([for iconv declaration])
    AC_CACHE_VAL(am_cv_proto_iconv, [
      AC_TRY_COMPILE([
#include <stdlib.h>
#include <iconv.h>
extern
#ifdef __cplusplus
"C"
#endif
#if defined(__STDC__) || defined(__cplusplus)
size_t iconv (iconv_t cd, char * *inbuf, size_t *inbytesleft, char * *outbuf, size_t *outbytesleft);
#else
size_t iconv();
#endif
], [], am_cv_proto_iconv_arg1="", am_cv_proto_iconv_arg1="const")
      am_cv_proto_iconv="extern size_t iconv (iconv_t cd, $am_cv_proto_iconv_arg1 char * *inbuf, size_t *inbytesleft, char * *outbuf, size_t *outbytesleft);"])
    am_cv_proto_iconv=`echo "[$]am_cv_proto_iconv" | tr -s ' ' | sed -e 's/( /(/'`
    AC_MSG_RESULT([$]{ac_t:-
         }[$]am_cv_proto_iconv)
    AC_DEFINE_UNQUOTED(ICONV_CONST, $am_cv_proto_iconv_arg1,
      [Define as const if the declaration of iconv() needs const.])
  fi
])

#                                                          -*- Autoconf -*-
# Copyright (C) 2003, 2009  Free Software Foundation, Inc.

# This program is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation; either version 3, or (at your option)
# any later version.

# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.

# You should have received a copy of the GNU General Public License
# along with this program; see the file COPYING3.  If not see
# <http://www.gnu.org/licenses/>.

# serial 1

# Check whether the underlying file-system supports filenames
# with a leading dot.  For instance MS-DOS doesn't.
AC_DEFUN([AM_SET_LEADING_DOT],
[rm -rf .tst 2>/dev/null
mkdir .tst 2>/dev/null
if test -d .tst; then
  am__leading_dot=.
else
  am__leading_dot=_
fi
rmdir .tst 2>/dev/null
AC_SUBST([am__leading_dot])])

# lib-ld.m4 serial 2 (gettext-0.12)
dnl Copyright (C) 1996-2003 Free Software Foundation, Inc.
dnl This file is free software, distributed under the terms of the GNU
dnl General Public License.  As a special exception to the GNU General
dnl Public License, this file may be distributed as part of a program
dnl that contains a configuration script generated by Autoconf, under
dnl the same distribution terms as the rest of that program.

dnl Subroutines of libtool.m4,
dnl with replacements s/AC_/AC_LIB/ and s/lt_cv/acl_cv/ to avoid collision
dnl with libtool.m4.

dnl From libtool-1.4. Sets the variable with_gnu_ld to yes or no.
AC_DEFUN([AC_LIB_PROG_LD_GNU],
[AC_CACHE_CHECK([if the linker ($LD) is GNU ld], acl_cv_prog_gnu_ld,
[# I'd rather use --version here, but apparently some GNU ld's only accept -v.
if $LD -v 2>&1 </dev/null | egrep '(GNU|with BFD)' 1>&5; then
  acl_cv_prog_gnu_ld=yes
else
  acl_cv_prog_gnu_ld=no
fi])
with_gnu_ld=$acl_cv_prog_gnu_ld
])

dnl From libtool-1.4. Sets the variable LD.
AC_DEFUN([AC_LIB_PROG_LD],
[AC_ARG_WITH(gnu-ld,
[  --with-gnu-ld           assume the C compiler uses GNU ld [default=no]],
test "$withval" = no || with_gnu_ld=yes, with_gnu_ld=no)
AC_REQUIRE([AC_PROG_CC])dnl
AC_REQUIRE([AC_CANONICAL_HOST])dnl
# Prepare PATH_SEPARATOR.
# The user is always right.
if test "${PATH_SEPARATOR+set}" != set; then
  echo "#! /bin/sh" >conf$$.sh
  echo  "exit 0"   >>conf$$.sh
  chmod +x conf$$.sh
  if (PATH="/nonexistent;."; conf$$.sh) >/dev/null 2>&1; then
    PATH_SEPARATOR=';'
  else
    PATH_SEPARATOR=:
  fi
  rm -f conf$$.sh
fi
ac_prog=ld
if test "$GCC" = yes; then
  # Check if gcc -print-prog-name=ld gives a path.
  AC_MSG_CHECKING([for ld used by GCC])
  case $host in
  *-*-mingw*)
    # gcc leaves a trailing carriage return which upsets mingw
    ac_prog=`($CC -print-prog-name=ld) 2>&5 | tr -d '\015'` ;;
  *)
    ac_prog=`($CC -print-prog-name=ld) 2>&5` ;;
  esac
  case $ac_prog in
    # Accept absolute paths.
    [[\\/]* | [A-Za-z]:[\\/]*)]
      [re_direlt='/[^/][^/]*/\.\./']
      # Canonicalize the path of ld
      ac_prog=`echo $ac_prog| sed 's%\\\\%/%g'`
      while echo $ac_prog | grep "$re_direlt" > /dev/null 2>&1; do
	ac_prog=`echo $ac_prog| sed "s%$re_direlt%/%"`
      done
      test -z "$LD" && LD="$ac_prog"
      ;;
  "")
    # If it fails, then pretend we aren't using GCC.
    ac_prog=ld
    ;;
  *)
    # If it is relative, then search for the first ld in PATH.
    with_gnu_ld=unknown
    ;;
  esac
elif test "$with_gnu_ld" = yes; then
  AC_MSG_CHECKING([for GNU ld])
else
  AC_MSG_CHECKING([for non-GNU ld])
fi
AC_CACHE_VAL(acl_cv_path_LD,
[if test -z "$LD"; then
  IFS="${IFS= 	}"; ac_save_ifs="$IFS"; IFS="${IFS}${PATH_SEPARATOR-:}"
  for ac_dir in $PATH; do
    test -z "$ac_dir" && ac_dir=.
    if test -f "$ac_dir/$ac_prog" || test -f "$ac_dir/$ac_prog$ac_exeext"; then
      acl_cv_path_LD="$ac_dir/$ac_prog"
      # Check to see if the program is GNU ld.  I'd rather use --version,
      # but apparently some GNU ld's only accept -v.
      # Break only if it was the GNU/non-GNU ld that we prefer.
      if "$acl_cv_path_LD" -v 2>&1 < /dev/null | egrep '(GNU|with BFD)' > /dev/null; then
	test "$with_gnu_ld" != no && break
      else
	test "$with_gnu_ld" != yes && break
      fi
    fi
  done
  IFS="$ac_save_ifs"
else
  acl_cv_path_LD="$LD" # Let the user override the test with a path.
fi])
LD="$acl_cv_path_LD"
if test -n "$LD"; then
  AC_MSG_RESULT($LD)
else
  AC_MSG_RESULT(no)
fi
test -z "$LD" && AC_MSG_ERROR([no acceptable ld found in \$PATH])
AC_LIB_PROG_LD_GNU
])

# lib-link.m4 serial 4 (gettext-0.12)
dnl Copyright (C) 2001-2003 Free Software Foundation, Inc.
dnl This file is free software, distributed under the terms of the GNU
dnl General Public License.  As a special exception to the GNU General
dnl Public License, this file may be distributed as part of a program
dnl that contains a configuration script generated by Autoconf, under
dnl the same distribution terms as the rest of that program.

dnl From Bruno Haible.

dnl AC_LIB_LINKFLAGS(name [, dependencies]) searches for libname and
dnl the libraries corresponding to explicit and implicit dependencies.
dnl Sets and AC_SUBSTs the LIB${NAME} and LTLIB${NAME} variables and
dnl augments the CPPFLAGS variable.
AC_DEFUN([AC_LIB_LINKFLAGS],
[
  AC_REQUIRE([AC_LIB_PREPARE_PREFIX])
  AC_REQUIRE([AC_LIB_RPATH])
  define([Name],[translit([$1],[./-], [___])])
  define([NAME],[translit([$1],[abcdefghijklmnopqrstuvwxyz./-],
                               [ABCDEFGHIJKLMNOPQRSTUVWXYZ___])])
  AC_CACHE_CHECK([how to link with lib[]$1], [ac_cv_lib[]Name[]_libs], [
    AC_LIB_LINKFLAGS_BODY([$1], [$2])
    ac_cv_lib[]Name[]_libs="$LIB[]NAME"
    ac_cv_lib[]Name[]_ltlibs="$LTLIB[]NAME"
    ac_cv_lib[]Name[]_cppflags="$INC[]NAME"
  ])
  LIB[]NAME="$ac_cv_lib[]Name[]_libs"
  LTLIB[]NAME="$ac_cv_lib[]Name[]_ltlibs"
  INC[]NAME="$ac_cv_lib[]Name[]_cppflags"
  AC_LIB_APPENDTOVAR([CPPFLAGS], [$INC]NAME)
  AC_SUBST([LIB]NAME)
  AC_SUBST([LTLIB]NAME)
  dnl Also set HAVE_LIB[]NAME so that AC_LIB_HAVE_LINKFLAGS can reuse the
  dnl results of this search when this library appears as a dependency.
  HAVE_LIB[]NAME=yes
  undefine([Name])
  undefine([NAME])
])

dnl AC_LIB_HAVE_LINKFLAGS(name, dependencies, includes, testcode)
dnl searches for libname and the libraries corresponding to explicit and
dnl implicit dependencies, together with the specified include files and
dnl the ability to compile and link the specified testcode. If found, it
dnl sets and AC_SUBSTs HAVE_LIB${NAME}=yes and the LIB${NAME} and
dnl LTLIB${NAME} variables and augments the CPPFLAGS variable, and
dnl #defines HAVE_LIB${NAME} to 1. Otherwise, it sets and AC_SUBSTs
dnl HAVE_LIB${NAME}=no and LIB${NAME} and LTLIB${NAME} to empty.
AC_DEFUN([AC_LIB_HAVE_LINKFLAGS],
[
  AC_REQUIRE([AC_LIB_PREPARE_PREFIX])
  AC_REQUIRE([AC_LIB_RPATH])
  define([Name],[translit([$1],[./-], [___])])
  define([NAME],[translit([$1],[abcdefghijklmnopqrstuvwxyz./-],
                               [ABCDEFGHIJKLMNOPQRSTUVWXYZ___])])

  dnl Search for lib[]Name and define LIB[]NAME, LTLIB[]NAME and INC[]NAME
  dnl accordingly.
  AC_LIB_LINKFLAGS_BODY([$1], [$2])

  dnl Add $INC[]NAME to CPPFLAGS before performing the following checks,
  dnl because if the user has installed lib[]Name and not disabled its use
  dnl via --without-lib[]Name-prefix, he wants to use it.
  ac_save_CPPFLAGS="$CPPFLAGS"
  AC_LIB_APPENDTOVAR([CPPFLAGS], [$INC]NAME)

  AC_CACHE_CHECK([for lib[]$1], [ac_cv_lib[]Name], [
    ac_save_LIBS="$LIBS"
    LIBS="$LIBS $LIB[]NAME"
    AC_TRY_LINK([$3], [$4], [ac_cv_lib[]Name=yes], [ac_cv_lib[]Name=no])
    LIBS="$ac_save_LIBS"
  ])
  if test "$ac_cv_lib[]Name" = yes; then
    HAVE_LIB[]NAME=yes
    AC_DEFINE([HAVE_LIB]NAME, 1, [Define if you have the $1 library.])
    AC_MSG_CHECKING([how to link with lib[]$1])
    AC_MSG_RESULT([$LIB[]NAME])
  else
    HAVE_LIB[]NAME=no
    dnl If $LIB[]NAME didn't lead to a usable library, we don't need
    dnl $INC[]NAME either.
    CPPFLAGS="$ac_save_CPPFLAGS"
    LIB[]NAME=
    LTLIB[]NAME=
  fi
  AC_SUBST([HAVE_LIB]NAME)
  AC_SUBST([LIB]NAME)
  AC_SUBST([LTLIB]NAME)
  undefine([Name])
  undefine([NAME])
])

dnl Determine the platform dependent parameters needed to use rpath:
dnl libext, shlibext, hardcode_libdir_flag_spec, hardcode_libdir_separator,
dnl hardcode_direct, hardcode_minus_L.
AC_DEFUN([AC_LIB_RPATH],
[
  AC_REQUIRE([AC_PROG_CC])                dnl we use $CC, $GCC, $LDFLAGS
  AC_REQUIRE([AC_LIB_PROG_LD])            dnl we use $LD, $with_gnu_ld
  AC_REQUIRE([AC_CANONICAL_HOST])         dnl we use $host
  AC_REQUIRE([AC_CONFIG_AUX_DIR_DEFAULT]) dnl we use $ac_aux_dir
  AC_CACHE_CHECK([for shared library run path origin], acl_cv_rpath, [
    CC="$CC" GCC="$GCC" LDFLAGS="$LDFLAGS" LD="$LD" with_gnu_ld="$with_gnu_ld" \
    ${CONFIG_SHELL-/bin/sh} "$ac_aux_dir/config.rpath" "$host" > conftest.sh
    . ./conftest.sh
    rm -f ./conftest.sh
    acl_cv_rpath=done
  ])
  wl="$acl_cv_wl"
  libext="$acl_cv_libext"
  shlibext="$acl_cv_shlibext"
  hardcode_libdir_flag_spec="$acl_cv_hardcode_libdir_flag_spec"
  hardcode_libdir_separator="$acl_cv_hardcode_libdir_separator"
  hardcode_direct="$acl_cv_hardcode_direct"
  hardcode_minus_L="$acl_cv_hardcode_minus_L"
  dnl Determine whether the user wants rpath handling at all.
  AC_ARG_ENABLE(rpath,
    [  --disable-rpath         do not hardcode runtime library paths],
    :, enable_rpath=yes)
])

dnl AC_LIB_LINKFLAGS_BODY(name [, dependencies]) searches for libname and
dnl the libraries corresponding to explicit and implicit dependencies.
dnl Sets the LIB${NAME}, LTLIB${NAME} and INC${NAME} variables.
AC_DEFUN([AC_LIB_LINKFLAGS_BODY],
[
  define([NAME],[translit([$1],[abcdefghijklmnopqrstuvwxyz./-],
                               [ABCDEFGHIJKLMNOPQRSTUVWXYZ___])])
  dnl By default, look in $includedir and $libdir.
  use_additional=yes
  AC_LIB_WITH_FINAL_PREFIX([
    eval additional_includedir=\"$includedir\"
    eval additional_libdir=\"$libdir\"
  ])
  AC_LIB_ARG_WITH([lib$1-prefix],
[  --with-lib$1-prefix[=DIR]  search for lib$1 in DIR/include and DIR/lib
  --without-lib$1-prefix     don't search for lib$1 in includedir and libdir],
[
    if test "X$withval" = "Xno"; then
      use_additional=no
    else
      if test "X$withval" = "X"; then
        AC_LIB_WITH_FINAL_PREFIX([
          eval additional_includedir=\"$includedir\"
          eval additional_libdir=\"$libdir\"
        ])
      else
        additional_includedir="$withval/include"
        additional_libdir="$withval/lib"
      fi
    fi
])
  AC_LIB_ARG_WITH([lib$1-type],
[  --with-lib$1-type=TYPE     type of library to search for (auto/static/shared) ],
  [ with_lib$1_type=$withval ], [ with_lib$1_type=auto ])
  lib_type=`eval echo \$with_lib$1_type`

  dnl Search the library and its dependencies in $additional_libdir and
  dnl $LDFLAGS. Using breadth-first-seach.
  LIB[]NAME=
  LTLIB[]NAME=
  INC[]NAME=
  rpathdirs=
  ltrpathdirs=
  names_already_handled=
  names_next_round='$1 $2'
  while test -n "$names_next_round"; do
    names_this_round="$names_next_round"
    names_next_round=
    for name in $names_this_round; do
      already_handled=
      for n in $names_already_handled; do
        if test "$n" = "$name"; then
          already_handled=yes
          break
        fi
      done
      if test -z "$already_handled"; then
        names_already_handled="$names_already_handled $name"
        dnl See if it was already located by an earlier AC_LIB_LINKFLAGS
        dnl or AC_LIB_HAVE_LINKFLAGS call.
        uppername=`echo "$name" | sed -e 'y|abcdefghijklmnopqrstuvwxyz./-|ABCDEFGHIJKLMNOPQRSTUVWXYZ___|'`
        eval value=\"\$HAVE_LIB$uppername\"
        if test -n "$value"; then
          if test "$value" = yes; then
            eval value=\"\$LIB$uppername\"
            test -z "$value" || LIB[]NAME="${LIB[]NAME}${LIB[]NAME:+ }$value"
            eval value=\"\$LTLIB$uppername\"
            test -z "$value" || LTLIB[]NAME="${LTLIB[]NAME}${LTLIB[]NAME:+ }$value"
          else
            dnl An earlier call to AC_LIB_HAVE_LINKFLAGS has determined
            dnl that this library doesn't exist. So just drop it.
            :
          fi
        else
          dnl Search the library lib$name in $additional_libdir and $LDFLAGS
          dnl and the already constructed $LIBNAME/$LTLIBNAME.
          found_dir=
          found_la=
          found_so=
          found_a=
          if test $use_additional = yes; then
            if test -n "$shlibext" && test -f "$additional_libdir/lib$name.$shlibext" && test x$lib_type != xstatic; then
              found_dir="$additional_libdir"
              found_so="$additional_libdir/lib$name.$shlibext"
              if test -f "$additional_libdir/lib$name.la"; then
                found_la="$additional_libdir/lib$name.la"
              fi
            elif test x$lib_type != xshared; then
              if test -f "$additional_libdir/lib$name.$libext"; then
                found_dir="$additional_libdir"
                found_a="$additional_libdir/lib$name.$libext"
                if test -f "$additional_libdir/lib$name.la"; then
                  found_la="$additional_libdir/lib$name.la"
                fi
              fi
            fi
          fi
          if test "X$found_dir" = "X"; then
            for x in $LDFLAGS $LTLIB[]NAME; do
              AC_LIB_WITH_FINAL_PREFIX([eval x=\"$x\"])
              case "$x" in
                -L*)
                  dir=`echo "X$x" | sed -e 's/^X-L//'`
                  if test -n "$shlibext" && test -f "$dir/lib$name.$shlibext" && test x$lib_type != xstatic; then
                    found_dir="$dir"
                    found_so="$dir/lib$name.$shlibext"
                    if test -f "$dir/lib$name.la"; then
                      found_la="$dir/lib$name.la"
                    fi
                  elif test x$lib_type != xshared; then
                    if test -f "$dir/lib$name.$libext"; then
                      found_dir="$dir"
                      found_a="$dir/lib$name.$libext"
                      if test -f "$dir/lib$name.la"; then
                        found_la="$dir/lib$name.la"
                      fi
                    fi
                  fi
                  ;;
              esac
              if test "X$found_dir" != "X"; then
                break
              fi
            done
          fi
          if test "X$found_dir" != "X"; then
            dnl Found the library.
            LTLIB[]NAME="${LTLIB[]NAME}${LTLIB[]NAME:+ }-L$found_dir -l$name"
            if test "X$found_so" != "X"; then
              dnl Linking with a shared library. We attempt to hardcode its
              dnl directory into the executable's runpath, unless it's the
              dnl standard /usr/lib.
              if test "$enable_rpath" = no || test "X$found_dir" = "X/usr/lib"; then
                dnl No hardcoding is needed.
                LIB[]NAME="${LIB[]NAME}${LIB[]NAME:+ }$found_so"
              else
                dnl Use an explicit option to hardcode DIR into the resulting
                dnl binary.
                dnl Potentially add DIR to ltrpathdirs.
                dnl The ltrpathdirs will be appended to $LTLIBNAME at the end.
                haveit=
                for x in $ltrpathdirs; do
                  if test "X$x" = "X$found_dir"; then
                    haveit=yes
                    break
                  fi
                done
                if test -z "$haveit"; then
                  ltrpathdirs="$ltrpathdirs $found_dir"
                fi
                dnl The hardcoding into $LIBNAME is system dependent.
                if test "$hardcode_direct" = yes; then
                  dnl Using DIR/libNAME.so during linking hardcodes DIR into the
                  dnl resulting binary.
                  LIB[]NAME="${LIB[]NAME}${LIB[]NAME:+ }$found_so"
                else
                  if test -n "$hardcode_libdir_flag_spec" && test "$hardcode_minus_L" = no; then
                    dnl Use an explicit option to hardcode DIR into the resulting
                    dnl binary.
                    LIB[]NAME="${LIB[]NAME}${LIB[]NAME:+ }$found_so"
                    dnl Potentially add DIR to rpathdirs.
                    dnl The rpathdirs will be appended to $LIBNAME at the end.
                    haveit=
                    for x in $rpathdirs; do
                      if test "X$x" = "X$found_dir"; then
                        haveit=yes
                        break
                      fi
                    done
                    if test -z "$haveit"; then
                      rpathdirs="$rpathdirs $found_dir"
                    fi
                  else
                    dnl Rely on "-L$found_dir".
                    dnl But don't add it if it's already contained in the LDFLAGS
                    dnl or the already constructed $LIBNAME
                    haveit=
                    for x in $LDFLAGS $LIB[]NAME; do
                      AC_LIB_WITH_FINAL_PREFIX([eval x=\"$x\"])
                      if test "X$x" = "X-L$found_dir"; then
                        haveit=yes
                        break
                      fi
                    done
                    if test -z "$haveit"; then
                      LIB[]NAME="${LIB[]NAME}${LIB[]NAME:+ }-L$found_dir"
                    fi
                    if test "$hardcode_minus_L" != no; then
                      dnl FIXME: Not sure whether we should use
                      dnl "-L$found_dir -l$name" or "-L$found_dir $found_so"
                      dnl here.
                      LIB[]NAME="${LIB[]NAME}${LIB[]NAME:+ }$found_so"
                    else
                      dnl We cannot use $hardcode_runpath_var and LD_RUN_PATH
                      dnl here, because this doesn't fit in flags passed to the
                      dnl compiler. So give up. No hardcoding. This affects only
                      dnl very old systems.
                      dnl FIXME: Not sure whether we should use
                      dnl "-L$found_dir -l$name" or "-L$found_dir $found_so"
                      dnl here.
                      LIB[]NAME="${LIB[]NAME}${LIB[]NAME:+ }-l$name"
                    fi
                  fi
                fi
              fi
            else
              if test "X$found_a" != "X"; then
                dnl Linking with a static library.
                LIB[]NAME="${LIB[]NAME}${LIB[]NAME:+ }$found_a"
              else
                dnl We shouldn't come here, but anyway it's good to have a
                dnl fallback.
                LIB[]NAME="${LIB[]NAME}${LIB[]NAME:+ }-L$found_dir -l$name"
              fi
            fi
            dnl Assume the include files are nearby.
            additional_includedir=
            case "$found_dir" in
              */lib | */lib/)
                basedir=`echo "X$found_dir" | sed -e 's,^X,,' -e 's,/lib/*$,,'`
                additional_includedir="$basedir/include"
                ;;
            esac
            if test "X$additional_includedir" != "X"; then
              dnl Potentially add $additional_includedir to $INCNAME.
              dnl But don't add it
              dnl   1. if it's the standard /usr/include,
              dnl   2. if it's /usr/local/include and we are using GCC on Linux,
              dnl   3. if it's already present in $CPPFLAGS or the already
              dnl      constructed $INCNAME,
              dnl   4. if it doesn't exist as a directory.
              if test "X$additional_includedir" != "X/usr/include"; then
                haveit=
                if test "X$additional_includedir" = "X/usr/local/include"; then
                  if test -n "$GCC"; then
                    case $host_os in
                      linux*) haveit=yes;;
                    esac
                  fi
                fi
                if test -z "$haveit"; then
                  for x in $CPPFLAGS $INC[]NAME; do
                    AC_LIB_WITH_FINAL_PREFIX([eval x=\"$x\"])
                    if test "X$x" = "X-I$additional_includedir"; then
                      haveit=yes
                      break
                    fi
                  done
                  if test -z "$haveit"; then
                    if test -d "$additional_includedir"; then
                      dnl Really add $additional_includedir to $INCNAME.
                      INC[]NAME="${INC[]NAME}${INC[]NAME:+ }-I$additional_includedir"
                    fi
                  fi
                fi
              fi
            fi
            dnl Look for dependencies.
            if test -n "$found_la"; then
              dnl Read the .la file. It defines the variables
              dnl dlname, library_names, old_library, dependency_libs, current,
              dnl age, revision, installed, dlopen, dlpreopen, libdir.
              save_libdir="$libdir"
              case "$found_la" in
                */* | *\\*) . "$found_la" ;;
                *) . "./$found_la" ;;
              esac
              libdir="$save_libdir"
              dnl We use only dependency_libs.
              for dep in $dependency_libs; do
                case "$dep" in
                  -L*)
                    additional_libdir=`echo "X$dep" | sed -e 's/^X-L//'`
                    dnl Potentially add $additional_libdir to $LIBNAME and $LTLIBNAME.
                    dnl But don't add it
                    dnl   1. if it's the standard /usr/lib,
                    dnl   2. if it's /usr/local/lib and we are using GCC on Linux,
                    dnl   3. if it's already present in $LDFLAGS or the already
                    dnl      constructed $LIBNAME,
                    dnl   4. if it doesn't exist as a directory.
                    if test "X$additional_libdir" != "X/usr/lib"; then
                      haveit=
                      if test "X$additional_libdir" = "X/usr/local/lib"; then
                        if test -n "$GCC"; then
                          case $host_os in
                            linux*) haveit=yes;;
                          esac
                        fi
                      fi
                      if test -z "$haveit"; then
                        haveit=
                        for x in $LDFLAGS $LIB[]NAME; do
                          AC_LIB_WITH_FINAL_PREFIX([eval x=\"$x\"])
                          if test "X$x" = "X-L$additional_libdir"; then
                            haveit=yes
                            break
                          fi
                        done
                        if test -z "$haveit"; then
                          if test -d "$additional_libdir"; then
                            dnl Really add $additional_libdir to $LIBNAME.
                            LIB[]NAME="${LIB[]NAME}${LIB[]NAME:+ }-L$additional_libdir"
                          fi
                        fi
                        haveit=
                        for x in $LDFLAGS $LTLIB[]NAME; do
                          AC_LIB_WITH_FINAL_PREFIX([eval x=\"$x\"])
                          if test "X$x" = "X-L$additional_libdir"; then
                            haveit=yes
                            break
                          fi
                        done
                        if test -z "$haveit"; then
                          if test -d "$additional_libdir"; then
                            dnl Really add $additional_libdir to $LTLIBNAME.
                            LTLIB[]NAME="${LTLIB[]NAME}${LTLIB[]NAME:+ }-L$additional_libdir"
                          fi
                        fi
                      fi
                    fi
                    ;;
                  -R*)
                    dir=`echo "X$dep" | sed -e 's/^X-R//'`
                    if test "$enable_rpath" != no; then
                      dnl Potentially add DIR to rpathdirs.
                      dnl The rpathdirs will be appended to $LIBNAME at the end.
                      haveit=
                      for x in $rpathdirs; do
                        if test "X$x" = "X$dir"; then
                          haveit=yes
                          break
                        fi
                      done
                      if test -z "$haveit"; then
                        rpathdirs="$rpathdirs $dir"
                      fi
                      dnl Potentially add DIR to ltrpathdirs.
                      dnl The ltrpathdirs will be appended to $LTLIBNAME at the end.
                      haveit=
                      for x in $ltrpathdirs; do
                        if test "X$x" = "X$dir"; then
                          haveit=yes
                          break
                        fi
                      done
                      if test -z "$haveit"; then
                        ltrpathdirs="$ltrpathdirs $dir"
                      fi
                    fi
                    ;;
                  -l*)
                    dnl Handle this in the next round.
                    names_next_round="$names_next_round "`echo "X$dep" | sed -e 's/^X-l//'`
                    ;;
                  *.la)
                    dnl Handle this in the next round. Throw away the .la's
                    dnl directory; it is already contained in a preceding -L
                    dnl option.
                    names_next_round="$names_next_round "`echo "X$dep" | sed -e 's,^X.*/,,' -e 's,^lib,,' -e 's,\.la$,,'`
                    ;;
                  *)
                    dnl Most likely an immediate library name.
                    LIB[]NAME="${LIB[]NAME}${LIB[]NAME:+ }$dep"
                    LTLIB[]NAME="${LTLIB[]NAME}${LTLIB[]NAME:+ }$dep"
                    ;;
                esac
              done
            fi
          else
            dnl Didn't find the library; assume it is in the system directories
            dnl known to the linker and runtime loader. (All the system
            dnl directories known to the linker should also be known to the
            dnl runtime loader, otherwise the system is severely misconfigured.)
            if test "x$lib_type" = "xauto" || test "x$lib_type" = "xshared"; then
              LIB[]NAME="${LIB[]NAME}${LIB[]NAME:+ }-l$name"
              LTLIB[]NAME="${LTLIB[]NAME}${LTLIB[]NAME:+ }-l$name"
            else
              LIB[]NAME="${LIB[]NAME}${LIB[]NAME:+ }-l:lib$name.$libext"
              LTLIB[]NAME="${LTLIB[]NAME}${LTLIB[]NAME:+ }-l:lib$name.$libext"
            fi
          fi
        fi
      fi
    done
  done
  if test "X$rpathdirs" != "X"; then
    if test -n "$hardcode_libdir_separator"; then
      dnl Weird platform: only the last -rpath option counts, the user must
      dnl pass all path elements in one option. We can arrange that for a
      dnl single library, but not when more than one $LIBNAMEs are used.
      alldirs=
      for found_dir in $rpathdirs; do
        alldirs="${alldirs}${alldirs:+$hardcode_libdir_separator}$found_dir"
      done
      dnl Note: hardcode_libdir_flag_spec uses $libdir and $wl.
      acl_save_libdir="$libdir"
      libdir="$alldirs"
      eval flag=\"$hardcode_libdir_flag_spec\"
      libdir="$acl_save_libdir"
      LIB[]NAME="${LIB[]NAME}${LIB[]NAME:+ }$flag"
    else
      dnl The -rpath options are cumulative.
      for found_dir in $rpathdirs; do
        acl_save_libdir="$libdir"
        libdir="$found_dir"
        eval flag=\"$hardcode_libdir_flag_spec\"
        libdir="$acl_save_libdir"
        LIB[]NAME="${LIB[]NAME}${LIB[]NAME:+ }$flag"
      done
    fi
  fi
  if test "X$ltrpathdirs" != "X"; then
    dnl When using libtool, the option that works for both libraries and
    dnl executables is -R. The -R options are cumulative.
    for found_dir in $ltrpathdirs; do
      LTLIB[]NAME="${LTLIB[]NAME}${LTLIB[]NAME:+ }-R$found_dir"
    done
  fi
])

dnl AC_LIB_APPENDTOVAR(VAR, CONTENTS) appends the elements of CONTENTS to VAR,
dnl unless already present in VAR.
dnl Works only for CPPFLAGS, not for LIB* variables because that sometimes
dnl contains two or three consecutive elements that belong together.
AC_DEFUN([AC_LIB_APPENDTOVAR],
[
  for element in [$2]; do
    haveit=
    for x in $[$1]; do
      AC_LIB_WITH_FINAL_PREFIX([eval x=\"$x\"])
      if test "X$x" = "X$element"; then
        haveit=yes
        break
      fi
    done
    if test -z "$haveit"; then
      [$1]="${[$1]}${[$1]:+ }$element"
    fi
  done
])

# lib-prefix.m4 serial 2 (gettext-0.12)
dnl Copyright (C) 2001-2003 Free Software Foundation, Inc.
dnl This file is free software, distributed under the terms of the GNU
dnl General Public License.  As a special exception to the GNU General
dnl Public License, this file may be distributed as part of a program
dnl that contains a configuration script generated by Autoconf, under
dnl the same distribution terms as the rest of that program.

dnl From Bruno Haible.

dnl AC_LIB_ARG_WITH is synonymous to AC_ARG_WITH in autoconf-2.13, and
dnl similar to AC_ARG_WITH in autoconf 2.52...2.57 except that is doesn't
dnl require excessive bracketing.
ifdef([AC_HELP_STRING],
[AC_DEFUN([AC_LIB_ARG_WITH], [AC_ARG_WITH([$1],[[$2]],[$3],[$4])])],
[AC_DEFUN([AC_LIB_ARG_WITH], [AC_ARG_WITH([$1],[$2],[$3],[$4])])])

dnl AC_LIB_PREFIX adds to the CPPFLAGS and LDFLAGS the flags that are needed
dnl to access previously installed libraries. The basic assumption is that
dnl a user will want packages to use other packages he previously installed
dnl with the same --prefix option.
dnl This macro is not needed if only AC_LIB_LINKFLAGS is used to locate
dnl libraries, but is otherwise very convenient.
AC_DEFUN([AC_LIB_PREFIX],
[
  AC_BEFORE([$0], [AC_LIB_LINKFLAGS])
  AC_REQUIRE([AC_PROG_CC])
  AC_REQUIRE([AC_CANONICAL_HOST])
  AC_REQUIRE([AC_LIB_PREPARE_PREFIX])
  dnl By default, look in $includedir and $libdir.
  use_additional=yes
  AC_LIB_WITH_FINAL_PREFIX([
    eval additional_includedir=\"$includedir\"
    eval additional_libdir=\"$libdir\"
  ])
  AC_LIB_ARG_WITH([lib-prefix],
[  --with-lib-prefix[=DIR] search for libraries in DIR/include and DIR/lib
  --without-lib-prefix    don't search for libraries in includedir and libdir],
[
    if test "X$withval" = "Xno"; then
      use_additional=no
    else
      if test "X$withval" = "X"; then
        AC_LIB_WITH_FINAL_PREFIX([
          eval additional_includedir=\"$includedir\"
          eval additional_libdir=\"$libdir\"
        ])
      else
        additional_includedir="$withval/include"
        additional_libdir="$withval/lib"
      fi
    fi
])
  if test $use_additional = yes; then
    dnl Potentially add $additional_includedir to $CPPFLAGS.
    dnl But don't add it
    dnl   1. if it's the standard /usr/include,
    dnl   2. if it's already present in $CPPFLAGS,
    dnl   3. if it's /usr/local/include and we are using GCC on Linux,
    dnl   4. if it doesn't exist as a directory.
    if test "X$additional_includedir" != "X/usr/include"; then
      haveit=
      for x in $CPPFLAGS; do
        AC_LIB_WITH_FINAL_PREFIX([eval x=\"$x\"])
        if test "X$x" = "X-I$additional_includedir"; then
          haveit=yes
          break
        fi
      done
      if test -z "$haveit"; then
        if test "X$additional_includedir" = "X/usr/local/include"; then
          if test -n "$GCC"; then
            case $host_os in
              linux*) haveit=yes;;
            esac
          fi
        fi
        if test -z "$haveit"; then
          if test -d "$additional_includedir"; then
            dnl Really add $additional_includedir to $CPPFLAGS.
            CPPFLAGS="${CPPFLAGS}${CPPFLAGS:+ }-I$additional_includedir"
          fi
        fi
      fi
    fi
    dnl Potentially add $additional_libdir to $LDFLAGS.
    dnl But don't add it
    dnl   1. if it's the standard /usr/lib,
    dnl   2. if it's already present in $LDFLAGS,
    dnl   3. if it's /usr/local/lib and we are using GCC on Linux,
    dnl   4. if it doesn't exist as a directory.
    if test "X$additional_libdir" != "X/usr/lib"; then
      haveit=
      for x in $LDFLAGS; do
        AC_LIB_WITH_FINAL_PREFIX([eval x=\"$x\"])
        if test "X$x" = "X-L$additional_libdir"; then
          haveit=yes
          break
        fi
      done
      if test -z "$haveit"; then
        if test "X$additional_libdir" = "X/usr/local/lib"; then
          if test -n "$GCC"; then
            case $host_os in
              linux*) haveit=yes;;
            esac
          fi
        fi
        if test -z "$haveit"; then
          if test -d "$additional_libdir"; then
            dnl Really add $additional_libdir to $LDFLAGS.
            LDFLAGS="${LDFLAGS}${LDFLAGS:+ }-L$additional_libdir"
          fi
        fi
      fi
    fi
  fi
])

dnl AC_LIB_PREPARE_PREFIX creates variables acl_final_prefix,
dnl acl_final_exec_prefix, containing the values to which $prefix and
dnl $exec_prefix will expand at the end of the configure script.
AC_DEFUN([AC_LIB_PREPARE_PREFIX],
[
  dnl Unfortunately, prefix and exec_prefix get only finally determined
  dnl at the end of configure.
  if test "X$prefix" = "XNONE"; then
    acl_final_prefix="$ac_default_prefix"
  else
    acl_final_prefix="$prefix"
  fi
  if test "X$exec_prefix" = "XNONE"; then
    acl_final_exec_prefix='${prefix}'
  else
    acl_final_exec_prefix="$exec_prefix"
  fi
  acl_save_prefix="$prefix"
  prefix="$acl_final_prefix"
  eval acl_final_exec_prefix=\"$acl_final_exec_prefix\"
  prefix="$acl_save_prefix"
])

dnl AC_LIB_WITH_FINAL_PREFIX([statement]) evaluates statement, with the
dnl variables prefix and exec_prefix bound to the values they will have
dnl at the end of the configure script.
AC_DEFUN([AC_LIB_WITH_FINAL_PREFIX],
[
  acl_save_prefix="$prefix"
  prefix="$acl_final_prefix"
  acl_save_exec_prefix="$exec_prefix"
  exec_prefix="$acl_final_exec_prefix"
  $1
  exec_prefix="$acl_save_exec_prefix"
  prefix="$acl_save_prefix"
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

