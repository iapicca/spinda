import 'dart:async';
import 'dart:io';
import 'dart:typed_data';

import 'methods.dart';
import 'protocol_version.dart';

class SpinRequest extends Stream<Uint8List> implements HttpRequest {
  SpinRequest({
    this.certificate,
    this.connectionInfo,
    this.cookies = const <Cookie>[],
    this.persistentConnection = false,
    ProtocolVersion protocolVersion = const ProtocolVersion.onePointOne(),
    required this.headers,
    required this.requestedUri,
    required this.contentLength,
    required this.uri,
    required this.session,
    required Method method,
  })  : method = method.name,
        protocolVersion = protocolVersion.name;

  @override
  final HttpHeaders headers;

  @override
  final Uri uri;

  @override
  final Uri requestedUri;

  /// TODO
  @override
  HttpResponse get response => throw UnimplementedError();

  @override
  final X509Certificate? certificate;

  @override
  HttpConnectionInfo? connectionInfo;

  @override
  final int contentLength;

  @override
  final List<Cookie> cookies;

  @override
  final String method;

  @override
  final bool persistentConnection;

  @override
  final String protocolVersion;

  @override
  HttpSession session;

  @override
  StreamSubscription<Uint8List> listen(
    void Function(Uint8List event)? onData, {
    Function? onError,
    void Function()? onDone,
    bool? cancelOnError,
  }) {
    // TODO: implement listen
    throw UnimplementedError();
  }
}
