import 'dart:ffi';
import 'package:ffi/ffi.dart' as ffi;

import '../components/all.dart' as dart;
import '../bindings/spin_http.dart' as spin;
import '../bindings/wasi_outbound_http.dart' as wasi;

import '../helpers/all.dart';

extension SpinHttpHeadersDartHeadersInterop on spin.Headers {
  dart.Headers toDart({Allocator allocator = ffi.malloc}) {
    final headers = {
      for (var i = 0; i < len; ++i) ptr.ref.f0.toDart(): ptr.ref.f1.toDart(),
    };
    allocator.free(ptr);
    return headers;
  }

  void fromDart(
    dart.Headers headers, {
    Allocator allocator = ffi.malloc,
  }) {
    final entries = [...headers.entries];
    len = entries.length;
    allocator.free(ptr);
    // see https://github.com/iapicca/spinda/issues/4
    for (var i = 0; i < entries.length; ++i) {
      final entry = entries[i];
      ptr[i]
        ..f0.fromDart(entry.key)
        ..f1.fromDart(entry.value);
    }
  }
}

extension SpinUpdateHeadersX on spin.OptionHeaders {
  dart.Headers toDart({Allocator allocator = ffi.malloc}) =>
      is_some ? val.toDart(allocator: allocator) : {};

  void fromDart(
    dart.Headers headers, {
    Allocator allocator = ffi.malloc,
  }) {
    is_some = headers.isNotEmpty;
    val.fromDart(headers, allocator: allocator);
  }
}

extension WasiHttpHeadersDartHeadersInterop on wasi.Headers {
  dart.Headers toDart({Allocator allocator = ffi.malloc}) {
    final headers = {
      for (var i = 0; i < len; ++i) ptr.ref.f0.toDart(): ptr.ref.f1.toDart(),
    };
    allocator.free(ptr);
    return headers;
  }

  void fromDart(
    dart.Headers headers, {
    Allocator allocator = ffi.malloc,
  }) {
    final entries = [...headers.entries];
    len = entries.length;
    allocator.free(ptr);
    // see https://github.com/iapicca/spinda/issues/4
    for (var i = 0; i < entries.length; ++i) {
      final entry = entries[i];
      ptr[i]
        ..f0.fromDart(entry.key)
        ..f1.fromDart(entry.value);
    }
  }
}

extension WasiUpdateHeadersX on wasi.OptionHeaders {
  dart.Headers toDart({Allocator allocator = ffi.malloc}) =>
      is_some ? val.toDart(allocator: allocator) : {};

  void fromDart(
    dart.Headers headers, {
    Allocator allocator = ffi.malloc,
  }) {
    is_some = headers.isNotEmpty;
    val.fromDart(headers, allocator: allocator);
  }
}
