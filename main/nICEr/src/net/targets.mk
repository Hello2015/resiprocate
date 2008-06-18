# Copyright (c) 2007, Adobe Systems, Incorporated
# All rights reserved.
# 
# Redistribution and use in source and binary forms, with or without
# modification, are permitted provided that the following conditions are
# met:
# 
# * Redistributions of source code must retain the above copyright
#   notice, this list of conditions and the following disclaimer.
# 
# * Redistributions in binary form must reproduce the above copyright
#   notice, this list of conditions and the following disclaimer in the
#   documentation and/or other materials provided with the distribution.
# 
# * Neither the name of Adobe Systems, Network Resonance nor the names of its
#   contributors may be used to endorse or promote products derived from
#   this software without specific prior written permission.
# 
# THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
# "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
# LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR
# A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT
# OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,
# SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT
# LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,
# DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY
# THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
# (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
# OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

# ICE_NET_ARCHIVE:
#    source files to compile to object and to place in a library archive
#
# ICE_NET_ARCHIVE_NAME:
#    the library name to use to archive the object files
#
# ICE_NET_ARCHIVE_TYPE:
#    either 'static', 'dynamic', or 'jni' (the default is 'static')
#
# ICE_NET_AUTOGENERATED:
#    whether this targets.mk is autogenerated (either 'true' or 'false')
#
# ICE_NET_COMPILE:
#    source files to compile to object
#
# ICE_NET_COPY:
#    files to copy to the build directory
#
# ICE_NET_GLOBAL_CFLAGS:
#    preprocessor and compile-time flags specific to compiling
#    everything
#
# ICE_NET_GLOBAL_LDFLAGS:
#    link-time flags specific to linking everything
#
# ICE_NET_LINK:
#    source files compile and link
#
# ICE_NET_LOCAL_CFLAGS:
#    preprocessor and compile-time flags specific to compiling only
#    the files in this module directory
#
# ICE_NET_LOCAL_LDFLAGS:
#    link-time flags specific to linking only the files in
#    this module directory
#
# ICE_NET_PREFIX:
#    defines the module name, which also serves as the
#    prefix for all the variable names defined in this file
#
# ICE_NET_SUBDIRS:
#    subdirectories containing additional targets.mk files
#
ICE_NET_ARCHIVE                   = nr_socket.c nr_socket_local.c \
                                    transport_addr.c transport_addr_reg.c
ICE_NET_ARCHIVE_NAME              =
ICE_NET_ARCHIVE_TYPE              =
ICE_NET_AUTOGENERATED             = true
ICE_NET_COMPILE                   =
ICE_NET_COPY                      =
ICE_NET_GLOBAL_CFLAGS             =
ICE_NET_GLOBAL_LDFLAGS            =
ICE_NET_LINK                      =
ICE_NET_LOCAL_CFLAGS              =
ICE_NET_LOCAL_LDFLAGS             =
ICE_NET_PREFIX                    = ICE_NET
ICE_NET_SUBDIRS                   =



#
#    AUTOMATICALLY-GENERATED SECTION
#



#
#    LOCAL ENVIRONMENT
#
ICE_NET_BUILD                     = nr_socket.$(OBJSUFFIX) nr_socket.d \
                                    nr_socket_local.$(OBJSUFFIX) \
                                    nr_socket_local.d \
                                    transport_addr.$(OBJSUFFIX) \
                                    transport_addr.d \
                                    transport_addr_reg.$(OBJSUFFIX) \
                                    transport_addr_reg.d



#
#    GLOBAL ENVIRONMENT
#
GLOBAL_BUILD                     += $(ICE_NET_BUILD)
GLOBAL_CFLAGS                    += $(ICE_NET_GLOBAL_CFLAGS) -I$(ICE_NET_SRCDIR)
GLOBAL_LDFLAGS                   += $(ICE_NET_GLOBAL_LDFLAGS)



#
#    GENERIC DEPENDENCIES
#
all:                                $(ICE_NET_BUILD)
depend:                             nr_socket.d
depend:                             nr_socket_local.d
depend:                             transport_addr.d
depend:                             transport_addr_reg.d



#
#    BUILD DEPENDENCIES
#

nr_socket.$(OBJSUFFIX): $(ICE_NET_SRCDIR)nr_socket.c nr_socket.d
	$(COMPILE.c) $@ $< $(ICE_NET_LOCAL_CFLAGS) $(GLOBAL_CFLAGS)

nr_socket.d: $(ICE_NET_SRCDIR)nr_socket.c
	$(COMPILE.c) $@ $< -MM -MG $(ICE_NET_LOCAL_CFLAGS) $(GLOBAL_CFLAGS)

nr_socket_local.$(OBJSUFFIX): $(ICE_NET_SRCDIR)nr_socket_local.c nr_socket_local.d
	$(COMPILE.c) $@ $< $(ICE_NET_LOCAL_CFLAGS) $(GLOBAL_CFLAGS)

nr_socket_local.d: $(ICE_NET_SRCDIR)nr_socket_local.c
	$(COMPILE.c) $@ $< -MM -MG $(ICE_NET_LOCAL_CFLAGS) $(GLOBAL_CFLAGS)

transport_addr.$(OBJSUFFIX): $(ICE_NET_SRCDIR)transport_addr.c transport_addr.d
	$(COMPILE.c) $@ $< $(ICE_NET_LOCAL_CFLAGS) $(GLOBAL_CFLAGS)

transport_addr.d: $(ICE_NET_SRCDIR)transport_addr.c
	$(COMPILE.c) $@ $< -MM -MG $(ICE_NET_LOCAL_CFLAGS) $(GLOBAL_CFLAGS)

transport_addr_reg.$(OBJSUFFIX): $(ICE_NET_SRCDIR)transport_addr_reg.c transport_addr_reg.d
	$(COMPILE.c) $@ $< $(ICE_NET_LOCAL_CFLAGS) $(GLOBAL_CFLAGS)

transport_addr_reg.d: $(ICE_NET_SRCDIR)transport_addr_reg.c
	$(COMPILE.c) $@ $< -MM -MG $(ICE_NET_LOCAL_CFLAGS) $(GLOBAL_CFLAGS)

$(GLOBAL_LIBNAME): nr_socket.$(OBJSUFFIX)

$(GLOBAL_LIBNAME): nr_socket_local.$(OBJSUFFIX)

$(GLOBAL_LIBNAME): transport_addr.$(OBJSUFFIX)

$(GLOBAL_LIBNAME): transport_addr_reg.$(OBJSUFFIX)