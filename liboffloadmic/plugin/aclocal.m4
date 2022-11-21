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
m4_ifndef([AC_AUTOCONF_VERSION],
  [m4_copy([m4_PACKAGE_VERSION], [AC_AUTOCONF_VERSION])])dnl
m4_if(m4_defn([AC_AUTOCONF_VERSION]), [2.69],,
[m4_warning([this file was generated for autoconf 2.69.
You have another version of autoconf.  It may work, but is not guaranteed to.
If you have problems, you may need to regenerate the build system entirely.
To do so, use the procedure documented by the package, typically 'autoreconf'.])])

# Copyright (C) 2002-2021 Free Software Foundation, Inc.
#
# This file is free software; the Free Software Foundation
# gives unlimited permission to copy and/or distribute it,
# with or without modifications, as long as this notice is preserved.

# AM_AUTOMAKE_VERSION(VERSION)
# ----------------------------
# Automake X.Y traces this macro to ensure aclocal.m4 has been
# generated from the m4 files accompanying Automake X.Y.
# (This private macro should not be called outside this file.)
AC_DEFUN([AM_AUTOMAKE_VERSION],
[am__api_version='1.16'
dnl Some users find AM_AUTOMAKE_VERSION and mistake it for a way to
dnl require some minimum version.  Point them to the right macro.
m4_if([$1], [1.16.5], [],
      [AC_FATAL([Do not call $0, use AM_INIT_AUTOMAKE([$1]).])])dnl
])

# _AM_AUTOCONF_VERSION(VERSION)
# -----------------------------
# aclocal traces this macro to find the Autoconf version.
# This is a private macro too.  Using m4_define simplifies
# the logic in aclocal, which can simply ignore this definition.
m4_define([_AM_AUTOCONF_VERSION], [])

# AM_SET_CURRENT_AUTOMAKE_VERSION
# -------------------------------
# Call AM_AUTOMAKE_VERSION and AM_AUTOMAKE_VERSION so they can be traced.
# This function is AC_REQUIREd by AM_INIT_AUTOMAKE.
AC_DEFUN([AM_SET_CURRENT_AUTOMAKE_VERSION],
[AM_AUTOMAKE_VERSION([1.16.5])dnl
m4_ifndef([AC_AUTOCONF_VERSION],
  [m4_copy([m4_PACKAGE_VERSION], [AC_AUTOCONF_VERSION])])dnl
_AM_AUTOCONF_VERSION(m4_defn([AC_AUTOCONF_VERSION]))])

# AM_AUX_DIR_EXPAND                                         -*- Autoconf -*-

# Copyright (C) 2001-2021 Free Software Foundation, Inc.
#
# This file is free software; the Free Software Foundation
# gives unlimited permission to copy and/or distribute it,
# with or without modifications, as long as this notice is preserved.

# For projects using AC_CONFIG_AUX_DIR([foo]), Autoconf sets
# $ac_aux_dir to '$srcdir/foo'.  In other projects, it is set to
# '$srcdir', '$srcdir/..', or '$srcdir/../..'.
#
# Of course, Automake must honor this variable whenever it calls a
# tool from the auxiliary directory.  The problem is that $srcdir (and
# therefore $ac_aux_dir as well) can be either absolute or relative,
# depending on how configure is run.  This is pretty annoying, since
# it makes $ac_aux_dir quite unusable in subdirectories: in the top
# source directory, any form will work fine, but in subdirectories a
# relative path needs to be adjusted first.
#
# $ac_aux_dir/missing
#    fails when called from a subdirectory if $ac_aux_dir is relative
# $top_srcdir/$ac_aux_dir/missing
#    fails if $ac_aux_dir is absolute,
#    fails when called from a subdirectory in a VPATH build with
#          a relative $ac_aux_dir
#
# The reason of the latter failure is that $top_srcdir and $ac_aux_dir
# are both prefixed by $srcdir.  In an in-source build this is usually
# harmless because $srcdir is '.', but things will broke when you
# start a VPATH build or use an absolute $srcdir.
#
# So we could use something similar to $top_srcdir/$ac_aux_dir/missing,
# iff we strip the leading $srcdir from $ac_aux_dir.  That would be:
#   am_aux_dir='\$(top_srcdir)/'`expr "$ac_aux_dir" : "$srcdir//*\(.*\)"`
# and then we would define $MISSING as
#   MISSING="\${SHELL} $am_aux_dir/missing"
# This will work as long as MISSING is not called from configure, because
# unfortunately $(top_srcdir) has no meaning in configure.
# However there are other variables, like CC, which are often used in
# configure, and could therefore not use this "fixed" $ac_aux_dir.
#
# Another solution, used here, is to always expand $ac_aux_dir to an
# absolute PATH.  The drawback is that using absolute paths prevent a
# configured tree to be moved without reconfiguration.

AC_DEFUN([AM_AUX_DIR_EXPAND],
[AC_REQUIRE([AC_CONFIG_AUX_DIR_DEFAULT])dnl
# Expand $ac_aux_dir to an absolute path.
am_aux_dir=`cd "$ac_aux_dir" && pwd`
])

# AM_CONDITIONAL                                            -*- Autoconf -*-

# Copyright (C) 1997-2021 Free Software Foundation, Inc.
#
# This file is free software; the Free Software Foundation
# gives unlimited permission to copy and/or distribute it,
# with or without modifications, as long as this notice is preserved.

# AM_CONDITIONAL(NAME, SHELL-CONDITION)
# -------------------------------------
# Define a conditional.
AC_DEFUN([AM_CONDITIONAL],
[AC_PREREQ([2.52])dnl
 m4_if([$1], [TRUE],  [AC_FATAL([$0: invalid condition: $1])],
       [$1], [FALSE], [AC_FATAL([$0: invalid condition: $1])])dnl
AC_SUBST([$1_TRUE])dnl
AC_SUBST([$1_FALSE])dnl
_AM_SUBST_NOTMAKE([$1_TRUE])dnl
_AM_SUBST_NOTMAKE([$1_FALSE])dnl
m4_define([_AM_COND_VALUE_$1], [$2])dnl
if $2; then
  $1_TRUE=
  $1_FALSE='#'
else
  $1_TRUE='#'
  $1_FALSE=
fi
AC_CONFIG_COMMANDS_PRE(
[if test -z "${$1_TRUE}" && test -z "${$1_FALSE}"; then
  AC_MSG_ERROR([[conditional "$1" was never defined.
Usually this means the macro was only invoked conditionally.]])
fi])])

# Copyright (C) 1999-2021 Free Software Foundation, Inc.
#
# This file is free software; the Free Software Foundation
# gives unlimited permission to copy and/or distribute it,
# with or without modifications, as long as this notice is preserved.


# There are a few dirty hacks below to avoid letting 'AC_PROG_CC' be
# written in clear, in which case automake, when reading aclocal.m4,
# will think it sees a *use*, and therefore will trigger all it's
# C support machinery.  Also note that it means that autoscan, seeing
# CC etc. in the Makefile, will ask for an AC_PROG_CC use...


