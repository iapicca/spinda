import 'dart:ffi';

import '../components/all.dart';
import '../bindings/spin_http.dart' as spin_http;
import '../spin_http.dart';

void handleHttpRequest(
  Pointer<spin_http.Request> req,
  Pointer<spin_http.Response> res,
) {
  try {
    // convert [spin_http.Request] to dart's [Request]
    final Request request = SpinRequest(req.ref);
    final response = Response();
    // tries calling [handleRequest] from 'spin_http.dart'
    handleRequest(response, request);
  } catch (_) {
    // if [spin_http.Request] fails to convert or
    // [handleRequest] fails returns [StatusCode.internalServerError]
    res.ref.status = StatusCode.internalServerError.code;
    return;
  }

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
