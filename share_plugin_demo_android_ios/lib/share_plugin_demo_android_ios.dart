import 'dart:async';

import 'package:flutter/services.dart';

class SharePluginDemoAndroidIos {
  static const MethodChannel _channel =
      const MethodChannel('share_plugin_demo_android_ios');

  static Future<void> share(String message) async {
    await _channel.invokeMethod('share', {'message': message});
  }
}
