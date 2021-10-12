import 'dart:io';

import 'package:flutter_getx_boilerplate/utils/api.dart';
import 'package:get/get_connect.dart';

//
// Extend this anywhere you need to use GetConnect to use a single point
// of truth for all http calls
//
class BaseConnect extends GetConnect {
  @override
  void onInit() {
    httpClient.baseUrl = BASE_URL;
    httpClient.timeout = const Duration(minutes: 5);
    httpClient.maxAuthRetries = 100;
    httpClient.defaultContentType = ContentType.json.toString();
    super.onInit();
  }
}
