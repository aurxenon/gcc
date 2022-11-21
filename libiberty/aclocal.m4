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


# isc-posix.m4 serial 2 (gettext-0.11.2)
dnl Copyright (C) 1995-2002 Free Software Foundation, Inc.
dnl This file is free software, distributed under the terms of the GNU
dnl General Public License.  As a special exception to the GNU General
dnl Public License, this file may be distributed as part of a program
dnl that contains a configuration script generated by Autoconf, under
dnl the same distribution terms as the rest of that program.

# This file is not needed with autoconf-2.53 and newer.  Remove it in 2005.

# This test replaces the one in autoconf.
# Currently this macro should have the same name as the autoconf macro
# because gettext's gettext.m4 (distributed in the automake package)
# still uses it.  Otherwise, the use in gettext.m4 makes autoheader
# give these diagnostics:
#   configure.in:556: AC_TRY_COMPILE was called before AC_ISC_POSIX
#   configure.in:556: AC_TRY_RUN was called before AC_ISC_POSIX

undefine([AC_ISC_POSIX])

AC_DEFUN([AC_ISC_POSIX],
  [
    dnl This test replaces the obsolescent AC_ISC_POSIX kludge.
    AC_CHECK_LIB(cposix, strerror, [LIBS="$LIBS -lcposix"])
  ]
)

