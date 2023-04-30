import 'dart:typed_data';
import 'package:meta/meta.dart';

import 'all.dart';
import '../helpers/all.dart';
import '../bindings/spin_http.dart' as spin;
import '../bindings/wasi_outbound_http.dart' as wasi;

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
  SpinRequest(spin.Request request)
      : super(
          body: request.body.toDart(),
          headers: request.headers.toDart(),
          method: Method.fromIndex(request.method),
          uri: Uri.parse(request.uri.toDart()),
        );
}

class WasiRequest extends Request {
  WasiRequest(wasi.Request request)
      : super(
          body: request.body.toDart(),
          headers: request.headers.toDart(),
          method: Method.fromIndex(request.method),
          uri: Uri.parse(request.uri.toDart()),
        );
}

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
