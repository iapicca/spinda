import 'dart:ffi';

import 'package:spin_http/helpers/all.dart';

import '../components/all.dart' as dart;
import '../bindings/wasi_outbound_http.dart' as wasi;

extension WasiRequestFromDartX on Pointer<wasi.Request> {
  void fromDart(dart.Request request) => ref
    ..method = request.method.index
    ..uri.fromDart(request.uri.path)
    ..headers.fromDart(request.headers)
    ..body.fromDart(request.body);
}
