import 'dart:ffi';
import 'package:ffi/ffi.dart' as ffi;
import 'package:spin_http/helpers/all.dart';

import '../bindings/spin_http.dart' as spin_http;
import '../components/response.dart' as dart;

extension HttpResponseFromDartX on spin_http.Response {
  void fromDart(
    dart.Response response, {
    Allocator allocator = ffi.malloc,
  }) {
    status = response.statusCode.code;
    headers.fromDart(response.headers);
    body.fromDart(response.body);
  }
}
