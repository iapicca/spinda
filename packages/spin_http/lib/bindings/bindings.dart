// ignore_for_file: always_specify_types, constant_identifier_names
// ignore_for_file: camel_case_types
// ignore_for_file: non_constant_identifier_names

// AUTO GENERATED FILE, DO NOT EDIT.
//
// Generated by `package:ffigen`.
import 'dart:ffi' as ffi;

/// Bindings for `src/spin_http.h` and `'src/wasi-outbound-http.h'`.
///
/// Regenerate bindings with `flutter pub run ffigen --config ffigen.yaml`.
///
class SpinHttpBindings {
  /// Holds the symbol lookup function.
  final ffi.Pointer<T> Function<T extends ffi.NativeType>(String symbolName)
      _lookup;

  /// The symbols are looked up in [dynamicLibrary].
  SpinHttpBindings(ffi.DynamicLibrary dynamicLibrary)
      : _lookup = dynamicLibrary.lookup;

  /// The symbols are looked up with [lookup].
  SpinHttpBindings.fromLookup(
      ffi.Pointer<T> Function<T extends ffi.NativeType>(String symbolName)
          lookup)
      : _lookup = lookup;

  void spin_http_string_set(
    ffi.Pointer<spin_http_string_t> ret,
    ffi.Pointer<ffi.Char> s,
  ) {
    return _spin_http_string_set(
      ret,
      s,
    );
  }

  late final _spin_http_string_setPtr = _lookup<
      ffi.NativeFunction<
          ffi.Void Function(ffi.Pointer<spin_http_string_t>,
              ffi.Pointer<ffi.Char>)>>('spin_http_string_set');
  late final _spin_http_string_set = _spin_http_string_setPtr.asFunction<
      void Function(ffi.Pointer<spin_http_string_t>, ffi.Pointer<ffi.Char>)>();

  void spin_http_string_dup(
    ffi.Pointer<spin_http_string_t> ret,
    ffi.Pointer<ffi.Char> s,
  ) {
    return _spin_http_string_dup(
      ret,
      s,
    );
  }

  late final _spin_http_string_dupPtr = _lookup<
      ffi.NativeFunction<
          ffi.Void Function(ffi.Pointer<spin_http_string_t>,
              ffi.Pointer<ffi.Char>)>>('spin_http_string_dup');
  late final _spin_http_string_dup = _spin_http_string_dupPtr.asFunction<
      void Function(ffi.Pointer<spin_http_string_t>, ffi.Pointer<ffi.Char>)>();

  void spin_http_string_free(
    ffi.Pointer<spin_http_string_t> ret,
  ) {
    return _spin_http_string_free(
      ret,
    );
  }

  late final _spin_http_string_freePtr = _lookup<
      ffi.NativeFunction<
          ffi.Void Function(
              ffi.Pointer<spin_http_string_t>)>>('spin_http_string_free');
  late final _spin_http_string_free = _spin_http_string_freePtr
      .asFunction<void Function(ffi.Pointer<spin_http_string_t>)>();

  void spin_http_body_free(
    ffi.Pointer<spin_http_body_t> ptr,
  ) {
    return _spin_http_body_free(
      ptr,
    );
  }

  late final _spin_http_body_freePtr = _lookup<
          ffi.NativeFunction<ffi.Void Function(ffi.Pointer<spin_http_body_t>)>>(
      'spin_http_body_free');
  late final _spin_http_body_free = _spin_http_body_freePtr
      .asFunction<void Function(ffi.Pointer<spin_http_body_t>)>();

  void spin_http_tuple2_string_string_free(
    ffi.Pointer<spin_http_tuple2_string_string_t> ptr,
  ) {
    return _spin_http_tuple2_string_string_free(
      ptr,
    );
  }

  late final _spin_http_tuple2_string_string_freePtr = _lookup<
          ffi.NativeFunction<
              ffi.Void Function(
                  ffi.Pointer<spin_http_tuple2_string_string_t>)>>(
      'spin_http_tuple2_string_string_free');
  late final _spin_http_tuple2_string_string_free =
      _spin_http_tuple2_string_string_freePtr.asFunction<
          void Function(ffi.Pointer<spin_http_tuple2_string_string_t>)>();

