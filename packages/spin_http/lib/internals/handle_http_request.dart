import 'dart:async';
import 'dart:ffi';

// import 'package:spin_http/response/response.dart';
import '../components/all.dart';
import '../bindings/spin_http.dart' as spin_http;
import '../spin_http.dart';

// import 'wasi_outbound_http.dart' as wasi_outbound_http;

void handleHttpRequest(
  Pointer<spin_http.Request> req,
  Pointer<spin_http.Response> res,
) {
  late final Request request;
  try {
    request = SpinRequest(req.ref);
  } catch (_) {
    res.ref.status = StatusCode.internalServerError.code;
    return;
  }

  final responseAsync = Completer<Response>();

  handleRequest(responseAsync, request);

  responseAsync.future.then((response) {
    res.ref.status = response.statusCode.code;
    if (response.headers.isNotEmpty) {}
  });

  // res.status = C.uint16_t(w.status)
  // if len(w.header) > 0 {
  // 	res.headers = C.spin_http_option_headers_t{
  // 		is_some: true,
  // 		val:     toSpinHeaders(w.header),
  // 	}
  // } else {
  // 	res.headers = C.spin_http_option_headers_t{is_some: false}
  // }

  // res.body, err = toSpinBody(w.w)
  // if err != nil {
  // 	fmt.Fprintln(os.Stderr, err)
  // }
}
