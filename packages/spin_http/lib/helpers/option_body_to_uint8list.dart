import 'dart:ffi';
import 'dart:typed_data';

import '../bindings/spin_http.dart';

extension OptionBodyToUint8ListX on OptionBody {
  Uint8List toUint8List() =>
      is_some ? val.ptr.asTypedList(val.len) : Uint8List(0);
}
