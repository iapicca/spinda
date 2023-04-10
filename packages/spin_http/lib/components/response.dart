import 'package:meta/meta.dart';
import 'all.dart';

@immutable
class Response {
  const Response({
    required this.statusCode,
    this.headers = const {},
  });
  final StatusCode statusCode;
  final Headers headers;

  @nonVirtual
  @override
  bool operator ==(Object other) =>
      other is Response && other.hashCode == hashCode;

  @nonVirtual
  @override
  int get hashCode => Object.hashAll([
        statusCode,
        headers,
      ]);
}

extension ResponseCopyWithX on Response {
  Response copyWith({
    StatusCode? statusCode,
    Headers? headers,
  }) =>
      Response(
        headers: headers ?? this.headers,
        statusCode: statusCode ?? this.statusCode,
      );
}