# _AM_DEPENDENCIES(NAME)
# ----------------------
# See how the compiler implements dependency checking.
# NAME is "CC", "CXX", "OBJC", "OBJCXX", "UPC", or "GJC".
# We try a few techniques and use that to set a single cache variable.
#
# We don't AC_REQUIRE the corresponding AC_PROG_CC since the latter was
# modified to invoke _AM_DEPENDENCIES(CC); we would have a circular
# dependency, and given that the user is not expected to run this macro,
# just rely on AC_PROG_CC.
AC_DEFUN([_AM_DEPENDENCIES],
[AC_REQUIRE([AM_SET_DEPDIR])dnl
AC_REQUIRE([AM_OUTPUT_DEPENDENCY_COMMANDS])dnl
AC_REQUIRE([AM_MAKE_INCLUDE])dnl
AC_REQUIRE([AM_DEP_TRACK])dnl

m4_if([$1], [CC],   [depcc="$CC"   am_compiler_list=],
      [$1], [CXX],  [depcc="$CXX"  am_compiler_list=],
      [$1], [OBJC], [depcc="$OBJC" am_compiler_list='gcc3 gcc'],
      [$1], [OBJCXX], [depcc="$OBJCXX" am_compiler_list='gcc3 gcc'],
      [$1], [UPC],  [depcc="$UPC"  am_compiler_list=],
      [$1], [GCJ],  [depcc="$GCJ"  am_compiler_list='gcc3 gcc'],
                    [depcc="$$1"   am_compiler_list=])

AC_CACHE_CHECK([dependency style of $depcc],
               [am_cv_$1_dependencies_compiler_type],
[if test -z "$AMDEP_TRUE" && test -f "$am_depcomp"; then
  # We make a subdir and do the tests there.  Otherwise we can end up
  # making bogus files that we don't know about and never remove.  For
  # instance it was reported that on HP-UX the gcc test will end up
  # making a dummy file named 'D' -- because '-MD' means "put the output
  # in D".
  rm -rf conftest.dir
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
     am_compiler_list=`sed -n ['s/^#*\([a-zA-Z0-9]*\))$/\1/p'] < ./depcomp`
  fi
  am__universal=false
  m4_case([$1], [CC],
    [case " $depcc " in #(
     *\ -arch\ *\ -arch\ *) am__universal=true ;;
     esac],
    [CXX],
    [case " $depcc " in #(
     *\ -arch\ *\ -arch\ *) am__universal=true ;;
     esac])

  for depmode in $am_compiler_list; do
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
      # Using ": > sub/conftst$i.h" creates only sub/conftst1.h with
      # Solaris 10 /bin/sh.
      echo '/* dummy */' > sub/conftst$i.h
    done
    echo "${am__include} ${am__quote}sub/conftest.Po${am__quote}" > confmf

    # We check with '-c' and '-o' for the sake of the "dashmstdout"
    # mode.  It turns out that the SunPro C++ compiler does not properly
    # handle '-M -o', and we need to detect this.  Also, some Intel
    # versions had trouble with output in subdirs.
    am__obj=sub/conftest.${OBJEXT-o}
    am__minus_obj="-o $am__obj"
    case $depmode in
    gcc)
      # This depmode causes a compiler race in universal mode.
      test "$am__universal" = false || continue
      ;;
    nosideeffect)
      # After this tag, mechanisms are not by side-effect, so they'll
      # only be used when explicitly requested.
      if test "x$enable_dependency_tracking" = xyes; then
	continue
      else
	break
      fi
      ;;
    msvc7 | msvc7msys | msvisualcpp | msvcmsys)
      # This compiler won't grok '-c -o', but also, the minuso test has
      # not run yet.  These depmodes are late enough in the game, and
      # so weak that their functioning should not be impacted.
      am__obj=conftest.${OBJEXT-o}
      am__minus_obj=
      ;;
    none) break ;;
    esac
    if depmode=$depmode \
       source=sub/conftest.c object=$am__obj \
       depfile=sub/conftest.Po tmpdepfile=sub/conftest.TPo \
       $SHELL ./depcomp $depcc -c $am__minus_obj sub/conftest.c \
         >/dev/null 2>conftest.err &&
       grep sub/conftst1.h sub/conftest.Po > /dev/null 2>&1 &&
       grep sub/conftst6.h sub/conftest.Po > /dev/null 2>&1 &&
       grep $am__obj sub/conftest.Po > /dev/null 2>&1 &&
       ${MAKE-make} -s -f confmf > /dev/null 2>&1; then
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
        break
      fi
    fi
  done

  cd ..
  rm -rf conftest.dir
else
  am_cv_$1_dependencies_compiler_type=none
fi
])
AC_SUBST([$1DEPMODE], [depmode=$am_cv_$1_dependencies_compiler_type])
AM_CONDITIONAL([am__fastdep$1], [
  test "x$enable_dependency_tracking" != xno \
  && test "$am_cv_$1_dependencies_compiler_type" = gcc3])
])


# AM_SET_DEPDIR
# -------------
# Choose a directory name for dependency files.
# This macro is AC_REQUIREd in _AM_DEPENDENCIES.
AC_DEFUN([AM_SET_DEPDIR],
[AC_REQUIRE([AM_SET_LEADING_DOT])dnl
AC_SUBST([DEPDIR], ["${am__leading_dot}deps"])dnl
])


# AM_DEP_TRACK
# ------------
AC_DEFUN([AM_DEP_TRACK],
[AC_ARG_ENABLE([dependency-tracking], [dnl
AS_HELP_STRING(
  [--enable-dependency-tracking],
  [do not reject slow dependency extractors])
AS_HELP_STRING(
  [--disable-dependency-tracking],
  [speeds up one-time build])])
if test "x$enable_dependency_tracking" != xno; then
  am_depcomp="$ac_aux_dir/depcomp"
  AMDEPBACKSLASH='\'
  am__nodep='_no'
fi
AM_CONDITIONAL([AMDEP], [test "x$enable_dependency_tracking" != xno])
AC_SUBST([AMDEPBACKSLASH])dnl
_AM_SUBST_NOTMAKE([AMDEPBACKSLASH])dnl
AC_SUBST([am__nodep])dnl
_AM_SUBST_NOTMAKE([am__nodep])dnl
])

# Generate code to set up dependency tracking.              -*- Autoconf -*-

# Copyright (C) 1999-2021 Free Software Foundation, Inc.
#
# This file is free software; the Free Software Foundation
# gives unlimited permission to copy and/or distribute it,
# with or without modifications, as long as this notice is preserved.

