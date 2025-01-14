################################################################################
#
# CMake target configuration file for MT7620A mipsel-openwrt-linux-gnu
#
# Copyright (c) 2016, Kalycito Infotech Pvt. Ltd.
# All rights reserved.
#
# Redistribution and use in source and binary forms, with or without
# modification, are permitted provided that the following conditions are met:
#     * Redistributions of source code must retain the above copyright
#       notice, this list of conditions and the following disclaimer.
#     * Redistributions in binary form must reproduce the above copyright
#       notice, this list of conditions and the following disclaimer in the
#       documentation and/or other materials provided with the distribution.
#     * Neither the name of the copyright holders nor the
#       names of its contributors may be used to endorse or promote products
#       derived from this software without specific prior written permission.
#
# THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND
# ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
# WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
# DISCLAIMED. IN NO EVENT SHALL COPYRIGHT HOLDERS BE LIABLE FOR ANY
# DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
# (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
# LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND
# ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
# (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
# SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
################################################################################

SET(MT7628N_SDK_DIR /home/irich678/Work/openwrt22.03/staging_dir CACHE STRING "MT7628N SDK toolchain path")

################################################################################
# Name of the target platform
SET(CMAKE_SYSTEM MIPSEL-openwrt-linux)
SET(CMAKE_SYSTEM_NAME Linux)
SET(CMAKE_SYSTEM_PROCESSOR mipsel)

# Version of the system
SET(CMAKE_SYSTEM_VERSION 1)

# specify the cross compiler
SET(MAKE_CROSS_COMPILE ${MT7628N_SDK_DIR}/toolchain-mipsel_24kc_gcc-11.2.0_glibc/bin/mipsel-openwrt-linux-gnu-)
SET(CMAKE_C_COMPILER ${MAKE_CROSS_COMPILE}gcc)
SET(CMAKE_CXX_COMPILER ${MAKE_CROSS_COMPILE}g++)
SET(CMAKE_ASM-ATT_COMPILER ${MAKE_CROSS_COMPILE}as)

SET(CMAKE_FIND_ROOT_PATH ${MT7628N_SDK_DIR}/toolchain-mipsel_24kc_gcc-11.2.0_glibc;${MT7628N_SDK_DIR}/target-mipsel_24kc_glibc)
# search for programs in the build host directories
SET(CMAKE_FIND_ROOT_PATH_MODE_PROGRAM ONLY)
# for libraries in the target and build host directories
SET(CMAKE_FIND_ROOT_PATH_MODE_LIBRARY BOTH)
# for headers in the target directories
SET(CMAKE_FIND_ROOT_PATH_MODE_INCLUDE ONLY)

# cross compiler directives
SET(MAKE_KERNEL_ARCH mips)
SET(MAKE_KERNEL_CROSS_COMPILE ${MAKE_CROSS_COMPILE})

SET(CMAKE_INSTALL_PREFIX_INITIALIZED_TO_DEFAULT ON)
