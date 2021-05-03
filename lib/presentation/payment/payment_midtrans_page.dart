import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:webview_flutter/webview_flutter.dart';

class PaymentMidtransPage extends StatefulWidget {
  static final String TAG = '/payment_midtrans_page';
  @override
  _PaymentMidtransPageState createState() => _PaymentMidtransPageState();
}

class _PaymentMidtransPageState extends State<PaymentMidtransPage> {
  String url;
  @override
  void initState() {
    if (GetPlatform.isAndroid) WebView.platform = SurfaceAndroidWebView();
    url = Get.arguments as String;
    super.initState();
  }

  WebViewController _controller;
  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return WebView(

      initialUrl:
          "https://app.sandbox.midtrans.com/payment-links/1620053179187",
      javascriptMode: JavascriptMode.unrestricted,
      onWebViewCreated: (controller) {
        _controller = controller;
      },
    );
  }
}