  void spin_http_headers_free(
    ffi.Pointer<spin_http_headers_t> ptr,
  ) {
    return _spin_http_headers_free(
      ptr,
    );
  }

  late final _spin_http_headers_freePtr = _lookup<
      ffi.NativeFunction<
          ffi.Void Function(
              ffi.Pointer<spin_http_headers_t>)>>('spin_http_headers_free');
  late final _spin_http_headers_free = _spin_http_headers_freePtr
      .asFunction<void Function(ffi.Pointer<spin_http_headers_t>)>();

  void spin_http_params_free(
    ffi.Pointer<spin_http_params_t> ptr,
  ) {
    return _spin_http_params_free(
      ptr,
    );
  }

  late final _spin_http_params_freePtr = _lookup<
      ffi.NativeFunction<
          ffi.Void Function(
              ffi.Pointer<spin_http_params_t>)>>('spin_http_params_free');
  late final _spin_http_params_free = _spin_http_params_freePtr
      .asFunction<void Function(ffi.Pointer<spin_http_params_t>)>();

  void spin_http_uri_free(
    ffi.Pointer<spin_http_uri_t> ptr,
  ) {
    return _spin_http_uri_free(
      ptr,
    );
  }

  late final _spin_http_uri_freePtr = _lookup<
          ffi.NativeFunction<ffi.Void Function(ffi.Pointer<spin_http_uri_t>)>>(
      'spin_http_uri_free');
  late final _spin_http_uri_free = _spin_http_uri_freePtr
      .asFunction<void Function(ffi.Pointer<spin_http_uri_t>)>();

  void spin_http_option_body_free(
    ffi.Pointer<spin_http_option_body_t> ptr,
  ) {
    return _spin_http_option_body_free(
      ptr,
    );
  }

  late final _spin_http_option_body_freePtr = _lookup<
          ffi.NativeFunction<
              ffi.Void Function(ffi.Pointer<spin_http_option_body_t>)>>(
      'spin_http_option_body_free');
  late final _spin_http_option_body_free = _spin_http_option_body_freePtr
      .asFunction<void Function(ffi.Pointer<spin_http_option_body_t>)>();

  void spin_http_request_free(
    ffi.Pointer<spin_http_request_t> ptr,
  ) {
    return _spin_http_request_free(
      ptr,
    );
  }

  late final _spin_http_request_freePtr = _lookup<
      ffi.NativeFunction<
          ffi.Void Function(
              ffi.Pointer<spin_http_request_t>)>>('spin_http_request_free');
  late final _spin_http_request_free = _spin_http_request_freePtr
      .asFunction<void Function(ffi.Pointer<spin_http_request_t>)>();

  void spin_http_option_headers_free(
    ffi.Pointer<spin_http_option_headers_t> ptr,
  ) {
    return _spin_http_option_headers_free(
      ptr,
    );
  }

  late final _spin_http_option_headers_freePtr = _lookup<
          ffi.NativeFunction<
              ffi.Void Function(ffi.Pointer<spin_http_option_headers_t>)>>(
      'spin_http_option_headers_free');
  late final _spin_http_option_headers_free = _spin_http_option_headers_freePtr
      .asFunction<void Function(ffi.Pointer<spin_http_option_headers_t>)>();

  void spin_http_response_free(
    ffi.Pointer<spin_http_response_t> ptr,
  ) {
    return _spin_http_response_free(
      ptr,
    );
  }

  late final _spin_http_response_freePtr = _lookup<
      ffi.NativeFunction<
          ffi.Void Function(
              ffi.Pointer<spin_http_response_t>)>>('spin_http_response_free');
  late final _spin_http_response_free = _spin_http_response_freePtr
      .asFunction<void Function(ffi.Pointer<spin_http_response_t>)>();

  void spin_http_handle_http_request(
    ffi.Pointer<spin_http_request_t> req,
    ffi.Pointer<spin_http_response_t> ret0,
  ) {
    return _spin_http_handle_http_request(
      req,
      ret0,
    );
  }

