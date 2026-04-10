#! smake
#	$Header: /project16/CVS/tcltk/tkimg1.3/libtiff/port/Makefile.in,v 1.1.1.1 2006/01/16 18:12:02 abrighto Exp $
#
# Warning, this file was automatically created by the TIFF configure script
#
# Tag Image File Format Library
#
# Copyright (c) 1995-1997 Sam Leffler
# Copyright (c) 1995-1997 Silicon Graphics, Inc.
# 
# Permission to use, copy, modify, distribute, and sell this software and 
# its documentation for any purpose is hereby granted without fee, provided
# that (i) the above copyright notices and this permission notice appear in
# all copies of the software and related documentation, and (ii) the names of
# Sam Leffler and Silicon Graphics may not be used in any advertising or
# publicity relating to the software without the specific, prior written
# permission of Sam Leffler and Silicon Graphics.
# 
# THE SOFTWARE IS PROVIDED "AS-IS" AND WITHOUT WARRANTY OF ANY KIND, 
# EXPRESS, IMPLIED OR OTHERWISE, INCLUDING WITHOUT LIMITATION, ANY 
# WARRANTY OF MERCHANTABILITY OR FITNESS FOR A PARTICULAR PURPOSE.  
# 
# IN NO EVENT SHALL SAM LEFFLER OR SILICON GRAPHICS BE LIABLE FOR
# ANY SPECIAL, INCIDENTAL, INDIRECT OR CONSEQUENTIAL DAMAGES OF ANY KIND,
# OR ANY DAMAGES WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS,
# WHETHER OR NOT ADVISED OF THE POSSIBILITY OF DAMAGE, AND ON ANY THEORY OF 
# LIABILITY, ARISING OUT OF OR IN CONNECTION WITH THE USE OR PERFORMANCE 
# OF THIS SOFTWARE.
#
SRCDIR	= .././../port
VPATH	= .././../port

#
# VERSION:	v3.6.1
# DATE:		Thu Apr  9 16:28:04 MST 2026
# TARGET:	-apple-darwin25.3.0
# CCOMPILER:	/usr/bin/gcc
#

SHELL	= /bin/sh
SCRIPT_SH = /bin/sh
NULL	=
CC	= /usr/bin/gcc
AR	= /usr/bin/ar
AROPTS	= rc
RANLIB	= :

IPATH	= -I. -I${SRCDIR}
COPTS	= -g
OPTIMIZER=-O
CFLAGS	=  ${COPTS} ${OPTIMIZER} ${IPATH}

CFILES	=  strcasecmp.c strtoul.c getopt.c
OBJECTS	= ${CFILES:.c=.o}
TARGETS	= libport.a

default all: ${TARGETS}

libport.a: ${OBJECTS}
	@rm -f $@;
	${AR} ${AROPTS} $@ ${OBJECTS}
	${RANLIB} $@
${PORT}/libport.a: libport.a

install: default

clean:
	rm -f ${TARGETS} ${OBJECTS} core a.out