# GCC_NO_EXECUTABLES
# -----------------
# FIXME: The GCC team has specific needs which the current Autoconf
# framework cannot solve elegantly.  This macro implements a dirty
# hack until Autoconf is able to provide the services its users
# need.
#
# Several of the support libraries that are often built with GCC can't
# assume the tool-chain is already capable of linking a program: the
# compiler often expects to be able to link with some of such
# libraries.
#
# In several of these libraries, workarounds have been introduced to
# avoid the AC_PROG_CC_WORKS test, that would just abort their
# configuration.  The introduction of AC_EXEEXT, enabled either by
# libtool or by CVS autoconf, have just made matters worse.
#
# Unlike the previous AC_NO_EXECUTABLES, this test does not
# disable link tests at autoconf time, but at configure time.
# This allows AC_NO_EXECUTABLES to be invoked conditionally.
AC_DEFUN_ONCE([GCC_NO_EXECUTABLES],
[m4_divert_push([KILL])

AC_BEFORE([$0], [_AC_COMPILER_EXEEXT])
AC_BEFORE([$0], [AC_LINK_IFELSE])

m4_define([_AC_COMPILER_EXEEXT],
[AC_LANG_CONFTEST([AC_LANG_PROGRAM(
		     [#include <stdio.h>],
		     [printf ("hello world\n");])])
# FIXME: Cleanup?
AS_IF([AC_TRY_EVAL(ac_link)], [gcc_no_link=no], [gcc_no_link=yes])
if test x$gcc_no_link = xyes; then
  # Setting cross_compile will disable run tests; it will
  # also disable AC_CHECK_FILE but that's generally
  # correct if we can't link.
  cross_compiling=yes
  EXEEXT=
else
  ]m4_defn([_AC_COMPILER_EXEEXT])dnl
fi
)

m4_define([AC_LINK_IFELSE],
if test x$gcc_no_link = xyes; then
  AC_MSG_ERROR([Link tests are not allowed after [[$0]].])
fi
m4_defn([AC_LINK_IFELSE]))

dnl This is a shame.  We have to provide a default for some link tests,
dnl similar to the default for run tests.
m4_define([AC_FUNC_MMAP],
if test x$gcc_no_link = xyes; then
  if test "x${ac_cv_func_mmap_fixed_mapped+set}" != xset; then
    ac_cv_func_mmap_fixed_mapped=no
  fi
fi
if test "x${ac_cv_func_mmap_fixed_mapped}" != xno; then
  m4_defn([AC_FUNC_MMAP])
fi)

m4_divert_pop()dnl
])# GCC_NO_EXECUTABLES

# Use the strongest available test out of AC_TRY_COMPILE and AC_TRY_LINK.
AC_DEFUN([GCC_TRY_COMPILE_OR_LINK],
[if test x$gcc_no_link = xyes; then
  AC_TRY_COMPILE([$1], [$2], [$3], [$4])
else
  AC_TRY_LINK([$1], [$2], [$3], [$4])
fi])

# _GCC_PICFLAG(FLAG, DISPATCH)
# ----------------------------
# Store PIC flag corresponding to DISPATCH triplet in FLAG.
# Explit use of -fpic in CFLAGS corresponding to FLAG overrides default.
AC_DEFUN([_GCC_PICFLAG], [

case "${$2}" in
    # PIC is the default on some targets or must not be used.
    *-*-darwin*)
	# For darwin, common symbols are not allowed in MH_DYLIB files
	case "${CFLAGS}" in
	  # If we are using a compiler supporting mdynamic-no-pic
	  # and the option has been tested as safe to add, then cancel
	  # it here, since the code generated is incompatible with shared
	  # libs.
	  *-mdynamic-no-pic*) $1='-fno-common -mno-dynamic-no-pic' ;;
	  *) $1=-fno-common ;;
	esac
	;;
    alpha*-dec-osf5*)
	# PIC is the default.
	;;
    hppa*64*-*-hpux*)
	# PIC is the default for 64-bit PA HP-UX.
	;;
    i[[34567]]86-*-cygwin* | x86_64-*-cygwin*)
	;;
    i[[34567]]86-*-mingw* | x86_64-*-mingw*)
	;;
    i[[34567]]86-*-interix[[3-9]]*)
	# Interix 3.x gcc -fpic/-fPIC options generate broken code.
	# Instead, we relocate shared libraries at runtime.
	;;
    i[[34567]]86-*-nto-qnx*)
	# QNX uses GNU C++, but need to define -shared option too, otherwise
	# it will coredump.
	$1='-fPIC -shared'
	;;
    i[[34567]]86-pc-msdosdjgpp*)
	# DJGPP does not support shared libraries at all.
	;;
    ia64*-*-hpux*)
	# On IA64 HP-UX, PIC is the default but the pic flag
	# sets the default TLS model and affects inlining.
	$1=-fPIC
	;;
    loongarch*-*-*)
	$1=-fpic
	;;
    mips-sgi-irix6*)
	# PIC is the default.
	;;
    rs6000-ibm-aix* | powerpc-ibm-aix*)
	# All AIX code is PIC.
	;;

    # Some targets support both -fPIC and -fpic, but prefer the latter.
    # FIXME: Why?
    i[[34567]]86-*-* | x86_64-*-*)
	$1=-fpic
	;;
    # FIXME: Override -fPIC default in libgcc only? 
    sh-*-linux* | sh[[2346lbe]]*-*-linux*)
	$1=-fpic
	;;
    # FIXME: Simplify to sh*-*-netbsd*?
    sh-*-netbsdelf* | shl*-*-netbsdelf* | sh5-*-netbsd* | sh5l*-*-netbsd* | \
      sh64-*-netbsd* | sh64l*-*-netbsd*)
	$1=-fpic
	;;
    # Default to -fPIC unless specified otherwise.
    *)
	$1=-fPIC
	;;
esac

# If the user explicitly uses -fpic/-fPIC, keep that.
case "${m4_bpatsubsts($1, PICFLAG, CFLAGS)}" in
    *-fpic*)
	$1=-fpic
	;;
    *-fPIC*)
	$1=-fPIC
	;;
esac
])

# GCC_PICFLAG
# -----------
# Store host PIC flag in PICFLAG.
AC_DEFUN([GCC_PICFLAG], [
  AC_REQUIRE([AC_CANONICAL_HOST])
  _GCC_PICFLAG([PICFLAG], [host])])

# GCC_PICFLAG_FOR_TARGET
# ----------------------
# Store target PIC flag in PICFLAG_FOR_TARGET.
AC_DEFUN([GCC_PICFLAG_FOR_TARGET], [
  AC_REQUIRE([AC_CANONICAL_TARGET])
  _GCC_PICFLAG([PICFLAG_FOR_TARGET], [target])])

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

m4_include([acinclude.m4])
