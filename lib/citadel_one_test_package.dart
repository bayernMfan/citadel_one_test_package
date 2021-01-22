
import 'dart:async';

import 'package:flutter/services.dart';

class CitadelOneTestPackage {
  static const MethodChannel _channel =
      const MethodChannel('citadel_one_test_package');

  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}
