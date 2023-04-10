import '../bindings/spin_http.dart';
import 'all.dart';

extension HttpStringToDartUriX on HttpString {
  Uri toDartUri() => Uri.parse(toDartString());
}
