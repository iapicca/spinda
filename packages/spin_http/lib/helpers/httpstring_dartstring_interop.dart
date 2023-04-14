import 'dart:ffi';
import 'package:ffi/ffi.dart' as ffi;

import '../bindings/spin_http.dart';

extension HttpStringDartStringInteropX on HttpString {
  String toDart({Allocator allocator = ffi.malloc}) {
    // see: https://github.com/dart-lang/ffi/issues/146
    final string = ptr.cast<ffi.Utf8>().toDartString(length: len);
    allocator.free(ptr);
    return string;
  }

  /// see: https://github.com/iapicca/spinda/issues/3
  void fromDart(
    String string, {
    Allocator allocator = ffi.malloc,
  }) =>
      ptr = string.toNativeUtf8(allocator: allocator).cast();
}