  late final _spin_http_handle_http_requestPtr = _lookup<
          ffi.NativeFunction<
              ffi.Void Function(ffi.Pointer<spin_http_request_t>,
                  ffi.Pointer<spin_http_response_t>)>>(
      'spin_http_handle_http_request');
  late final _spin_http_handle_http_request =
      _spin_http_handle_http_requestPtr.asFunction<
          void Function(ffi.Pointer<spin_http_request_t>,
              ffi.Pointer<spin_http_response_t>)>();

  void wasi_outbound_http_string_set(
    ffi.Pointer<wasi_outbound_http_string_t> ret,
    ffi.Pointer<ffi.Char> s,
  ) {
    return _wasi_outbound_http_string_set(
      ret,
      s,
    );
  }

  late final _wasi_outbound_http_string_setPtr = _lookup<
      ffi.NativeFunction<
          ffi.Void Function(ffi.Pointer<wasi_outbound_http_string_t>,
              ffi.Pointer<ffi.Char>)>>('wasi_outbound_http_string_set');
  late final _wasi_outbound_http_string_set =
      _wasi_outbound_http_string_setPtr.asFunction<
          void Function(ffi.Pointer<wasi_outbound_http_string_t>,
              ffi.Pointer<ffi.Char>)>();

  void wasi_outbound_http_string_dup(
    ffi.Pointer<wasi_outbound_http_string_t> ret,
    ffi.Pointer<ffi.Char> s,
  ) {
    return _wasi_outbound_http_string_dup(
      ret,
      s,
    );
  }

  late final _wasi_outbound_http_string_dupPtr = _lookup<
      ffi.NativeFunction<
          ffi.Void Function(ffi.Pointer<wasi_outbound_http_string_t>,
              ffi.Pointer<ffi.Char>)>>('wasi_outbound_http_string_dup');
  late final _wasi_outbound_http_string_dup =
      _wasi_outbound_http_string_dupPtr.asFunction<
          void Function(ffi.Pointer<wasi_outbound_http_string_t>,
              ffi.Pointer<ffi.Char>)>();

  void wasi_outbound_http_string_free(
    ffi.Pointer<wasi_outbound_http_string_t> ret,
  ) {
    return _wasi_outbound_http_string_free(
      ret,
    );
  }

  late final _wasi_outbound_http_string_freePtr = _lookup<
          ffi.NativeFunction<
              ffi.Void Function(ffi.Pointer<wasi_outbound_http_string_t>)>>(
      'wasi_outbound_http_string_free');
  late final _wasi_outbound_http_string_free =
      _wasi_outbound_http_string_freePtr.asFunction<
          void Function(ffi.Pointer<wasi_outbound_http_string_t>)>();

  void wasi_outbound_http_body_free(
    ffi.Pointer<wasi_outbound_http_body_t> ptr,
  ) {
    return _wasi_outbound_http_body_free(
      ptr,
    );
  }

  late final _wasi_outbound_http_body_freePtr = _lookup<
          ffi.NativeFunction<
              ffi.Void Function(ffi.Pointer<wasi_outbound_http_body_t>)>>(
      'wasi_outbound_http_body_free');
  late final _wasi_outbound_http_body_free = _wasi_outbound_http_body_freePtr
      .asFunction<void Function(ffi.Pointer<wasi_outbound_http_body_t>)>();

  void wasi_outbound_http_tuple2_string_string_free(
    ffi.Pointer<wasi_outbound_http_tuple2_string_string_t> ptr,
  ) {
    return _wasi_outbound_http_tuple2_string_string_free(
      ptr,
    );
  }

  late final _wasi_outbound_http_tuple2_string_string_freePtr = _lookup<
          ffi.NativeFunction<
              ffi.Void Function(
                  ffi.Pointer<wasi_outbound_http_tuple2_string_string_t>)>>(
      'wasi_outbound_http_tuple2_string_string_free');
  late final _wasi_outbound_http_tuple2_string_string_free =
      _wasi_outbound_http_tuple2_string_string_freePtr.asFunction<
          void Function(
              ffi.Pointer<wasi_outbound_http_tuple2_string_string_t>)>();

  void wasi_outbound_http_headers_free(
    ffi.Pointer<wasi_outbound_http_headers_t> ptr,
  ) {
    return _wasi_outbound_http_headers_free(
      ptr,
    );
  }

