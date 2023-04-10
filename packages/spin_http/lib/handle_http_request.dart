import 'dart:ffi';
import 'dart:io';
import 'dart:typed_data';

import 'package:ffi/ffi.dart';
import 'methods.dart';
import 'spin_http.dart' as spin_http;
import 'spin_request.dart';
// import 'wasi_outbound_http.dart' as wasi_outbound_http;

void handleHttpRequest(spin_http.Request req, spin_http.Response res) {
  // 	var body []byte
  // 	if req.body.is_some {
  // 		body = C.GoBytes(unsafe.Pointer(req.body.val.ptr), C.int(req.body.val.len))
  // 	}

  final bodyBytes = req.ref.body.is_some
      ? req.ref.body.val.ptr.asTypedList(req.ref.body.val.len)
      : Uint8List(0);

  // 	method := methods[req.method]
  // 	uri := C.GoStringN(req.uri.ptr, C.int(req.uri.len))

  final method = Method.values[req.ref.method];

  /// https://stackoverflow.com/questions/75928981/how-to-convert-dartffi-char-to-string
  final uri =
      req.ref.uri.ptr.cast<Utf8>().toDartString(length: req.ref.uri.len);

  /// TODO
  /// - need to convert tuple to map entry
  final headers = <MapEntry<String, String>>[ for (var i = 0; i< req.ref.headers.len; ++i) 
    // MapEntry(req.ref.headers.ptr.ref.f0, req.ref.headers.ptr.ref.f1)
  ];
  

 	//r.Header = fromSpinHeaders(&req.headers)
// 	r.Host = r.Header.Get("Host")

// func fromSpinHeaders(hm *C.spin_http_headers_t) http.Header {
// 	headersLen := int(hm.len)
// 	headers := make(http.Header, headersLen)

// 	var headersArr *C.spin_http_tuple2_string_string_t = hm.ptr
// 	headersSlice := unsafe.Slice(headersArr, headersLen)
// 	for i := 0; i < headersLen; i++ {
// 		tuple := headersSlice[i]
// 		k := C.GoStringN(tuple.f0.ptr, C.int(tuple.f0.len))
// 		v := C.GoStringN(tuple.f1.ptr, C.int(tuple.f1.len))

// 		headers.Add(k, v)
// 	}

// 	return headers
// }

  /// TODO spin_http.Request to spin request should be in a separate file
  final HttpRequest request = SpinRequest(
    contentLength: req.ref.body.is_some ? -1 : bodyBytes.length,
    headers: null,
    method: method,
    requestedUri: null,
    session: null,
    uri: Uri.parse(uri),
  );
}

// package http

// // #cgo CFLAGS: -Wno-unused-parameter -Wno-switch-bool
// // #include<spin-http.h>
// // #include<stdlib.h>
// import "C"
// import (
// 	"bytes"
// 	"fmt"
// 	"io"
// 	"net/http"
// 	"os"
// 	"unsafe"
// )

// //export spin_http_handle_http_request
// func handle_http_request(req *C.spin_http_request_t, res *C.spin_http_response_t) {

// 	method := methods[req.method]
// 	uri := C.GoStringN(req.uri.ptr, C.int(req.uri.len))

// 	// NOTE Host is not included in the URL
// 	r, err := http.NewRequest(method, uri, bytes.NewReader(body))
// 	if err != nil {
// 		fmt.Fprintln(os.Stderr, err)
// 		res.status = C.uint16_t(http.StatusInternalServerError)
// 		return
// 	}

// 	r.Header = fromSpinHeaders(&req.headers)
// 	r.Host = r.Header.Get("Host")

// 	w := newResponse()

// 	// call user function
// 	handler(w, r)

// 	res.status = C.uint16_t(w.status)
// 	if len(w.header) > 0 {
// 		res.headers = C.spin_http_option_headers_t{
// 			is_some: true,
// 			val:     toSpinHeaders(w.header),
// 		}
// 	} else {
// 		res.headers = C.spin_http_option_headers_t{is_some: false}
// 	}

// 	res.body, err = toSpinBody(w.w)
// 	if err != nil {
// 		fmt.Fprintln(os.Stderr, err)
// 	}
// }

// func toSpinHeaders(hm http.Header) C.spin_http_headers_t {
// 	var reqHeaders C.spin_http_headers_t

// 	headersLen := len(hm)

// 	if headersLen > 0 {
// 		reqHeaders.len = C.ulong(headersLen)
// 		var x C.spin_http_tuple2_string_string_t
// 		reqHeaders.ptr = (*C.spin_http_tuple2_string_string_t)(C.malloc(C.size_t(headersLen) * C.size_t(unsafe.Sizeof(x))))
// 		headers := unsafe.Slice(reqHeaders.ptr, headersLen)

// 		idx := 0
// 		for k, v := range hm {
// 			headers[idx] = newSpinHeader(k, v[0])
// 			idx++
// 		}
// 	}
// 	return reqHeaders
// }

// func toSpinBody(body io.Reader) (C.spin_http_option_body_t, error) {
// 	var spinBody C.spin_http_option_body_t
// 	spinBody.is_some = false

// 	if body == nil {
// 		return spinBody, nil
// 	}

// 	buf := new(bytes.Buffer)
// 	len, err := buf.ReadFrom(body)
// 	if err != nil {
// 		return spinBody, err
// 	}

// 	if len > 0 {
// 		bodyPtr := (*C.uint8_t)(C.malloc(C.size_t(len)))
// 		copy(unsafe.Slice(bodyPtr, len), buf.Bytes())

// 		spinBody.is_some = true
// 		spinBody.val = C.spin_http_body_t{
// 			ptr: bodyPtr,
// 			len: C.size_t(len),
// 		}
// 	}

// 	return spinBody, nil
// }

// // newSpinHeader creates a new spinHeader with the given key/value.
// func newSpinHeader(k, v string) C.spin_http_tuple2_string_string_t {
// 	return C.spin_http_tuple2_string_string_t{
// 		f0: C.spin_http_string_t{ptr: C.CString(k), len: C.size_t(len(k))},
// 		f1: C.spin_http_string_t{ptr: C.CString(v), len: C.size_t(len(v))},
// 	}
// }

// func fromSpinHeaders(hm *C.spin_http_headers_t) http.Header {
// 	headersLen := int(hm.len)
// 	headers := make(http.Header, headersLen)

// 	var headersArr *C.spin_http_tuple2_string_string_t = hm.ptr
// 	headersSlice := unsafe.Slice(headersArr, headersLen)
// 	for i := 0; i < headersLen; i++ {
// 		tuple := headersSlice[i]
// 		k := C.GoStringN(tuple.f0.ptr, C.int(tuple.f0.len))
// 		v := C.GoStringN(tuple.f1.ptr, C.int(tuple.f1.len))

// 		headers.Add(k, v)
// 	}

// 	return headers
// }
