import 'dart:typed_data';

import 'package:ffi/ffi.dart';

import 'dart:ffi';
import '../bindings/wasi_outbound_http.dart' as wasi;
import '../components/all.dart' as dart;
import '../helpers/all.dart';

dart.Response send(dart.Request req) {
  final response = calloc<wasi.Response>();

  final statusCode = dart.StatusCode.fromCode(
    wasi.outboundRequest(
      calloc<wasi.Request>()..fromDart(req),
      response,
    ),
  );

  return response.toDart()..statusCode = statusCode;
}

dart.Response post(
  Uri uri, {
  required Uint8List body,
  dart.Headers headers = const {},
}) =>
    send(
      dart.Request(
        uri: uri,
        body: body,
        headers: headers,
        method: dart.Method.post,
      ),
    );

dart.Response get(
  Uri uri, {
  dart.Headers headers = const {},
}) =>
    send(
      dart.Request(
        uri: uri,
        body: Uint8List(0),
        headers: headers,
        method: dart.Method.get,
      ),
    );
