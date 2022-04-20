import 'dart:async';

import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:webview_test/scr/menu_button.dart';
import 'package:webview_test/scr/navigation_controls.dart';
import 'package:webview_test/scr/web_view_stack.dart';

void main() {
  runApp(
    const MaterialApp(
      home: WebViewApp(),
    ),
  );
}

class WebViewApp extends StatefulWidget {
  const WebViewApp({Key? key}) : super(key: key);

  @override
  State<WebViewApp> createState() => _WebViewAppState();
}

class _WebViewAppState extends State<WebViewApp> {
  final controller = Completer<WebViewController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Flutter WebView'),
          actions: [
            NavigationControls(controller: controller),
            Menu(controller: controller),
          ],
        ),
        body: WebViewStack(
          controller: controller,
        ));
  }
}
