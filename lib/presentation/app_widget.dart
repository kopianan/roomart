import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:get/get.dart';
import 'package:roomart/application/auth/auth_controller.dart';
import 'package:roomart/presentation/dashboard/dashboard_page.dart';
import 'package:roomart/presentation/splash_screen/splash_screen_page.dart';
import 'package:roomart/routes/router.dart';

class AppWidget extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _AppWidgetState createState() => _AppWidgetState();
}

class _AppWidgetState extends State<AppWidget> {
  final authController = Get.put(AuthController());
  FirebaseMessaging firebaseMessaging = FirebaseMessaging.instance;
  FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
      FlutterLocalNotificationsPlugin();

  @override
  void initState() {
    firebaseMessaging
        .subscribeToTopic("all")
        .then((value) => print("Subs to topic"));

    var initializationSettingsAndroid =
        AndroidInitializationSettings('@mipmap/ic_launcher');

    var initSetttings =
        InitializationSettings(android: initializationSettingsAndroid);

    flutterLocalNotificationsPlugin.initialize(initSetttings,
        onSelectNotification: onSelectNotification);
    super.initState();
  }

  Future onSelectNotification(String? payload) async {
    return Get.toNamed(DashboardPage.TAG);
  }

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      getPages: pages,
      debugShowCheckedModeBanner: false,
      initialRoute: SplashScreenPage.TAG,
      // home: TestPage(),
      theme: ThemeData(
          bottomNavigationBarTheme: BottomNavigationBarThemeData(
              backgroundColor: Colors.white, elevation: 4),
          appBarTheme: AppBarTheme(
              centerTitle: true,
              elevation: 3,
              iconTheme: IconThemeData(color: Colors.white)),
          inputDecorationTheme: InputDecorationTheme(
              fillColor: Colors.white,
              filled: true,
              labelStyle: TextStyle(color: Colors.black),
              floatingLabelBehavior: FloatingLabelBehavior.always,
              contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 3),
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide(width: 1, color: Colors.grey)),
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide(width: 1, color: Colors.grey))),
          scaffoldBackgroundColor: Colors.white,
          primarySwatch: Colors.deepOrange),
    );
  }
}
