import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebContentView extends StatefulWidget {
  const WebContentView({super.key, required this.url});
  final String url;

  @override
  State<WebContentView> createState() => _WebContentViewState();
}

class _WebContentViewState extends State<WebContentView> {
  WebViewController controller = WebViewController();

  WebViewController get webViewController {
    return controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.disabled)
      ..loadRequest(Uri.parse(widget.url));
  }

  @override
  Widget build(BuildContext context) {
    return WebViewWidget(
      controller: webViewController,
    );
  }
}
