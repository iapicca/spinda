import 'dart:typed_data';
import 'package:meta/meta.dart';
import 'package:spin_http/helpers/all.dart';
import '../spin_http.dart' as spin_http;
import '../methods.dart';

typedef Headers = Set<MapEntry<String, String>>;

extension RequestCopyWithX on Request {
  Request copyWith({
    Uint8List? body,
    Method? method,
    Uri? uri,
    Headers? headers,
  }) =>
      Request(
        body: body ?? this.body,
        method: method ?? this.method,
        uri: uri ?? this.uri,
        headers: headers ?? this.headers,
      );
}

@immutable
class Request {
  const Request({
    required this.body,
    required this.headers,
    required this.method,
    required this.uri,
  });

  final Uint8List body;
  final Headers headers;
  final Method method;
  final Uri uri;

  @nonVirtual
  @override
  bool operator ==(Object other) =>
      other is Request && other.hashCode == hashCode;

  @nonVirtual
  @override
  int get hashCode => Object.hashAll([
        body,
        headers,
        method,
        uri,
      ]);
}

class SpinRequest extends Request {
  SpinRequest(spin_http.Request request)
      : super(
          body: request.body.toUint8List(),
          headers: request.headers.toSet(),
          method: Method.values[request.method],
          uri: request.uri.toDartUri(),
        );
}
