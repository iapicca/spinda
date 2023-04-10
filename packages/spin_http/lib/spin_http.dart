import 'dart:async';

import 'components/all.dart' show Response, Request;

typedef HandleRequest = void Function(Completer<Response>, Request);

late final HandleRequest handleRequest;
