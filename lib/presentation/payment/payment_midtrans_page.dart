import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:roomart/domain/transaction/trans_item/trans_response.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:webview_flutter/webview_flutter.dart';

class PaymentMidtransPage extends StatefulWidget {
  static final String TAG = '/payment_midtrans_page';
  @override
  _PaymentMidtransPageState createState() => _PaymentMidtransPageState();
}

class _PaymentMidtransPageState extends State<PaymentMidtransPage> {
  TransResponse url;
  @override
  void initState() {
    if (GetPlatform.isAndroid) WebView.platform = SurfaceAndroidWebView();
    url = Get.arguments as TransResponse;
    super.initState();
  }

  WebViewController _controller;
  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
