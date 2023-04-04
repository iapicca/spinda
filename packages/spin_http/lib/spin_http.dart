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

const _libName = 'spin_http';

final _bindings = SpinHttpBindings(DynamicLibrary.open('lib$_libName.so'));

void spinHttpBody(Pointer<SpinHttpBody> body) =>
    _bindings.spin_http_body_free(body);

void spinHttpHandleHttpRequest(
  Pointer<SpinHttpRequest> request,
  Pointer<SpinHttpResponse> response,
) =>
    _bindings.spin_http_handle_http_request(request, response);

void spinHttpHeaders(Pointer<SpinHttpHeaders> headers) =>
    _bindings.spin_http_headers_free(headers);

void spinHttpOptionBody(Pointer<SpinHttpHeadersOptionBody> optionBody) =>
    _bindings.spin_http_option_body_free(optionBody);

void spinHttpOptionHeaders(Pointer<UnnamedStruct8> optionHeaders) =>
    _bindings.spin_http_option_headers_free(optionHeaders);

void spinHttpOptionParams(Pointer<SpinHttpHeadersParams> params) =>
    _bindings.spin_http_params_free(params);

void spinHttpRequest(Pointer<SpinHttpRequest> request) =>
    _bindings.spin_http_request_free(request);

void spinHttpResponse(Pointer<SpinHttpResponse> response) =>
    _bindings.spin_http_response_free(response);

/// is it duplicate?
void spinHttpStringDuplicate(Pointer<SpinHttpString> ret, Pointer<Char> s) =>
    _bindings.spin_http_string_dup(ret, s);

void spinHttpString(Pointer<SpinHttpString> ret) =>
    _bindings.spin_http_string_free(ret);

void spinHttpStringSet(Pointer<SpinHttpString> ret, Pointer<Char> s) =>
    _bindings.spin_http_string_set(ret, s);

void spinHttpTuple(Pointer<SpinHttpTuple2> tuple) =>
    _bindings.spin_http_tuple2_string_string_free(tuple);

void spinHttpUri(Pointer<SpinHttpString> string) =>
    _bindings.spin_http_uri_free(string);
