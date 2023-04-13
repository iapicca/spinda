import 'components/all.dart' show Response, Request;

typedef HandleRequest = void Function(Response, Request);

late final HandleRequest handleRequest;
