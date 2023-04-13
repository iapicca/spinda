import 'dart:ffi';

import '../components/all.dart' as dart;

import '../bindings/spin_http.dart' as spin_http;
import '../helpers/all.dart';

extension HttpHeadersDartHeadersInterop on spin_http.Headers {
  dart.Headers toDart() => {
        for (var i = 0; i < len; ++i)
          MapEntry(
            ptr.ref.f0.toDartString(),
            ptr.ref.f1.toDartString(),
          )
      };

  void fromDart(dart.Headers native) {
    /// TODO
  }
}
