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
        inputDecorationTheme: InputDecorationTheme(
            fillColor: Colors.white,
            filled: true,
            labelStyle: TextStyle(color: Colors.black),
            floatingLabelBehavior: FloatingLabelBehavior.always,
            contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 3),
            focusedBorder: UnderlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: BorderSide(width: 2, color: Colors.black)),
            enabledBorder: UnderlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: BorderSide(width: 2, color: Colors.black))),
        scaffoldBackgroundColor: Colors.white,
        primarySwatch: Colors.orange,
      ),
    );
  }
}
