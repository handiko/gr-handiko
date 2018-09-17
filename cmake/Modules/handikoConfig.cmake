INCLUDE(FindPkgConfig)
PKG_CHECK_MODULES(PC_HANDIKO handiko)

FIND_PATH(
    HANDIKO_INCLUDE_DIRS
    NAMES handiko/api.h
    HINTS $ENV{HANDIKO_DIR}/include
        ${PC_HANDIKO_INCLUDEDIR}
    PATHS ${CMAKE_INSTALL_PREFIX}/include
          /usr/local/include
          /usr/include
)

FIND_LIBRARY(
    HANDIKO_LIBRARIES
    NAMES gnuradio-handiko
    HINTS $ENV{HANDIKO_DIR}/lib
        ${PC_HANDIKO_LIBDIR}
    PATHS ${CMAKE_INSTALL_PREFIX}/lib
          ${CMAKE_INSTALL_PREFIX}/lib64
          /usr/local/lib
          /usr/local/lib64
          /usr/lib
          /usr/lib64
)

INCLUDE(FindPackageHandleStandardArgs)
FIND_PACKAGE_HANDLE_STANDARD_ARGS(HANDIKO DEFAULT_MSG HANDIKO_LIBRARIES HANDIKO_INCLUDE_DIRS)
MARK_AS_ADVANCED(HANDIKO_LIBRARIES HANDIKO_INCLUDE_DIRS)

