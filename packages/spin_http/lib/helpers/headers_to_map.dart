import 'dart:ffi';

import '../spin_http.dart';
import 'http_string_to_string.dart';

extension SpinHeadersToSetX on Headers {
  Set<MapEntry<String, String>> toSet() => {
        for (var i = 0; i < len; ++i)
          MapEntry(
            ptr.ref.f0.toDartString(),
            ptr.ref.f1.toDartString(),
          )
      };
}