# _AM_OUTPUT_DEPENDENCY_COMMANDS
# ------------------------------
AC_DEFUN([_AM_OUTPUT_DEPENDENCY_COMMANDS],
[{
  # Older Autoconf quotes --file arguments for eval, but not when files
  # are listed without --file.  Let's play safe and only enable the eval
  # if we detect the quoting.
  # TODO: see whether this extra hack can be removed once we start
  # requiring Autoconf 2.70 or later.
  AS_CASE([$CONFIG_FILES],
          [*\'*], [eval set x "$CONFIG_FILES"],
          [*], [set x $CONFIG_FILES])
  shift
  # Used to flag and report bootstrapping failures.
  am_rc=0
  for am_mf
  do
    # Strip MF so we end up with the name of the file.
    am_mf=`AS_ECHO(["$am_mf"]) | sed -e 's/:.*$//'`
    # Check whether this is an Automake generated Makefile which includes
    # dependency-tracking related rules and includes.
    # Grep'ing the whole file directly is not great: AIX grep has a line
    # limit of 2048, but all sed's we know have understand at least 4000.
    sed -n 's,^am--depfiles:.*,X,p' "$am_mf" | grep X >/dev/null 2>&1 \
      || continue
    am_dirpart=`AS_DIRNAME(["$am_mf"])`
    am_filepart=`AS_BASENAME(["$am_mf"])`
    AM_RUN_LOG([cd "$am_dirpart" \
      && sed -e '/# am--include-marker/d' "$am_filepart" \
        | $MAKE -f - am--depfiles]) || am_rc=$?
  done
  if test $am_rc -ne 0; then
    AC_MSG_FAILURE([Something went wrong bootstrapping makefile fragments
    for automatic dependency tracking.  If GNU make was not used, consider
    re-running the configure script with MAKE="gmake" (or whatever is
    necessary).  You can also try re-running configure with the
    '--disable-dependency-tracking' option to at least be able to build
    the package (albeit without support for automatic dependency tracking).])
  fi
  AS_UNSET([am_dirpart])
  AS_UNSET([am_filepart])
  AS_UNSET([am_mf])
  AS_UNSET([am_rc])
  rm -f conftest-deps.mk
}
])# _AM_OUTPUT_DEPENDENCY_COMMANDS


# AM_OUTPUT_DEPENDENCY_COMMANDS
# -----------------------------
# This macro should only be invoked once -- use via AC_REQUIRE.
#
# This code is only required when automatic dependency tracking is enabled.
# This creates each '.Po' and '.Plo' makefile fragment that we'll need in
# order to bootstrap the dependency handling code.
AC_DEFUN([AM_OUTPUT_DEPENDENCY_COMMANDS],
[AC_CONFIG_COMMANDS([depfiles],
     [test x"$AMDEP_TRUE" != x"" || _AM_OUTPUT_DEPENDENCY_COMMANDS],
     [AMDEP_TRUE="$AMDEP_TRUE" MAKE="${MAKE-make}"])])

# Do all the work for Automake.                             -*- Autoconf -*-

# Copyright (C) 1996-2021 Free Software Foundation, Inc.
#
# This file is free software; the Free Software Foundation
# gives unlimited permission to copy and/or distribute it,
# with or without modifications, as long as this notice is preserved.

# This macro actually does too much.  Some checks are only needed if
# your package does certain things.  But this isn't really a big deal.

dnl Redefine AC_PROG_CC to automatically invoke _AM_PROG_CC_C_O.
m4_define([AC_PROG_CC],
m4_defn([AC_PROG_CC])
[_AM_PROG_CC_C_O
])

# AM_INIT_AUTOMAKE(PACKAGE, VERSION, [NO-DEFINE])
# AM_INIT_AUTOMAKE([OPTIONS])
# -----------------------------------------------
# The call with PACKAGE and VERSION arguments is the old style
# call (pre autoconf-2.50), which is being phased out.  PACKAGE
# and VERSION should now be passed to AC_INIT and removed from
# the call to AM_INIT_AUTOMAKE.
# We support both call styles for the transition.  After
# the next Automake release, Autoconf can make the AC_INIT
# arguments mandatory, and then we can depend on a new Autoconf
# release and drop the old call support.
AC_DEFUN([AM_INIT_AUTOMAKE],
[AC_PREREQ([2.65])dnl
m4_ifdef([_$0_ALREADY_INIT],
  [m4_fatal([$0 expanded multiple times
]m4_defn([_$0_ALREADY_INIT]))],
  [m4_define([_$0_ALREADY_INIT], m4_expansion_stack)])dnl
dnl Autoconf wants to disallow AM_ names.  We explicitly allow
dnl the ones we care about.
m4_pattern_allow([^AM_[A-Z]+FLAGS$])dnl
AC_REQUIRE([AM_SET_CURRENT_AUTOMAKE_VERSION])dnl
AC_REQUIRE([AC_PROG_INSTALL])dnl
if test "`cd $srcdir && pwd`" != "`pwd`"; then
  # Use -I$(srcdir) only when $(srcdir) != ., so that make's output
  # is not polluted with repeated "-I."
  AC_SUBST([am__isrc], [' -I$(srcdir)'])_AM_SUBST_NOTMAKE([am__isrc])dnl
  # test to see if srcdir already configured
  if test -f $srcdir/config.status; then
    AC_MSG_ERROR([source directory already configured; run "make distclean" there first])
  fi
fi

# test whether we have cygpath
if test -z "$CYGPATH_W"; then
  if (cygpath --version) >/dev/null 2>/dev/null; then
    CYGPATH_W='cygpath -w'
  else
    CYGPATH_W=echo
  fi
fi
AC_SUBST([CYGPATH_W])

# Define the identity of the package.
dnl Distinguish between old-style and new-style calls.
m4_ifval([$2],
[AC_DIAGNOSE([obsolete],
             [$0: two- and three-arguments forms are deprecated.])
m4_ifval([$3], [_AM_SET_OPTION([no-define])])dnl
 AC_SUBST([PACKAGE], [$1])dnl
 AC_SUBST([VERSION], [$2])],
[_AM_SET_OPTIONS([$1])dnl
dnl Diagnose old-style AC_INIT with new-style AM_AUTOMAKE_INIT.
m4_if(
  m4_ifset([AC_PACKAGE_NAME], [ok]):m4_ifset([AC_PACKAGE_VERSION], [ok]),
  [ok:ok],,
  [m4_fatal([AC_INIT should be called with package and version arguments])])dnl
 AC_SUBST([PACKAGE], ['AC_PACKAGE_TARNAME'])dnl
 AC_SUBST([VERSION], ['AC_PACKAGE_VERSION'])])dnl

_AM_IF_OPTION([no-define],,
[AC_DEFINE_UNQUOTED([PACKAGE], ["$PACKAGE"], [Name of package])
 AC_DEFINE_UNQUOTED([VERSION], ["$VERSION"], [Version number of package])])dnl

# Some tools Automake needs.
AC_REQUIRE([AM_SANITY_CHECK])dnl
AC_REQUIRE([AC_ARG_PROGRAM])dnl
AM_MISSING_PROG([ACLOCAL], [aclocal-${am__api_version}])
AM_MISSING_PROG([AUTOCONF], [autoconf])
AM_MISSING_PROG([AUTOMAKE], [automake-${am__api_version}])
AM_MISSING_PROG([AUTOHEADER], [autoheader])
AM_MISSING_PROG([MAKEINFO], [makeinfo])
AC_REQUIRE([AM_PROG_INSTALL_SH])dnl
AC_REQUIRE([AM_PROG_INSTALL_STRIP])dnl
AC_REQUIRE([AC_PROG_MKDIR_P])dnl
# For better backward compatibility.  To be removed once Automake 1.9.x
# dies out for good.  For more background, see:
# <https://lists.gnu.org/archive/html/automake/2012-07/msg00001.html>
# <https://lists.gnu.org/archive/html/automake/2012-07/msg00014.html>
AC_SUBST([mkdir_p], ['$(MKDIR_P)'])
# We need awk for the "check" target (and possibly the TAP driver).  The
# system "awk" is bad on some platforms.
AC_REQUIRE([AC_PROG_AWK])dnl
AC_REQUIRE([AC_PROG_MAKE_SET])dnl
AC_REQUIRE([AM_SET_LEADING_DOT])dnl
_AM_IF_OPTION([tar-ustar], [_AM_PROG_TAR([ustar])],
	      [_AM_IF_OPTION([tar-pax], [_AM_PROG_TAR([pax])],
			     [_AM_PROG_TAR([v7])])])
_AM_IF_OPTION([no-dependencies],,
[AC_PROVIDE_IFELSE([AC_PROG_CC],
		  [_AM_DEPENDENCIES([CC])],
		  [m4_define([AC_PROG_CC],
			     m4_defn([AC_PROG_CC])[_AM_DEPENDENCIES([CC])])])dnl
AC_PROVIDE_IFELSE([AC_PROG_CXX],
		  [_AM_DEPENDENCIES([CXX])],
		  [m4_define([AC_PROG_CXX],
			     m4_defn([AC_PROG_CXX])[_AM_DEPENDENCIES([CXX])])])dnl
AC_PROVIDE_IFELSE([AC_PROG_OBJC],
		  [_AM_DEPENDENCIES([OBJC])],
		  [m4_define([AC_PROG_OBJC],
			     m4_defn([AC_PROG_OBJC])[_AM_DEPENDENCIES([OBJC])])])dnl
AC_PROVIDE_IFELSE([AC_PROG_OBJCXX],
		  [_AM_DEPENDENCIES([OBJCXX])],
		  [m4_define([AC_PROG_OBJCXX],
			     m4_defn([AC_PROG_OBJCXX])[_AM_DEPENDENCIES([OBJCXX])])])dnl
])
# Variables for tags utilities; see am/tags.am
if test -z "$CTAGS"; then
  CTAGS=ctags
fi
AC_SUBST([CTAGS])
if test -z "$ETAGS"; then
  ETAGS=etags
fi
AC_SUBST([ETAGS])
if test -z "$CSCOPE"; then
  CSCOPE=cscope
fi
AC_SUBST([CSCOPE])

AC_REQUIRE([AM_SILENT_RULES])dnl
dnl The testsuite driver may need to know about EXEEXT, so add the
dnl 'am__EXEEXT' conditional if _AM_COMPILER_EXEEXT was seen.  This
dnl macro is hooked onto _AC_COMPILER_EXEEXT early, see below.
AC_CONFIG_COMMANDS_PRE(dnl
[m4_provide_if([_AM_COMPILER_EXEEXT],
  [AM_CONDITIONAL([am__EXEEXT], [test -n "$EXEEXT"])])])dnl

# POSIX will say in a future version that running "rm -f" with no argument
# is OK; and we want to be able to make that assumption in our Makefile
# recipes.  So use an aggressive probe to check that the usage we want is
# actually supported "in the wild" to an acceptable degree.
# See automake bug#10828.
# To make any issue more visible, cause the running configure to be aborted
# by default if the 'rm' program in use doesn't match our expectations; the
# user can still override this though.
if rm -f && rm -fr && rm -rf; then : OK; else
  cat >&2 <<'END'
Oops!

Your 'rm' program seems unable to run without file operands specified
on the command line, even when the '-f' option is present.  This is contrary
to the behaviour of most rm programs out there, and not conforming with
the upcoming POSIX standard: <http://austingroupbugs.net/view.php?id=542>

Please tell bug-automake@gnu.org about your system, including the value
of your $PATH and any error possibly output before this message.  This
can help us improve future automake versions.

END
  if test x"$ACCEPT_INFERIOR_RM_PROGRAM" = x"yes"; then
    echo 'Configuration will proceed anyway, since you have set the' >&2
    echo 'ACCEPT_INFERIOR_RM_PROGRAM variable to "yes"' >&2
    echo >&2
  else
    cat >&2 <<'END'
Aborting the configuration process, to ensure you take notice of the issue.

You can download and install GNU coreutils to get an 'rm' implementation
that behaves properly: <https://www.gnu.org/software/coreutils/>.

If you want to complete the configuration process using your problematic
'rm' anyway, export the environment variable ACCEPT_INFERIOR_RM_PROGRAM
to "yes", and re-run configure.

END
    AC_MSG_ERROR([Your 'rm' program is bad, sorry.])
  fi
fi
dnl The trailing newline in this macro's definition is deliberate, for
dnl backward compatibility and to allow trailing 'dnl'-style comments
dnl after the AM_INIT_AUTOMAKE invocation. See automake bug#16841.
])

dnl Hook into '_AC_COMPILER_EXEEXT' early to learn its expansion.  Do not
dnl add the conditional right here, as _AC_COMPILER_EXEEXT may be further
dnl mangled by Autoconf and run in a shell conditional statement.
m4_define([_AC_COMPILER_EXEEXT],
m4_defn([_AC_COMPILER_EXEEXT])[m4_provide([_AM_COMPILER_EXEEXT])])

# When config.status generates a header, we must update the stamp-h file.
# This file resides in the same directory as the config header
# that is generated.  The stamp files are numbered to have different names.

# Autoconf calls _AC_AM_CONFIG_HEADER_HOOK (when defined) in the
# loop where config.status creates the headers, so we can generate
# our stamp files there.
AC_DEFUN([_AC_AM_CONFIG_HEADER_HOOK],
[# Compute $1's index in $config_headers.
_am_arg=$1
_am_stamp_count=1
for _am_header in $config_headers :; do
  case $_am_header in
    $_am_arg | $_am_arg:* )
      break ;;
    * )
      _am_stamp_count=`expr $_am_stamp_count + 1` ;;
  esac
done
echo "timestamp for $_am_arg" >`AS_DIRNAME(["$_am_arg"])`/stamp-h[]$_am_stamp_count])

