enum Method {
  get,
  post,
  put,
  delete,
  patch,
  head,
  options;

  factory Method.fromIndex(int index) {
    if (Method.values.length > index) {
      return Method.values[index];
    }
    throw Exception('unknown method');
  }
}