  late final _wasi_outbound_http_headers_freePtr = _lookup<
          ffi.NativeFunction<
              ffi.Void Function(ffi.Pointer<wasi_outbound_http_headers_t>)>>(
      'wasi_outbound_http_headers_free');
  late final _wasi_outbound_http_headers_free =
      _wasi_outbound_http_headers_freePtr.asFunction<
          void Function(ffi.Pointer<wasi_outbound_http_headers_t>)>();

  void wasi_outbound_http_params_free(
    ffi.Pointer<wasi_outbound_http_params_t> ptr,
  ) {
    return _wasi_outbound_http_params_free(
      ptr,
    );
  }

  late final _wasi_outbound_http_params_freePtr = _lookup<
          ffi.NativeFunction<
              ffi.Void Function(ffi.Pointer<wasi_outbound_http_params_t>)>>(
      'wasi_outbound_http_params_free');
  late final _wasi_outbound_http_params_free =
      _wasi_outbound_http_params_freePtr.asFunction<
          void Function(ffi.Pointer<wasi_outbound_http_params_t>)>();

  void wasi_outbound_http_uri_free(
    ffi.Pointer<wasi_outbound_http_uri_t> ptr,
  ) {
    return _wasi_outbound_http_uri_free(
      ptr,
    );
  }

  late final _wasi_outbound_http_uri_freePtr = _lookup<
          ffi.NativeFunction<
              ffi.Void Function(ffi.Pointer<wasi_outbound_http_uri_t>)>>(
      'wasi_outbound_http_uri_free');
  late final _wasi_outbound_http_uri_free = _wasi_outbound_http_uri_freePtr
      .asFunction<void Function(ffi.Pointer<wasi_outbound_http_uri_t>)>();

  void wasi_outbound_http_option_body_free(
    ffi.Pointer<wasi_outbound_http_option_body_t> ptr,
  ) {
    return _wasi_outbound_http_option_body_free(
      ptr,
    );
  }

  late final _wasi_outbound_http_option_body_freePtr = _lookup<
          ffi.NativeFunction<
              ffi.Void Function(
                  ffi.Pointer<wasi_outbound_http_option_body_t>)>>(
      'wasi_outbound_http_option_body_free');
  late final _wasi_outbound_http_option_body_free =
      _wasi_outbound_http_option_body_freePtr.asFunction<
          void Function(ffi.Pointer<wasi_outbound_http_option_body_t>)>();

  void wasi_outbound_http_request_free(
    ffi.Pointer<wasi_outbound_http_request_t> ptr,
  ) {
    return _wasi_outbound_http_request_free(
      ptr,
    );
  }

  late final _wasi_outbound_http_request_freePtr = _lookup<
          ffi.NativeFunction<
              ffi.Void Function(ffi.Pointer<wasi_outbound_http_request_t>)>>(
      'wasi_outbound_http_request_free');
  late final _wasi_outbound_http_request_free =
      _wasi_outbound_http_request_freePtr.asFunction<
          void Function(ffi.Pointer<wasi_outbound_http_request_t>)>();

  void wasi_outbound_http_option_headers_free(
    ffi.Pointer<wasi_outbound_http_option_headers_t> ptr,
  ) {
    return _wasi_outbound_http_option_headers_free(
      ptr,
    );
  }

  late final _wasi_outbound_http_option_headers_freePtr = _lookup<
          ffi.NativeFunction<
              ffi.Void Function(
                  ffi.Pointer<wasi_outbound_http_option_headers_t>)>>(
      'wasi_outbound_http_option_headers_free');
  late final _wasi_outbound_http_option_headers_free =
      _wasi_outbound_http_option_headers_freePtr.asFunction<
          void Function(ffi.Pointer<wasi_outbound_http_option_headers_t>)>();

  void wasi_outbound_http_response_free(
    ffi.Pointer<wasi_outbound_http_response_t> ptr,
  ) {
    return _wasi_outbound_http_response_free(
      ptr,
    );
  }