# Copyright (C) 2001-2021 Free Software Foundation, Inc.
#
# This file is free software; the Free Software Foundation
# gives unlimited permission to copy and/or distribute it,
# with or without modifications, as long as this notice is preserved.

# AM_PROG_INSTALL_SH
# ------------------
# Define $install_sh.
AC_DEFUN([AM_PROG_INSTALL_SH],
[AC_REQUIRE([AM_AUX_DIR_EXPAND])dnl
if test x"${install_sh+set}" != xset; then
  case $am_aux_dir in
  *\ * | *\	*)
    install_sh="\${SHELL} '$am_aux_dir/install-sh'" ;;
  *)
    install_sh="\${SHELL} $am_aux_dir/install-sh"
  esac
fi
AC_SUBST([install_sh])])

# Add --enable-maintainer-mode option to configure.         -*- Autoconf -*-
# From Jim Meyering

# Copyright (C) 1996-2021 Free Software Foundation, Inc.
#
# This file is free software; the Free Software Foundation
# gives unlimited permission to copy and/or distribute it,
# with or without modifications, as long as this notice is preserved.

# AM_MAINTAINER_MODE([DEFAULT-MODE])
# ----------------------------------
# Control maintainer-specific portions of Makefiles.
# Default is to disable them, unless 'enable' is passed literally.
# For symmetry, 'disable' may be passed as well.  Anyway, the user
# can override the default with the --enable/--disable switch.
AC_DEFUN([AM_MAINTAINER_MODE],
[m4_case(m4_default([$1], [disable]),
       [enable], [m4_define([am_maintainer_other], [disable])],
       [disable], [m4_define([am_maintainer_other], [enable])],
       [m4_define([am_maintainer_other], [enable])
        m4_warn([syntax], [unexpected argument to AM@&t@_MAINTAINER_MODE: $1])])
AC_MSG_CHECKING([whether to enable maintainer-specific portions of Makefiles])
  dnl maintainer-mode's default is 'disable' unless 'enable' is passed
  AC_ARG_ENABLE([maintainer-mode],
    [AS_HELP_STRING([--]am_maintainer_other[-maintainer-mode],
      am_maintainer_other[ make rules and dependencies not useful
      (and sometimes confusing) to the casual installer])],
    [USE_MAINTAINER_MODE=$enableval],
    [USE_MAINTAINER_MODE=]m4_if(am_maintainer_other, [enable], [no], [yes]))
  AC_MSG_RESULT([$USE_MAINTAINER_MODE])
  AM_CONDITIONAL([MAINTAINER_MODE], [test $USE_MAINTAINER_MODE = yes])
  MAINT=$MAINTAINER_MODE_TRUE
  AC_SUBST([MAINT])dnl
]
)

