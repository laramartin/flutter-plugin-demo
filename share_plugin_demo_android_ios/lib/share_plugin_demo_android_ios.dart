
import 'dart:async';

import 'package:flutter/services.dart';

class SharePluginDemoAndroidIos {
  static const MethodChannel _channel =
      const MethodChannel('share_plugin_demo_android_ios');

  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}
