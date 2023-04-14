import 'dart:io';

const _port = 8080;
const _name = 'Just Dart Server';

/// dart compile bin/hello_dart.dart -o ./server
void main() async {
  final server = await HttpServer.bind(InternetAddress.anyIPv4, _port)
    ..serverHeader = _name;
  print('server started: ${server.address} port ${server.port}');
  await for (final request in server) {
    request.response
      ..headers.set(HttpHeaders.contentTypeHeader, 'text/plain')
      ..write('Hello Dart!')
      ..close();
  }
}
