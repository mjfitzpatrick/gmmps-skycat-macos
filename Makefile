# Makefile

# change these to the install prefix and exec-prefix values
prefix = /usr/local

MAKEFILE_DIR := $(dir $(abspath $(lastword $(MAKEFILE_LIST))))
prefix := $(dir $(MAKEFILE_DIR))

exec_prefix = $(prefix)


# Tcl and extensions
TCLTK = tcltk-8.4.11
SKYCAT = skycat-3.1.4

# run make clean in these dirs
subdirs = $(TCLTK) $(SKYCAT)

CONFIGURE = ./configure --prefix=$(prefix) --exec_prefix=$(exec_prefix) --enable-shared

INSTALL = ./install.sh


all: FORCE
	($(INSTALL) && /bin/rm -rf */*.dSYM */*/*.dSYM */*/*/*.dSYM) || exit 1

clean: FORCE
	(cd $(TCLTK)  && $(MAKE) clean) || exit 1
	(cd $(SKYCAT) && $(MAKE) clean) || exit 1
	(/bin/rm -rf bin bin.* lib lib.* man share include _spool*)
	(/bin/rm -rf */_spool* */*/_spool* */*/*/_spool* */*/*/*/_spool*)

distclean: FORCE
	($(MAKE) clean) || exit 1
	set -x; for i in $(subdirs) ; do (cd $$i && $(MAKE) distclean) ; done

FORCE:
