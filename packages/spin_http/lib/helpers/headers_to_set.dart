import 'dart:ffi';

import '../components/all.dart' as dart;

import '../bindings/spin_http.dart' as spin_http;
import '../helpers/all.dart';

extension SpinHeaderstoDartX on spin_http.Headers {
  dart.Headers toDart() => {
        for (var i = 0; i < len; ++i)
          MapEntry(
            ptr.ref.f0.toDartString(),
            ptr.ref.f1.toDartString(),
          )
      };
}

extension SpinHeadersFromDartX on dart.Headers {
  void fromDart(spin_http.Headers native) {
    native.len = length;
    for (var i = 0; i < length - 1; ++i) {
      // native.ptr[i].f0 = this[i]; // TODO no idea
    }
  }
}
