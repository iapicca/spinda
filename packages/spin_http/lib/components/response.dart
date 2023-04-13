import 'dart:typed_data';

import 'package:meta/meta.dart';
import 'all.dart';

class Response {
  Response()
      : body = Uint8List(0),
        headers = const {},
        statusCode = const StatusCode.internalServerError();

  Headers headers;
  StatusCode statusCode;
  Uint8List body;

  @nonVirtual
  @override
  bool operator ==(Object other) =>
      other is Response && other.hashCode == hashCode;

  @nonVirtual
  @override
  int get hashCode => Object.hashAll([headers, statusCode]);
}
