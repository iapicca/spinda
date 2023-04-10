import 'package:ffi/ffi.dart';

import '../spin_http.dart';

extension HttpStringToStringX on HttpString {
  String toDartString() => ptr.cast<Utf8>().toDartString(length: len);
}
