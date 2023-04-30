import 'dart:ffi';
import 'package:ffi/ffi.dart' as ffi;

import '../components/all.dart' as dart;
import '../bindings/wasi_outbound_http.dart' as wasi;
import '../helpers/all.dart';

extension WasiResponseToDartX on Pointer<wasi.Response> {
  dart.Response toDart({Allocator allocator = ffi.malloc}) {
    final result = dart.Response()
      ..statusCode = dart.StatusCode.fromCode(ref.status)
      ..headers = ref.headers.toDart(allocator: allocator)
      ..body = ref.body.toDart(allocator: allocator);

    allocator.free(this);
    return result;
  }
}
