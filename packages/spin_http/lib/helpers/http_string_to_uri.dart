import '../helpers/all.dart';

import '../spin_http.dart';

import '../helpers/all.dart';

extension HttpStringToDartUriX on HttpString {
  Uri toDartUri() => Uri.parse(toDartString());
}
