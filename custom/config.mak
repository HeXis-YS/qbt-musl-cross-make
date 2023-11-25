# STAT = -static --static
FLAG = -g0 -O2 -Wno-error

ifneq ($(NATIVE),)
COMMON_CONFIG += CC="$(HOST)-gcc ${STAT}" CXX="$(HOST)-g++ ${STAT}" FC="$(HOST)-gfortran ${STAT}"
else
COMMON_CONFIG += CC="gcc ${STAT}" CXX="g++ ${STAT}" FC="gfortran ${STAT}"
endif

COMMON_CONFIG += --disable-gprofng --disable-shared --enable-static --enable-lto CFLAGS="${FLAG}" CXXFLAGS="${FLAG}" FFLAGS="${FLAG}" LDFLAGS="-s ${STAT}"

BINUTILS_CONFIG +=
GCC_CONFIG += --disable-libquadmath --disable-libquadmath-support --disable-libgomp

-include versions.mak
