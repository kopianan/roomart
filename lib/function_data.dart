import 'dart:io';

import 'package:dio/adapter.dart';
import 'package:dio/dio.dart';

HttpClient? dioFixing(Dio dio) {
  Dio dio = new Dio();

  (dio.httpClientAdapter as DefaultHttpClientAdapter).onHttpClientCreate =
      (HttpClient client) {
    client.badCertificateCallback =
        (X509Certificate cert, String host, int port) => true;
    return client;
  };
}
