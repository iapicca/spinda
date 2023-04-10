import 'dart:ffi';
import 'package:ffi/ffi.dart';

import '../bindings/spin_http.dart';

extension HttpStringToStringX on HttpString {
  String toDartString() => ptr.cast<Utf8>().toDartString(length: len);
}

extension HttpStringfromStringX on HttpString {
  void fromDartString(String string) => this
    ..len = string.length
    ..ptr = string.toNativeUtf8().cast<Char>();
}
