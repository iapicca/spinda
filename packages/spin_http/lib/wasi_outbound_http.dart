import 'dart:ffi';

import 'spin_http_bindings_generated.dart';
import 'spin_http.dart' show SpinHttpTuple2;

typedef WasiOutboundHttpString = UnnamedStruct10;
typedef WasiOutboundHttpBody = UnnamedStruct11;
typedef WasiOutboundHttpHeaders = UnnamedStruct13;
typedef WasiOutboundHttpParams = UnnamedStruct14;
typedef WasiOutboundHttpOptionBody = UnnamedStruct15;
typedef WasiOutboundHttpRequest = UnnamedStruct16;
typedef WasiOutboundHttpOptionHeaders = UnnamedStruct17;
typedef WasiOutboundHttpResponse = UnnamedStruct18;

const _library = 'wasi-outbound-http';

abstract class WasiOutboundHttp {
  static final _binding = SpinHttpBindings(
    DynamicLibrary.open(
      'lib$_library.so',
    ),
  );

  static void body(
    Pointer<WasiOutboundHttpBody> body,
  ) =>
      _binding.wasi_outbound_http_body_free(
        body,
      );

  static void headers(
    Pointer<WasiOutboundHttpHeaders> headers,
  ) =>
      _binding.wasi_outbound_http_headers_free(
        headers,
      );

  static void optionBody(
    Pointer<WasiOutboundHttpOptionBody> option,
  ) =>
      _binding.wasi_outbound_http_option_body_free(
        option,
      );

  static void optionHeader(
    Pointer<WasiOutboundHttpOptionHeaders> option,
  ) =>
      _binding.wasi_outbound_http_option_headers_free(
        option,
      );

  static void params(
    Pointer<WasiOutboundHttpParams> params,
  ) =>
      _binding.wasi_outbound_http_params_free(
        params,
      );

  static void request(
    Pointer<WasiOutboundHttpRequest> request,
  ) =>
      _binding.wasi_outbound_http_request_free(
        request,
      );

  static void response(
    Pointer<WasiOutboundHttpResponse> response,
  ) =>
      _binding.wasi_outbound_http_response_free(
        response,
      );

  /// is it duplicate?
  static void stringDuplicate(
    Pointer<WasiOutboundHttpString> ret,
    Pointer<Char> s,
  ) =>
      _binding.wasi_outbound_http_string_dup(
        ret,
        s,
      );

  static void string(
    Pointer<WasiOutboundHttpString> ret,
  ) =>
      _binding.wasi_outbound_http_string_free(
        ret,
      );

  static void stringSet(
    Pointer<WasiOutboundHttpString> ret,
    Pointer<Char> s,
  ) =>
      _binding.wasi_outbound_http_string_set(
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
    Pointer<WasiOutboundHttpString> string,
  ) =>
      _binding.wasi_outbound_http_uri_free(
        string,
      );
}