  late final _wasi_outbound_http_response_freePtr = _lookup<
          ffi.NativeFunction<
              ffi.Void Function(ffi.Pointer<wasi_outbound_http_response_t>)>>(
      'wasi_outbound_http_response_free');
  late final _wasi_outbound_http_response_free =
      _wasi_outbound_http_response_freePtr.asFunction<
          void Function(ffi.Pointer<wasi_outbound_http_response_t>)>();

  int wasi_outbound_http_request(
    ffi.Pointer<wasi_outbound_http_request_t> req,
    ffi.Pointer<wasi_outbound_http_response_t> ret0,
  ) {
    return _wasi_outbound_http_request(
      req,
      ret0,
    );
  }

  late final _wasi_outbound_http_requestPtr = _lookup<
          ffi.NativeFunction<
              wasi_outbound_http_http_error_t Function(
                  ffi.Pointer<wasi_outbound_http_request_t>,
                  ffi.Pointer<wasi_outbound_http_response_t>)>>(
      'wasi_outbound_http_request');
  late final _wasi_outbound_http_request =
      _wasi_outbound_http_requestPtr.asFunction<
          int Function(ffi.Pointer<wasi_outbound_http_request_t>,
              ffi.Pointer<wasi_outbound_http_response_t>)>();
}

typedef spin_http_string_t = UnnamedStruct1;

class UnnamedStruct1 extends ffi.Struct {
  external ffi.Pointer<ffi.Char> ptr;

  @ffi.Int()
  external int len;
}

typedef spin_http_body_t = UnnamedStruct2;

class UnnamedStruct2 extends ffi.Struct {
  external ffi.Pointer<ffi.Uint8> ptr;

  @ffi.Int()
  external int len;
}

typedef spin_http_tuple2_string_string_t = UnnamedStruct3;

class UnnamedStruct3 extends ffi.Struct {
  external spin_http_string_t f0;

  external spin_http_string_t f1;
}

typedef spin_http_headers_t = UnnamedStruct4;

class UnnamedStruct4 extends ffi.Struct {
  external ffi.Pointer<spin_http_tuple2_string_string_t> ptr;

  @ffi.Int()
  external int len;
}

typedef spin_http_params_t = UnnamedStruct5;

class UnnamedStruct5 extends ffi.Struct {
  external ffi.Pointer<spin_http_tuple2_string_string_t> ptr;

  @ffi.Int()
  external int len;
}

typedef spin_http_uri_t = spin_http_string_t;
typedef spin_http_option_body_t = UnnamedStruct6;

class UnnamedStruct6 extends ffi.Struct {
  @ffi.Bool()
  external bool is_some;

  external spin_http_body_t val;
}

typedef spin_http_request_t = UnnamedStruct7;

class UnnamedStruct7 extends ffi.Struct {
  @spin_http_method_t()
  external int method;

  external spin_http_uri_t uri;

  external spin_http_headers_t headers;

  external spin_http_params_t params;

  external spin_http_option_body_t body;
}

typedef spin_http_method_t = ffi.Uint8;
typedef spin_http_option_headers_t = UnnamedStruct8;

class UnnamedStruct8 extends ffi.Struct {
  @ffi.Bool()
  external bool is_some;

  external spin_http_headers_t val;
}

typedef spin_http_response_t = UnnamedStruct9;

class UnnamedStruct9 extends ffi.Struct {
  @spin_http_http_status_t()
  external int status;

  external spin_http_option_headers_t headers;

  external spin_http_option_body_t body;
}

typedef spin_http_http_status_t = ffi.Uint16;
typedef wasi_outbound_http_string_t = UnnamedStruct10;

class UnnamedStruct10 extends ffi.Struct {
  external ffi.Pointer<ffi.Char> ptr;

  @ffi.Int()
  external int len;
}

typedef wasi_outbound_http_body_t = UnnamedStruct11;

class UnnamedStruct11 extends ffi.Struct {
  external ffi.Pointer<ffi.Uint8> ptr;

  @ffi.Int()
  external int len;
}

typedef wasi_outbound_http_tuple2_string_string_t = UnnamedStruct12;

class UnnamedStruct12 extends ffi.Struct {
  external wasi_outbound_http_string_t f0;

  external wasi_outbound_http_string_t f1;
}

typedef wasi_outbound_http_headers_t = UnnamedStruct13;

