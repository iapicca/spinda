cmake_minimum_required(VERSION 3.10)

project(spin_http_library VERSION 0.0.1 LANGUAGES C)

add_library(spin-http SHARED
  "spin-http.c"
)

add_library(wasi-outbound-http SHARED
  "wasi-outbound-http.c"
)

set_target_properties(spin-http PROPERTIES
  PUBLIC_HEADER spin-http.h
  OUTPUT_NAME "spin-http"
)

set_target_properties(wasi-outbound-http PROPERTIES
  PUBLIC_HEADER wasi-outbound-http.h
  OUTPUT_NAME "wasi-outbound-http"
)

target_compile_definitions(spin-http PUBLIC DART_SHARED_LIB)

target_compile_definitions(wasi-outbound-http PUBLIC DART_SHARED_LIB)
