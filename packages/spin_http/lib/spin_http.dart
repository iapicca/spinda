import 'dart:ffi';

import 'spin_http_bindings_generated.dart';

typedef HttpString = Pointer<UnnamedStruct1>;
typedef Body = Pointer<UnnamedStruct2>;
typedef Tuple2 = Pointer<UnnamedStruct3>;
typedef Headers = Pointer<UnnamedStruct4>;
typedef Params = Pointer<UnnamedStruct5>;
typedef OptionBody = Pointer<UnnamedStruct6>;
typedef Request = Pointer<UnnamedStruct7>;
typedef OptionHeaders = Pointer<UnnamedStruct8>;
typedef Response = Pointer<UnnamedStruct9>;

const _dylib = 'spin_http';

final _binding = SpinHttpBindings(
  DynamicLibrary.open(
    'lib$_dylib.so',
  ),
);

void Function(Body body) get body => _binding.spin_http_body_free;

void Function(Request request, Response response) get handleRequest =>
    _binding.spin_http_handle_http_request;

void Function(Headers headers) get headers => _binding.spin_http_headers_free;

void Function(OptionBody optionBody) get optionBody =>
    _binding.spin_http_option_body_free;

void Function(OptionHeaders optionHeaders) get optionHeader =>
    _binding.spin_http_option_headers_free;

void Function(Params params) get optionParams => _binding.spin_http_params_free;

void Function(Request request) get request => _binding.spin_http_request_free;

void Function(Response response) get response =>
    _binding.spin_http_response_free;

/// is it "duplicate"?
void Function(HttpString ret, Pointer<Char> s) get stringDuplicate =>
    _binding.spin_http_string_dup;

void Function(HttpString string) get string => _binding.spin_http_string_free;

void Function(HttpString ret, Pointer<Char> s) get stringSet =>
    _binding.spin_http_string_set;

void Function(Tuple2 tuple) get tuple =>
    _binding.spin_http_tuple2_string_string_free;

void Function(HttpString string) get ur => _binding.spin_http_uri_free;
