#!/bin/sh
#
# E.S.O. - VLT project
#
# "@(#) $Id: tclutil.sh.in,v 1.1.1.1 2009/03/31 14:11:52 cguirao Exp $" 
#
# Startup script for Tcl/Tk applications.
#
#  who      when     what
# -------- -------- ------------------
# abrighto 11/10/95 created 
# abrighto 26/11/97 modified to use astrotcl and tclutil pkgs
# pbiereic 05/08/99 to be used with the appended tcl file (see Makefile)
# abrighto 20/12/05 rewrote and moved here from demos dir

# Make sure the shared libraries can be found
DYLD_LIBRARY_PATH="/Users/fitz/gmmps-1.5.1-MacOS/lib:/Users/fitz/gmmps-1.5.1-MacOS/lib:${DYLD_LIBRARY_PATH}"
export DYLD_LIBRARY_PATH

TCLLIBPATH="/Users/fitz/gmmps-1.5.1-MacOS/lib"
export TCLLIBPATH

exec /Users/fitz/gmmps-1.5.1-MacOS/bin/wish8.4 "$@"