# Check to see how 'make' treats includes.	            -*- Autoconf -*-

# Copyright (C) 2001-2021 Free Software Foundation, Inc.
#
# This file is free software; the Free Software Foundation
# gives unlimited permission to copy and/or distribute it,
# with or without modifications, as long as this notice is preserved.

# AM_MAKE_INCLUDE()
# -----------------
# Check whether make has an 'include' directive that can support all
# the idioms we need for our automatic dependency tracking code.
AC_DEFUN([AM_MAKE_INCLUDE],
[AC_MSG_CHECKING([whether ${MAKE-make} supports the include directive])
cat > confinc.mk << 'END'
am__doit:
	@echo this is the am__doit target >confinc.out
.PHONY: am__doit
END
am__include="#"
am__quote=
# BSD make does it like this.
echo '.include "confinc.mk" # ignored' > confmf.BSD
# Other make implementations (GNU, Solaris 10, AIX) do it like this.
echo 'include confinc.mk # ignored' > confmf.GNU
_am_result=no
for s in GNU BSD; do
  AM_RUN_LOG([${MAKE-make} -f confmf.$s && cat confinc.out])
  AS_CASE([$?:`cat confinc.out 2>/dev/null`],
      ['0:this is the am__doit target'],
      [AS_CASE([$s],
          [BSD], [am__include='.include' am__quote='"'],
          [am__include='include' am__quote=''])])
  if test "$am__include" != "#"; then
    _am_result="yes ($s style)"
    break
  fi
done
rm -f confinc.* confmf.*
AC_MSG_RESULT([${_am_result}])
AC_SUBST([am__include])])
AC_SUBST([am__quote])])

# Fake the existence of programs that GNU maintainers use.  -*- Autoconf -*-

# Copyright (C) 1997-2021 Free Software Foundation, Inc.
#
# This file is free software; the Free Software Foundation
# gives unlimited permission to copy and/or distribute it,
# with or without modifications, as long as this notice is preserved.

# AM_MISSING_PROG(NAME, PROGRAM)
# ------------------------------
AC_DEFUN([AM_MISSING_PROG],
[AC_REQUIRE([AM_MISSING_HAS_RUN])
$1=${$1-"${am_missing_run}$2"}
AC_SUBST($1)])

# AM_MISSING_HAS_RUN
# ------------------
# Define MISSING if not defined so far and test if it is modern enough.
# If it is, set am_missing_run to use it, otherwise, to nothing.
AC_DEFUN([AM_MISSING_HAS_RUN],
[AC_REQUIRE([AM_AUX_DIR_EXPAND])dnl
AC_REQUIRE_AUX_FILE([missing])dnl
if test x"${MISSING+set}" != xset; then
  MISSING="\${SHELL} '$am_aux_dir/missing'"
fi
# Use eval to expand $SHELL
if eval "$MISSING --is-lightweight"; then
  am_missing_run="$MISSING "
else
  am_missing_run=
  AC_MSG_WARN(['missing' script is too old or missing])
fi
])

# Helper functions for option handling.                     -*- Autoconf -*-

# Copyright (C) 2001-2021 Free Software Foundation, Inc.
#
# This file is free software; the Free Software Foundation
# gives unlimited permission to copy and/or distribute it,
# with or without modifications, as long as this notice is preserved.

# _AM_MANGLE_OPTION(NAME)
# -----------------------
AC_DEFUN([_AM_MANGLE_OPTION],
[[_AM_OPTION_]m4_bpatsubst($1, [[^a-zA-Z0-9_]], [_])])

# _AM_SET_OPTION(NAME)
# --------------------
# Set option NAME.  Presently that only means defining a flag for this option.
AC_DEFUN([_AM_SET_OPTION],
[m4_define(_AM_MANGLE_OPTION([$1]), [1])])

# _AM_SET_OPTIONS(OPTIONS)
# ------------------------
# OPTIONS is a space-separated list of Automake options.
AC_DEFUN([_AM_SET_OPTIONS],
[m4_foreach_w([_AM_Option], [$1], [_AM_SET_OPTION(_AM_Option)])])

# _AM_IF_OPTION(OPTION, IF-SET, [IF-NOT-SET])
# -------------------------------------------
# Execute IF-SET if OPTION is set, IF-NOT-SET otherwise.
AC_DEFUN([_AM_IF_OPTION],
[m4_ifset(_AM_MANGLE_OPTION([$1]), [$2], [$3])])

# Copyright (C) 1999-2021 Free Software Foundation, Inc.
#
# This file is free software; the Free Software Foundation
# gives unlimited permission to copy and/or distribute it,
# with or without modifications, as long as this notice is preserved.

# _AM_PROG_CC_C_O
# ---------------
# Like AC_PROG_CC_C_O, but changed for automake.  We rewrite AC_PROG_CC
# to automatically call this.
AC_DEFUN([_AM_PROG_CC_C_O],
[AC_REQUIRE([AM_AUX_DIR_EXPAND])dnl
AC_REQUIRE_AUX_FILE([compile])dnl
AC_LANG_PUSH([C])dnl
AC_CACHE_CHECK(
  [whether $CC understands -c and -o together],
  [am_cv_prog_cc_c_o],
  [AC_LANG_CONFTEST([AC_LANG_PROGRAM([])])
  # Make sure it works both with $CC and with simple cc.
  # Following AC_PROG_CC_C_O, we do the test twice because some
  # compilers refuse to overwrite an existing .o file with -o,
  # though they will create one.
  am_cv_prog_cc_c_o=yes
  for am_i in 1 2; do
    if AM_RUN_LOG([$CC -c conftest.$ac_ext -o conftest2.$ac_objext]) \
         && test -f conftest2.$ac_objext; then
      : OK
    else
      am_cv_prog_cc_c_o=no
      break
    fi
  done
  rm -f core conftest*
  unset am_i])
if test "$am_cv_prog_cc_c_o" != yes; then
   # Losing compiler, so override with the script.
   # FIXME: It is wrong to rewrite CC.
   # But if we don't then we get into trouble of one sort or another.
   # A longer-term fix would be to have automake use am__CC in this case,
   # and then we could set am__CC="\$(top_srcdir)/compile \$(CC)"
   CC="$am_aux_dir/compile $CC"
fi
AC_LANG_POP([C])])

# For backward compatibility.
AC_DEFUN_ONCE([AM_PROG_CC_C_O], [AC_REQUIRE([AC_PROG_CC])])

# Copyright (C) 2001-2021 Free Software Foundation, Inc.
#
# This file is free software; the Free Software Foundation
# gives unlimited permission to copy and/or distribute it,
# with or without modifications, as long as this notice is preserved.

# AM_RUN_LOG(COMMAND)
# -------------------
# Run COMMAND, save the exit status in ac_status, and log it.
# (This has been adapted from Autoconf's _AC_RUN_LOG macro.)
AC_DEFUN([AM_RUN_LOG],
[{ echo "$as_me:$LINENO: $1" >&AS_MESSAGE_LOG_FD
   ($1) >&AS_MESSAGE_LOG_FD 2>&AS_MESSAGE_LOG_FD
   ac_status=$?
   echo "$as_me:$LINENO: \$? = $ac_status" >&AS_MESSAGE_LOG_FD
   (exit $ac_status); }])

# Check to make sure that the build environment is sane.    -*- Autoconf -*-

