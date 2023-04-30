// import 'dart:ffi';

import 'bindings.dart';

typedef HttpString = UnnamedStruct1;
typedef Body = UnnamedStruct2;
typedef Tuple2 = UnnamedStruct3;
typedef Headers = UnnamedStruct4;
typedef Params = UnnamedStruct5;
typedef OptionBody = UnnamedStruct6;
typedef Request = UnnamedStruct7;
typedef OptionHeaders = UnnamedStruct8;
typedef Response = UnnamedStruct9;

// const _dylib = 'spin_http';

// final _binding = SpinHttpBindings(DynamicLibrary.open('lib$_dylib.so'));

// void Function(Pointer<Body> body) get body => _binding.spin_http_body_free;

// void Function(Pointer<Request> request, Pointer<Response> response)
//     get handleRequest => _binding.spin_http_handle_http_request;

// void Function(Pointer<Headers> headers) get headers =>
//     _binding.spin_http_headers_free;

// void Function(Pointer<OptionBody> optionBody) get optionBody =>
//     _binding.spin_http_option_body_free;

// void Function(Pointer<OptionHeaders> optionHeaders) get optionHeader =>
//     _binding.spin_http_option_headers_free;

// void Function(Pointer<Params> params) get optionParams =>
//     _binding.spin_http_params_free;

// void Function(Pointer<Request> request) get request =>
//     _binding.spin_http_request_free;

// void Function(Pointer<Response> response) get response =>
//     _binding.spin_http_response_free;

// /// is it "duplicate"?
// void Function(Pointer<HttpString> ret, Pointer<Char> s) get stringDuplicate =>
//     _binding.spin_http_string_dup;

// void Function(Pointer<HttpString> string) get string =>
//     _binding.spin_http_string_free;

// void Function(Pointer<HttpString> ret, Pointer<Char> s) get stringSet =>
//     _binding.spin_http_string_set;

// void Function(Pointer<Tuple2> tuple) get tuple =>
//     _binding.spin_http_tuple2_string_string_free;

// void Function(Pointer<HttpString> string) get uri =>
//     _binding.spin_http_uri_free;
