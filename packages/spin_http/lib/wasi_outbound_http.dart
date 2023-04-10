import 'dart:ffi';

import 'spin_http_bindings_generated.dart';

typedef HttpString = Pointer<UnnamedStruct10>;
typedef Body = Pointer<UnnamedStruct11>;
typedef Tuple2 = Pointer<UnnamedStruct12>;
typedef Headers = Pointer<UnnamedStruct13>;
typedef Params = Pointer<UnnamedStruct14>;
typedef OptionBody = Pointer<UnnamedStruct15>;
typedef Request = Pointer<UnnamedStruct16>;
typedef OptionHeaders = Pointer<UnnamedStruct17>;
typedef Response = Pointer<UnnamedStruct18>;

const _library = 'wasi-outbound-http';

final _binding = SpinHttpBindings(
  DynamicLibrary.open(
    'lib$_library.so',
  ),
);

void Function(Body body) get body => _binding.wasi_outbound_http_body_free;

void Function(Headers headers) get headers =>
    _binding.wasi_outbound_http_headers_free;

void Function(OptionBody optionBody) get optionBody =>
    _binding.wasi_outbound_http_option_body_free;

void Function(OptionHeaders optionHeaders) get optionHeader =>
    _binding.wasi_outbound_http_option_headers_free;

void Function(Params params) get optionParams =>
    _binding.wasi_outbound_http_params_free;

void Function(Request request) get request =>
    _binding.wasi_outbound_http_request_free;

void Function(Response response) get response =>
    _binding.wasi_outbound_http_response_free;

/// is it "duplicate"?
void Function(HttpString ret, Pointer<Char> s) get stringDuplicate =>
    _binding.wasi_outbound_http_string_dup;

void Function(HttpString string) get string =>
    _binding.wasi_outbound_http_string_free;

void Function(HttpString ret, Pointer<Char> s) get stringSet =>
    _binding.wasi_outbound_http_string_set;

void Function(Tuple2 tuple) get tuple =>
    _binding.wasi_outbound_http_tuple2_string_string_free;

void Function(HttpString string) get ur => _binding.wasi_outbound_http_uri_free;
