import 'dart:ffi';

import '../components/all.dart';
import '../helpers/all.dart';

import '../bindings/spin_http.dart' as spin_http;
import '../spin_http.dart';

void handleHttpRequest(
  Pointer<spin_http.Request> req,
  Pointer<spin_http.Response> res,
) {
  try {
    final response = Response();
    // calls [handleRequest] from 'spin_http.dart'
    handleRequest(response, SpinRequest(req.ref));
    // update native response from dart response
    res.ref.fromDart(response);
  } catch (_) {
    // if [spin_http.Request] fails to convert or
    // [handleRequest] fails returns [StatusCode.internalServerError]
    res.ref.status = StatusCode.internalServerError.code;
    return;
  }
}
