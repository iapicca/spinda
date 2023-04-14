import 'dart:ffi';
import 'package:ffi/ffi.dart' as ffi;
import 'dart:typed_data';

import '../bindings/spin_http.dart' as spin_http;

extension BodyUint8ListInteropX on spin_http.Body {
  Uint8List toDart({Allocator allocator = ffi.malloc}) {
    final list = ptr.asTypedList(len);
    allocator.free(ptr);
    return list;
  }

  void fromDart(
    Uint8List body, {
    Allocator allocator = ffi.malloc,
  }) {
    len = body.length;
    allocator.free(ptr);
    if (body.isEmpty) {
      return;
    }
    ptr = allocator.allocate(body.length);
    if (body.isNotEmpty) {
      for (var i = 0; i < body.length; ++i) {
        ptr[i] = body[i];
      }
    }
  }
}

extension OptionBodyUint8ListInteropX on spin_http.OptionBody {
  Uint8List toDart({Allocator allocator = ffi.malloc}) =>
      is_some ? val.toDart(allocator: allocator) : Uint8List(0);

  void fromDart(
    Uint8List body, {
    Allocator allocator = ffi.malloc,
  }) {
    is_some = body.isEmpty;
    val.fromDart(body, allocator: allocator);
  }
}
