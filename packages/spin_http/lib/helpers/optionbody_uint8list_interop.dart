import 'dart:ffi';
import 'dart:typed_data';

import '../bindings/spin_http.dart';

extension OptionBodyUint8ListInteropX on OptionBody {
  Uint8List toDart() => is_some ? val.ptr.asTypedList(val.len) : Uint8List(0);
  void fromDart(Uint8List body) {
    /// TODO https://github.com/iapicca/spinda/issues/2
  }
}