# Copyright (C) 1996-2021 Free Software Foundation, Inc.
#
# This file is free software; the Free Software Foundation
# gives unlimited permission to copy and/or distribute it,
# with or without modifications, as long as this notice is preserved.

# AM_SANITY_CHECK
# ---------------
AC_DEFUN([AM_SANITY_CHECK],
[AC_MSG_CHECKING([whether build environment is sane])
# Reject unsafe characters in $srcdir or the absolute working directory
# name.  Accept space and tab only in the latter.
am_lf='
'
case `pwd` in
  *[[\\\"\#\$\&\'\`$am_lf]]*)
    AC_MSG_ERROR([unsafe absolute working directory name]);;
esac
case $srcdir in
  *[[\\\"\#\$\&\'\`$am_lf\ \	]]*)
    AC_MSG_ERROR([unsafe srcdir value: '$srcdir']);;
esac

# Do 'set' in a subshell so we don't clobber the current shell's
# arguments.  Must try -L first in case configure is actually a
# symlink; some systems play weird games with the mod time of symlinks
# (eg FreeBSD returns the mod time of the symlink's containing
# directory).
if (
   am_has_slept=no
   for am_try in 1 2; do
     echo "timestamp, slept: $am_has_slept" > conftest.file
     set X `ls -Lt "$srcdir/configure" conftest.file 2> /dev/null`
     if test "$[*]" = "X"; then
	# -L didn't work.
	set X `ls -t "$srcdir/configure" conftest.file`
     fi
     if test "$[*]" != "X $srcdir/configure conftest.file" \
	&& test "$[*]" != "X conftest.file $srcdir/configure"; then

	# If neither matched, then we have a broken ls.  This can happen
	# if, for instance, CONFIG_SHELL is bash and it inherits a
	# broken ls alias from the environment.  This has actually
	# happened.  Such a system could not be considered "sane".
	AC_MSG_ERROR([ls -t appears to fail.  Make sure there is not a broken
  alias in your environment])
     fi
     if test "$[2]" = conftest.file || test $am_try -eq 2; then
       break
     fi
     # Just in case.
     sleep 1
     am_has_slept=yes
   done
   test "$[2]" = conftest.file
   )
then
   # Ok.
   :
else
   AC_MSG_ERROR([newly created file is older than distributed files!
Check your system clock])
fi
AC_MSG_RESULT([yes])
# If we didn't sleep, we still need to ensure time stamps of config.status and
# generated files are strictly newer.
am_sleep_pid=
if grep 'slept: no' conftest.file >/dev/null 2>&1; then
  ( sleep 1 ) &
  am_sleep_pid=$!
fi
AC_CONFIG_COMMANDS_PRE(
  [AC_MSG_CHECKING([that generated files are newer than configure])
   if test -n "$am_sleep_pid"; then
     # Hide warnings about reused PIDs.
     wait $am_sleep_pid 2>/dev/null
   fi
   AC_MSG_RESULT([done])])
rm -f conftest.file
])

# Copyright (C) 2009-2021 Free Software Foundation, Inc.
#
# This file is free software; the Free Software Foundation
# gives unlimited permission to copy and/or distribute it,
# with or without modifications, as long as this notice is preserved.

# AM_SILENT_RULES([DEFAULT])
# --------------------------
# Enable less verbose build rules; with the default set to DEFAULT
# ("yes" being less verbose, "no" or empty being verbose).
AC_DEFUN([AM_SILENT_RULES],
[AC_ARG_ENABLE([silent-rules], [dnl
AS_HELP_STRING(
  [--enable-silent-rules],
  [less verbose build output (undo: "make V=1")])
AS_HELP_STRING(
  [--disable-silent-rules],
  [verbose build output (undo: "make V=0")])dnl
])
case $enable_silent_rules in @%:@ (((
  yes) AM_DEFAULT_VERBOSITY=0;;
   no) AM_DEFAULT_VERBOSITY=1;;
    *) AM_DEFAULT_VERBOSITY=m4_if([$1], [yes], [0], [1]);;
esac
dnl
dnl A few 'make' implementations (e.g., NonStop OS and NextStep)
dnl do not support nested variable expansions.
dnl See automake bug#9928 and bug#10237.
am_make=${MAKE-make}
AC_CACHE_CHECK([whether $am_make supports nested variables],
   [am_cv_make_support_nested_variables],
   [if AS_ECHO([['TRUE=$(BAR$(V))
BAR0=false
BAR1=true
V=1
am__doit:
	@$(TRUE)
.PHONY: am__doit']]) | $am_make -f - >/dev/null 2>&1; then
  am_cv_make_support_nested_variables=yes
else
  am_cv_make_support_nested_variables=no
fi])
if test $am_cv_make_support_nested_variables = yes; then
  dnl Using '$V' instead of '$(V)' breaks IRIX make.
  AM_V='$(V)'
  AM_DEFAULT_V='$(AM_DEFAULT_VERBOSITY)'
else
  AM_V=$AM_DEFAULT_VERBOSITY
  AM_DEFAULT_V=$AM_DEFAULT_VERBOSITY
fi
AC_SUBST([AM_V])dnl
AM_SUBST_NOTMAKE([AM_V])dnl
AC_SUBST([AM_DEFAULT_V])dnl
AM_SUBST_NOTMAKE([AM_DEFAULT_V])dnl
AC_SUBST([AM_DEFAULT_VERBOSITY])dnl
AM_BACKSLASH='\'
AC_SUBST([AM_BACKSLASH])dnl
_AM_SUBST_NOTMAKE([AM_BACKSLASH])dnl
])

# Copyright (C) 2001-2021 Free Software Foundation, Inc.
#
# This file is free software; the Free Software Foundation
# gives unlimited permission to copy and/or distribute it,
# with or without modifications, as long as this notice is preserved.

# AM_PROG_INSTALL_STRIP
# ---------------------
# One issue with vendor 'install' (even GNU) is that you can't
# specify the program used to strip binaries.  This is especially
# annoying in cross-compiling environments, where the build's strip
# is unlikely to handle the host's binaries.
# Fortunately install-sh will honor a STRIPPROG variable, so we
# always use install-sh in "make install-strip", and initialize
# STRIPPROG with the value of the STRIP variable (set by the user).
AC_DEFUN([AM_PROG_INSTALL_STRIP],
[AC_REQUIRE([AM_PROG_INSTALL_SH])dnl
# Installed binaries are usually stripped using 'strip' when the user
# run "make install-strip".  However 'strip' might not be the right
# tool to use in cross-compilation environments, therefore Automake
# will honor the 'STRIP' environment variable to overrule this program.
dnl Don't test for $cross_compiling = yes, because it might be 'maybe'.
if test "$cross_compiling" != no; then
  AC_CHECK_TOOL([STRIP], [strip], :)
fi
INSTALL_STRIP_PROGRAM="\$(install_sh) -c -s"
AC_SUBST([INSTALL_STRIP_PROGRAM])])

# Copyright (C) 2006-2021 Free Software Foundation, Inc.
#
# This file is free software; the Free Software Foundation
# gives unlimited permission to copy and/or distribute it,
# with or without modifications, as long as this notice is preserved.

# _AM_SUBST_NOTMAKE(VARIABLE)
# ---------------------------
# Prevent Automake from outputting VARIABLE = @VARIABLE@ in Makefile.in.
# This macro is traced by Automake.
AC_DEFUN([_AM_SUBST_NOTMAKE])

# AM_SUBST_NOTMAKE(VARIABLE)
# --------------------------
# Public sister of _AM_SUBST_NOTMAKE.
AC_DEFUN([AM_SUBST_NOTMAKE], [_AM_SUBST_NOTMAKE($@)])

# Check how to create a tarball.                            -*- Autoconf -*-

# Copyright (C) 2004-2021 Free Software Foundation, Inc.
#
# This file is free software; the Free Software Foundation
# gives unlimited permission to copy and/or distribute it,
# with or without modifications, as long as this notice is preserved.

# _AM_PROG_TAR(FORMAT)
# --------------------
# Check how to create a tarball in format FORMAT.
# FORMAT should be one of 'v7', 'ustar', or 'pax'.
#
# Substitute a variable $(am__tar) that is a command
# writing to stdout a FORMAT-tarball containing the directory
# $tardir.
#     tardir=directory && $(am__tar) > result.tar
#
# Substitute a variable $(am__untar) that extract such
# a tarball read from stdin.
#     $(am__untar) < result.tar
#
AC_DEFUN([_AM_PROG_TAR],
[# Always define AMTAR for backward compatibility.  Yes, it's still used
# in the wild :-(  We should find a proper way to deprecate it ...
AC_SUBST([AMTAR], ['$${TAR-tar}'])

# We'll loop over all known methods to create a tar archive until one works.
_am_tools='gnutar m4_if([$1], [ustar], [plaintar]) pax cpio none'

m4_if([$1], [v7],
  [am__tar='$${TAR-tar} chof - "$$tardir"' am__untar='$${TAR-tar} xf -'],

  [m4_case([$1],
    [ustar],
     [# The POSIX 1988 'ustar' format is defined with fixed-size fields.
      # There is notably a 21 bits limit for the UID and the GID.  In fact,
      # the 'pax' utility can hang on bigger UID/GID (see automake bug#8343
      # and bug#13588).
      am_max_uid=2097151 # 2^21 - 1
      am_max_gid=$am_max_uid
      # The $UID and $GID variables are not portable, so we need to resort
      # to the POSIX-mandated id(1) utility.  Errors in the 'id' calls
      # below are definitely unexpected, so allow the users to see them
      # (that is, avoid stderr redirection).
      am_uid=`id -u || echo unknown`
      am_gid=`id -g || echo unknown`
      AC_MSG_CHECKING([whether UID '$am_uid' is supported by ustar format])
      if test $am_uid -le $am_max_uid; then
         AC_MSG_RESULT([yes])
      else
         AC_MSG_RESULT([no])
         _am_tools=none
      fi
      AC_MSG_CHECKING([whether GID '$am_gid' is supported by ustar format])
      if test $am_gid -le $am_max_gid; then
         AC_MSG_RESULT([yes])
      else
        AC_MSG_RESULT([no])
        _am_tools=none
      fi],

  [pax],
    [],

  [m4_fatal([Unknown tar format])])

  AC_MSG_CHECKING([how to create a $1 tar archive])

  # Go ahead even if we have the value already cached.  We do so because we
  # need to set the values for the 'am__tar' and 'am__untar' variables.
  _am_tools=${am_cv_prog_tar_$1-$_am_tools}

  for _am_tool in $_am_tools; do
    case $_am_tool in
    gnutar)
      for _am_tar in tar gnutar gtar; do
        AM_RUN_LOG([$_am_tar --version]) && break
      done
      am__tar="$_am_tar --format=m4_if([$1], [pax], [posix], [$1]) -chf - "'"$$tardir"'
      am__tar_="$_am_tar --format=m4_if([$1], [pax], [posix], [$1]) -chf - "'"$tardir"'
      am__untar="$_am_tar -xf -"
      ;;
    plaintar)
      # Must skip GNU tar: if it does not support --format= it doesn't create
      # ustar tarball either.
      (tar --version) >/dev/null 2>&1 && continue
      am__tar='tar chf - "$$tardir"'
      am__tar_='tar chf - "$tardir"'
      am__untar='tar xf -'
      ;;
    pax)
      am__tar='pax -L -x $1 -w "$$tardir"'
      am__tar_='pax -L -x $1 -w "$tardir"'
      am__untar='pax -r'
      ;;
    cpio)
      am__tar='find "$$tardir" -print | cpio -o -H $1 -L'
      am__tar_='find "$tardir" -print | cpio -o -H $1 -L'
      am__untar='cpio -i -H $1 -d'
      ;;
    none)
      am__tar=false
      am__tar_=false
      am__untar=false
      ;;
    esac

    # If the value was cached, stop now.  We just wanted to have am__tar
    # and am__untar set.
    test -n "${am_cv_prog_tar_$1}" && break

    # tar/untar a dummy directory, and stop if the command works.
    rm -rf conftest.dir
    mkdir conftest.dir
    echo GrepMe > conftest.dir/file
    AM_RUN_LOG([tardir=conftest.dir && eval $am__tar_ >conftest.tar])
    rm -rf conftest.dir
    if test -s conftest.tar; then
      AM_RUN_LOG([$am__untar <conftest.tar])
      AM_RUN_LOG([cat conftest.dir/file])
      grep GrepMe conftest.dir/file >/dev/null 2>&1 && break
    fi
  done
  rm -rf conftest.dir

  AC_CACHE_VAL([am_cv_prog_tar_$1], [am_cv_prog_tar_$1=$_am_tool])
  AC_MSG_RESULT([$am_cv_prog_tar_$1])])

AC_SUBST([am__tar])
AC_SUBST([am__untar])
]) # _AM_PROG_TAR

m4_include([../../libtool.m4])
m4_include([../../ltoptions.m4])
m4_include([../../ltsugar.m4])
m4_include([../../ltversion.m4])
m4_include([../../lt~obsolete.m4])
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

# Copyright (C) 1998, 1999, 2000, 2001, 2003, 2004, 2005, 2006, 2008
# Free Software Foundation, Inc.
#
# This file is free software; the Free Software Foundation
# gives unlimited permission to copy and/or distribute it,
# with or without modifications, as long as this notice is preserved.

# serial 6

# AM_ENABLE_MULTILIB([MAKEFILE], [REL-TO-TOP-SRCDIR])
# ---------------------------------------------------
# Add --enable-multilib to configure.
AC_DEFUN([AM_ENABLE_MULTILIB],
[# Default to --enable-multilib
AC_ARG_ENABLE(multilib,
[  --enable-multilib       build many library versions (default)],
[case "$enableval" in
  yes) multilib=yes ;;
  no)  multilib=no ;;
  *)   AC_MSG_ERROR([bad value $enableval for multilib option]) ;;
 esac],
	      [multilib=yes])

# We may get other options which we leave undocumented:
# --with-target-subdir, --with-multisrctop, --with-multisubdir
# See config-ml.in if you want the gory details.

if test "$srcdir" = "."; then
  if test "$with_target_subdir" != "."; then
    multi_basedir="$srcdir/$with_multisrctop../$2"
  else
    multi_basedir="$srcdir/$with_multisrctop$2"
  fi
else
  multi_basedir="$srcdir/$2"
fi
AC_SUBST(multi_basedir)

# Even if the default multilib is not a cross compilation,
# it may be that some of the other multilibs are.
if test $cross_compiling = no && test $multilib = yes \
   && test "x${with_multisubdir}" != x ; then
   cross_compiling=maybe
fi

AC_OUTPUT_COMMANDS([
# Only add multilib support code if we just rebuilt the top-level
# Makefile.
case " $CONFIG_FILES " in
 *" ]m4_default([$1],Makefile)[ "*)
   ac_file=]m4_default([$1],Makefile)[ . ${multi_basedir}/config-ml.in
   ;;
esac],
		   [
srcdir="$srcdir"
host="$host"
target="$target"
with_multisubdir="$with_multisubdir"
with_multisrctop="$with_multisrctop"
with_target_subdir="$with_target_subdir"
ac_configure_args="${multilib_arg} ${ac_configure_args}"
multi_basedir="$multi_basedir"
CONFIG_SHELL=${CONFIG_SHELL-/bin/sh}
CC="$CC"
CXX="$CXX"
GFORTRAN="$GFORTRAN"
GDC="$GDC"])])dnl

