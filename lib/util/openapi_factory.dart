import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_flavor/flutter_flavor.dart';
import 'package:openapi/openapi.dart';

import '../flavors.dart';

class OpenApiFactory {
  OpenApiFactory();

  Openapi build() {
    return Openapi(
      basePathOverride: F.baseUrl + "/api",
      interceptors: [
        if (kDebugMode) LogInterceptor(requestBody: true, responseBody: true),
      ],
    );
  }
}