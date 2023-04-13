import '../bindings/spin_http.dart' as spin_http;
import '../components/headers.dart' as dart;

extension UpdateHeadersX on spin_http.Response {
  void updateHeaders(dart.Headers update) {
    headers.is_some = update.isNotEmpty;
  }
}
