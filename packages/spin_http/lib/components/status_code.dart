enum StatusCode {
  switchingProtocols(101),
  processing(102),
  ok(200),
  created(201),
  accepted(202),
  nonAuthoritativeInformation(203),
  noContent(204),
  resetContent(205),
  partialContent(206),
  multiStatus(207),
  alreadyReported(208),
  imUsed(226),
  multipleChoices(300),
  movedPermanently(301),
  found(302),
  movedTemporarily(302),
  seeOther(303),
  notModified(304),
  useProxy(305),
  temporaryRedirect(307),
  permanentRedirect(308),
  badRequest(400),
  unauthorized(401),
  paymentRequired(402),
  forbidden(403),
  notFound(404),
  methodNotAllowed(405),
  notAcceptable(406),
  proxyAuthenticationRequired(407),
  requestTimeout(408),
  conflict(409),
  gone(410),
  lengthRequired(411),
  preconditionFailed(412),
  requestEntityTooLarge(413),
  requestUriTooLong(414),
  unsupportedMediaType(415),
  requestedRangeNotSatisfiable(416),
  expectationFailed(417),
  misdirectedRequest(421),
  unprocessableEntity(422),
  locked(423),
  failedDependency(424),
  upgradeRequired(426),
  preconditionRequired(428),
  tooManyRequests(429),
  requestHeaderFieldsTooLarge(431),
  connectionClosedWithoutResponse(444),
  unavailableForLegalReasons(451),
  clientClosedRequest(499),
  internalServerError(500),
  notImplemented(501),
  badGateway(502),
  serviceUnavailable(503),
  gatewayTimeout(504),
  httpVersionNotSupported(505),
  variantAlsoNegotiates(506),
  insufficientStorage(507),
  loopDetected(508),
  notExtended(510),
  networkAuthenticationRequired(511),
  networkConnectTimeoutError(599);

  const StatusCode(this.code);
  final int code;

  factory StatusCode.fromCode(int code) {
    if (![...allStatusCodes].contains(code)) {
      return internalServerError;
    }
    return StatusCode.values.firstWhere((status) => status.code == code);
  }

  static Iterable<int> get allStatusCodes sync* {
    for (final status in StatusCode.values) {
      yield status.code;
    }
  }
}