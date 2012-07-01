### libuv ###

# Defines
set(EXT_NAME UV)
option(USE_SYSTEM_${EXT_NAME} "libuv system libs" 1)
set(EXT_DIR libuv)

# this is for non system lib build
set(EXT_URL ${CMAKE_SOURCE_DIR}/tarballs/uv.tar.bz2)
set(EXT_MD5 3329284ce77d92cb23a1dc6a36b47195)

if (MSVC)
  set(EXT_LINK_LIB uv.lib)
else()
  set(EXT_LINK_LIB libuv.a)
endif()

luavit_add_ext(${EXT_NAME} external ${EXT_DIR} ${EXT_URL} ${EXT_MD5} ${EXT_LINK_LIB} include)
include_directories(${SOURCE_DIR}/src/ares)