class UnnamedStruct13 extends ffi.Struct {
  external ffi.Pointer<wasi_outbound_http_tuple2_string_string_t> ptr;

  @ffi.Int()
  external int len;
}

typedef wasi_outbound_http_params_t = UnnamedStruct14;

class UnnamedStruct14 extends ffi.Struct {
  external ffi.Pointer<wasi_outbound_http_tuple2_string_string_t> ptr;

  @ffi.Int()
  external int len;
}

typedef wasi_outbound_http_uri_t = wasi_outbound_http_string_t;
typedef wasi_outbound_http_option_body_t = UnnamedStruct15;

class UnnamedStruct15 extends ffi.Struct {
  @ffi.Bool()
  external bool is_some;

  external wasi_outbound_http_body_t val;
}

typedef wasi_outbound_http_request_t = UnnamedStruct16;

class UnnamedStruct16 extends ffi.Struct {
  @wasi_outbound_http_method_t()
  external int method;

  external wasi_outbound_http_uri_t uri;

  external wasi_outbound_http_headers_t headers;

  external wasi_outbound_http_params_t params;

  external wasi_outbound_http_option_body_t body;
}

typedef wasi_outbound_http_method_t = ffi.Uint8;
typedef wasi_outbound_http_option_headers_t = UnnamedStruct17;

class UnnamedStruct17 extends ffi.Struct {
  @ffi.Bool()
  external bool is_some;

  external wasi_outbound_http_headers_t val;
}

typedef wasi_outbound_http_response_t = UnnamedStruct18;

class UnnamedStruct18 extends ffi.Struct {
  @wasi_outbound_http_http_status_t()
  external int status;

  external wasi_outbound_http_option_headers_t headers;

  external wasi_outbound_http_option_body_t body;
}

typedef wasi_outbound_http_http_status_t = ffi.Uint16;
typedef wasi_outbound_http_http_error_t = ffi.Uint8;

const int SPIN_HTTP_HTTP_ERROR_SUCCESS = 0;

const int SPIN_HTTP_HTTP_ERROR_DESTINATION_NOT_ALLOWED = 1;

const int SPIN_HTTP_HTTP_ERROR_INVALID_URL = 2;

const int SPIN_HTTP_HTTP_ERROR_REQUEST_ERROR = 3;

const int SPIN_HTTP_HTTP_ERROR_RUNTIME_ERROR = 4;

const int SPIN_HTTP_HTTP_ERROR_TOO_MANY_REQUESTS = 5;

const int SPIN_HTTP_METHOD_GET = 0;

const int SPIN_HTTP_METHOD_POST = 1;

const int SPIN_HTTP_METHOD_PUT = 2;

const int SPIN_HTTP_METHOD_DELETE = 3;

const int SPIN_HTTP_METHOD_PATCH = 4;

const int SPIN_HTTP_METHOD_HEAD = 5;

const int SPIN_HTTP_METHOD_OPTIONS = 6;

const int WASI_OUTBOUND_HTTP_HTTP_ERROR_SUCCESS = 0;

const int WASI_OUTBOUND_HTTP_HTTP_ERROR_DESTINATION_NOT_ALLOWED = 1;

const int WASI_OUTBOUND_HTTP_HTTP_ERROR_INVALID_URL = 2;

const int WASI_OUTBOUND_HTTP_HTTP_ERROR_REQUEST_ERROR = 3;

const int WASI_OUTBOUND_HTTP_HTTP_ERROR_RUNTIME_ERROR = 4;

const int WASI_OUTBOUND_HTTP_HTTP_ERROR_TOO_MANY_REQUESTS = 5;

const int WASI_OUTBOUND_HTTP_METHOD_GET = 0;

const int WASI_OUTBOUND_HTTP_METHOD_POST = 1;

const int WASI_OUTBOUND_HTTP_METHOD_PUT = 2;

const int WASI_OUTBOUND_HTTP_METHOD_DELETE = 3;

const int WASI_OUTBOUND_HTTP_METHOD_PATCH = 4;

const int WASI_OUTBOUND_HTTP_METHOD_HEAD = 5;

const int WASI_OUTBOUND_HTTP_METHOD_OPTIONS = 6;