abstract class ProtocolVersion {
  String get name;

  const factory ProtocolVersion.one() = _ProtocolVersion1;
  const factory ProtocolVersion.onePointOne() = _ProtocolVersion11;
}

class _ProtocolVersion1 implements ProtocolVersion {
  const _ProtocolVersion1();
  @override
  final name = '1.0';
}

class _ProtocolVersion11 implements ProtocolVersion {
  const _ProtocolVersion11();
  @override
  final name = '1.1';
}
