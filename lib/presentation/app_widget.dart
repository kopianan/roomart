import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:roomart/presentation/dashboard/dashboard_page.dart';
import 'package:roomart/routes/router.dart';

class AppWidget extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      getPages: pages,
      initialRoute: DashboardPage.TAG,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        primarySwatch: Colors.blue,
      ),
    );
  }
}
