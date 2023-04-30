import 'dart:ffi';

import 'bindings.dart';

typedef HttpString = UnnamedStruct10;
typedef Body = UnnamedStruct11;
typedef Tuple2 = UnnamedStruct12;
typedef Headers = UnnamedStruct13;
typedef Params = UnnamedStruct14;
typedef OptionBody = UnnamedStruct15;
typedef Request = UnnamedStruct16;
typedef OptionHeaders = UnnamedStruct17;
typedef Response = UnnamedStruct18;
typedef OutboundRequest = int Function(Pointer<Request>, Pointer<Response>);

// int wasi_outbound_http_request(
//   ffi.Pointer<wasi_outbound_http_request_t> req,
//   ffi.Pointer<wasi_outbound_http_response_t> ret0,
// ) {
//   return _wasi_outbound_http_request(
//     req,
//     ret0,
//   );
// }

OutboundRequest get outboundRequest => _binding.wasi_outbound_http_request;

const _library = 'wasi-outbound-http';

final _binding = SpinHttpBindings(DynamicLibrary.open('lib$_library.so'));

// void Function(Pointer<Body> body) get body =>
//     _binding.wasi_outbound_http_body_free;

// void Function(Pointer<Headers> headers) get headers =>
//     _binding.wasi_outbound_http_headers_free;

// void Function(Pointer<OptionBody> optionBody) get optionBody =>
//     _binding.wasi_outbound_http_option_body_free;

// void Function(Pointer<OptionHeaders> optionHeaders) get optionHeader =>
//     _binding.wasi_outbound_http_option_headers_free;

// void Function(Pointer<Params> params) get optionParams =>
//     _binding.wasi_outbound_http_params_free;

// void Function(Pointer<Request> request) get request =>
//     _binding.wasi_outbound_http_request_free;

// void Function(Pointer<Response> response) get response =>
//     _binding.wasi_outbound_http_response_free;

// /// is it "duplicate"?
// void Function(Pointer<HttpString> ret, Pointer<Char> s) get stringDuplicate =>
//     _binding.wasi_outbound_http_string_dup;

// void Function(Pointer<HttpString> string) get string =>
//     _binding.wasi_outbound_http_string_free;

// void Function(Pointer<HttpString> ret, Pointer<Char> s) get stringSet =>
//     _binding.wasi_outbound_http_string_set;

// void Function(Pointer<Tuple2> tuple) get tuple =>
//     _binding.wasi_outbound_http_tuple2_string_string_free;

// void Function(Pointer<HttpString> string) get uri =>
//     _binding.wasi_outbound_http_uri_free;