dnl Fix Autoconf bugs by overriding broken internal Autoconf
dnl macros with backports of fixes from newer releases.
dnl
dnl The override bits of this file should be a no-op for the newest
dnl Autoconf version, which means they can be removed once the complete
dnl tree has moved to a new enough Autoconf version.
dnl
dnl The _GCC_AUTOCONF_VERSION_TEST ensures that exactly the desired
dnl Autoconf version is used.  It should be kept for consistency.

dnl Use ifdef/ifelse over m4_ifdef/m4_ifelse to be clean for 2.13.
ifdef([m4_PACKAGE_VERSION], [

dnl Provide m4_copy_force and m4_rename_force for old Autoconf versions.

m4_ifndef([m4_copy_force],
[m4_define([m4_copy_force],
[m4_ifdef([$2], [m4_undefine([$2])])m4_copy($@)])])

m4_ifndef([m4_rename_force],
[m4_define([m4_rename_force],
[m4_ifdef([$2], [m4_undefine([$2])])m4_rename($@)])])

dnl AC_DEFUN a commonly used macro so this file is picked up.
m4_copy([AC_PREREQ], [_AC_PREREQ])
AC_DEFUN([AC_PREREQ], [frob])
m4_copy_force([_AC_PREREQ], [AC_PREREQ])


dnl Ensure exactly this Autoconf version is used
m4_ifndef([_GCC_AUTOCONF_VERSION],
  [m4_define([_GCC_AUTOCONF_VERSION], [2.69])])

dnl Test for the exact version when AC_INIT is expanded.
dnl This allows to update the tree in steps (for testing)
dnl by putting
dnl   m4_define([_GCC_AUTOCONF_VERSION], [X.Y])
dnl in configure.ac before AC_INIT,
dnl without rewriting this file.
dnl Or for updating the whole tree at once with the definition above.
AC_DEFUN([_GCC_AUTOCONF_VERSION_CHECK],
[m4_if(m4_defn([_GCC_AUTOCONF_VERSION]),
  m4_defn([m4_PACKAGE_VERSION]), [],
  [m4_fatal([Please use exactly Autoconf ]_GCC_AUTOCONF_VERSION[ instead of ]m4_defn([m4_PACKAGE_VERSION])[.])])
])
m4_define([AC_INIT], m4_defn([AC_INIT])[
_GCC_AUTOCONF_VERSION_CHECK
])


dnl Ensure we do not use a buggy M4.
m4_if(m4_index([..wi.d.], [.d.]), [-1],
  [m4_fatal(m4_do([m4 with buggy strstr detected.  Please install
GNU M4 1.4.16 or newer and set the M4 environment variable]))])


dnl Fix 2.64 cross compile detection for AVR and RTEMS
dnl by not trying to compile fopen.
m4_if(m4_defn([m4_PACKAGE_VERSION]), [2.64],
  [m4_foreach([_GCC_LANG], [C, C++, Fortran, Fortran 77],
     [m4_define([_AC_LANG_IO_PROGRAM(]_GCC_LANG[)], m4_defn([AC_LANG_PROGRAM(]_GCC_LANG[)]))])])

m4_version_prereq([2.66],, [
dnl We need AC_CHECK_DECL which works for overloaded C++ functions.

# _AC_CHECK_DECL_BODY
# -------------------
# Shell function body for AC_CHECK_DECL.
m4_define([_AC_CHECK_DECL_BODY],
[  AS_LINENO_PUSH([$[]1])
  [as_decl_name=`echo $][2|sed 's/ *(.*//'`]
  [as_decl_use=`echo $][2|sed -e 's/(/((/' -e 's/)/) 0&/' -e 's/,/) 0& (/g'`]
  AC_CACHE_CHECK([whether $as_decl_name is declared], [$[]3],
  [AC_COMPILE_IFELSE([AC_LANG_PROGRAM([$[]4],
[@%:@ifndef $[]as_decl_name
@%:@ifdef __cplusplus
  (void) $[]as_decl_use;
@%:@else
  (void) $[]as_decl_name;
@%:@endif
@%:@endif
])],
		   [AS_VAR_SET([$[]3], [yes])],
		   [AS_VAR_SET([$[]3], [no])])])
  AS_LINENO_POP
])# _AC_CHECK_DECL_BODY

# _AC_CHECK_DECLS(SYMBOL, ACTION-IF_FOUND, ACTION-IF-NOT-FOUND,
#                 INCLUDES)
# -------------------------------------------------------------
# Helper to AC_CHECK_DECLS, which generates the check for a single
# SYMBOL with INCLUDES, performs the AC_DEFINE, then expands
# ACTION-IF-FOUND or ACTION-IF-NOT-FOUND.
m4_define([_AC_CHECK_DECLS],
[AC_CHECK_DECL([$1], [ac_have_decl=1], [ac_have_decl=0], [$4])]dnl
[AC_DEFINE_UNQUOTED(AS_TR_CPP(m4_bpatsubst(HAVE_DECL_[$1],[ *(.*])),
  [$ac_have_decl],
  [Define to 1 if you have the declaration of `$1',
   and to 0 if you don't.])]dnl
[m4_ifvaln([$2$3], [AS_IF([test $ac_have_decl = 1], [$2], [$3])])])

])

dnl If flex/lex are not found, the top level configure sets LEX to
dnl "/path_to/missing flex".  When AC_PROG_LEX tries to find the flex
dnl output file, it calls $LEX to do so, but the current lightweight
dnl "missing" won't create a file.  This results in an error.
dnl Avoid calling the bulk of AC_PROG_LEX when $LEX is "missing".
AC_DEFUN_ONCE([AC_PROG_LEX],
[AC_CHECK_PROGS(LEX, flex lex, :)
case "$LEX" in
  :|*"missing "*) ;;
  *) _AC_PROG_LEX_YYTEXT_DECL ;;
esac])

])

dnl toolexeclibdir override support.
dnl Copyright (C) 2020  Free Software Foundation, Inc.
dnl
dnl This program is free software; you can redistribute it and/or modify
dnl it under the terms of the GNU General Public License as published by
dnl the Free Software Foundation; either version 3, or (at your option)
dnl any later version.
dnl
dnl This program is distributed in the hope that it will be useful,
dnl but WITHOUT ANY WARRANTY; without even the implied warranty of
dnl MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
dnl GNU General Public License for more details.
dnl
dnl You should have received a copy of the GNU General Public License
dnl along with this program; see the file COPYING3.  If not see
dnl <http://www.gnu.org/licenses/>.

AC_DEFUN([GCC_WITH_TOOLEXECLIBDIR],
[AC_ARG_WITH(toolexeclibdir,
  [AS_HELP_STRING([--with-toolexeclibdir=DIR],
		  [install libraries built with a cross compiler within DIR])],
  [dnl
case ${with_toolexeclibdir} in
  /)
    ;;
  */)
    with_toolexeclibdir=`echo $with_toolexeclibdir | sed 's,/$,,'`
    ;;
esac],
  [with_toolexeclibdir=no])
])

