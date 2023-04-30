import 'dart:ffi';
import 'package:ffi/ffi.dart' as ffi;
import 'dart:typed_data';

import '../bindings/spin_http.dart' as spin;
import '../bindings/wasi_outbound_http.dart' as wasi;

extension SpinBodyUint8ListInteropX on spin.Body {
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

extension SpinOptionBodyUint8ListInteropX on spin.OptionBody {
  Uint8List toDart({Allocator allocator = ffi.malloc}) =>
      is_some ? val.toDart(allocator: allocator) : Uint8List(0);

  void fromDart(
    Uint8List body, {
    Allocator allocator = ffi.malloc,
  }) {
    is_some = body.isNotEmpty;
    if (!is_some) {
      return;
    }
    val.fromDart(body, allocator: allocator);
  }
}

extension WasiBodyUint8ListInteropX on wasi.Body {
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

extension WasiOptionBodyUint8ListInteropX on wasi.OptionBody {
  Uint8List toDart({Allocator allocator = ffi.malloc}) =>
      is_some ? val.toDart(allocator: allocator) : Uint8List(0);

  void fromDart(
    Uint8List body, {
    Allocator allocator = ffi.malloc,
  }) {
    is_some = body.isNotEmpty;
    if (!is_some) {
      return;
    }
    val.fromDart(body, allocator: allocator);
  }
}
