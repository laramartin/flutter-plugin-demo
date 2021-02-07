import 'package:flutter/material.dart';
import 'package:share_plugin_demo_android_ios/share_plugin_demo_android_ios.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Share Plugin Demo'),
        ),
        body: Center(
          child: ElevatedButton(
            child: Text("Share"),
            onPressed: () {
              SharePluginDemoAndroidIos.share("Hello Flutter Engage!");
            },
          ),
        ),
      ),
    );
  }
}
