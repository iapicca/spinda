import 'dart:ffi';
import 'package:ffi/ffi.dart';

import '../bindings/spin_http.dart';

extension HttpStringDartStringInteropX on HttpString {
  String toDartString() => ptr.cast<Utf8>().toDartString(length: len);

  /// TODO probably wrong
  /// https://github.com/iapicca/spinda/issues/3
  void fromDartString(String string) => this
    ..len = string.length
    ..ptr = string.toNativeUtf8().cast<Char>();
}
