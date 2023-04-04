import 'dart:ffi';

import 'spin_http_bindings_generated.dart';

typedef SpinHttpString = UnnamedStruct1;
typedef SpinHttpBody = UnnamedStruct2;
typedef SpinHttpTuple2 = UnnamedStruct3;
typedef SpinHttpHeaders = UnnamedStruct4;
typedef SpinHttpHeadersParams = UnnamedStruct5;
typedef SpinHttpHeadersOptionBody = UnnamedStruct6;
typedef SpinHttpRequest = UnnamedStruct7;
typedef SpinHttpHeadersOptionHeaders = UnnamedStruct8;
typedef SpinHttpResponse = UnnamedStruct9;

const _library = 'spin_http';

abstract class SpinHttp {
  static final _binding = SpinHttpBindings(
    DynamicLibrary.open(
      'lib$_library.so',
    ),
  );

  static void body(
    Pointer<SpinHttpBody> body,
  ) =>
      _binding.spin_http_body_free(
        body,
      );

  static void handleRequest(
    Pointer<SpinHttpRequest> request,
    Pointer<SpinHttpResponse> response,
  ) =>
      _binding.spin_http_handle_http_request(
        request,
        response,
      );

  static void headers(
    Pointer<SpinHttpHeaders> headers,
  ) =>
      _binding.spin_http_headers_free(
        headers,
      );

  static void optionBody(
    Pointer<SpinHttpHeadersOptionBody> optionBody,
  ) =>
      _binding.spin_http_option_body_free(
        optionBody,
      );

  static void optionHeader(
    Pointer<UnnamedStruct8> optionHeaders,
  ) =>
      _binding.spin_http_option_headers_free(
        optionHeaders,
      );

  static void optionParams(
    Pointer<SpinHttpHeadersParams> params,
  ) =>
      _binding.spin_http_params_free(
        params,
      );

  static void request(
    Pointer<SpinHttpRequest> request,
  ) =>
      _binding.spin_http_request_free(
        request,
      );

  static void response(
    Pointer<SpinHttpResponse> response,
  ) =>
      _binding.spin_http_response_free(
        response,
      );

  /// is it duplicate?
  static void stringDuplicate(
    Pointer<SpinHttpString> ret,
    Pointer<Char> s,
  ) =>
      _binding.spin_http_string_dup(
        ret,
        s,
      );

  static void string(
    Pointer<SpinHttpString> ret,
  ) =>
      _binding.spin_http_string_free(
        ret,
      );

  static void stringSet(
    Pointer<SpinHttpString> ret,
    Pointer<Char> s,
  ) =>
      _binding.spin_http_string_set(
        ret,
        s,
      );

  static void tuple(
    Pointer<SpinHttpTuple2> tuple,
  ) =>
      _binding.spin_http_tuple2_string_string_free(
        tuple,
      );

  static void uri(
    Pointer<SpinHttpString> string,
  ) =>
      _binding.spin_http_uri_free(
        string,
      );
}
