# The Flutter tooling requires that developers have CMake 3.10 or later
# installed. You should not increase this version, as doing so will cause
# the plugin to fail to compile for some customers of the plugin.
cmake_minimum_required(VERSION 3.10)

project(spin_http_library VERSION 0.0.1 LANGUAGES C)

add_library(spin-http SHARED
  "spin-http.c"
)

set_target_properties(spin-http PROPERTIES
  PUBLIC_HEADER spin-http.h
  OUTPUT_NAME "spin-http"
)

target_compile_definitions(spin-http PUBLIC DART_SHARED_LIB)
