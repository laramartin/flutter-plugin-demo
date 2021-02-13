import 'dart:async';
import 'dart:html' as html show window;

import 'package:flutter/services.dart';
import 'package:flutter_web_plugins/flutter_web_plugins.dart';
import 'package:url_launcher/url_launcher.dart';

class SharePluginDemoAndroidIosWeb {
  static void registerWith(Registrar registrar) {
    final MethodChannel channel = MethodChannel(
      'share_plugin_demo_android_ios',
      const StandardMethodCodec(),
      registrar,
    );

    final pluginInstance = SharePluginDemoAndroidIosWeb();
    channel.setMethodCallHandler(pluginInstance.handleMethodCall);
  }

  Future<dynamic> handleMethodCall(MethodCall call) async {
    switch (call.method) {
      case 'share':
        return share(call.arguments["message"]);
        break;
      default:
        throw PlatformException(
          code: 'Unimplemented',
          details: 'share_plugin_demo_android_ios for web doesn\'t implement \'${call.method}\'',
        );
    }
  }

  Future<void> share(String message) async {
    print('share');
    final uri = Uri.encodeFull('mailto:?body=$message');
    await launch(uri);
  }
}
