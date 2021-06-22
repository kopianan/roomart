import 'package:color_to_material/color_to_material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:roomart/application/auth/auth_controller.dart';
import 'package:roomart/presentation/dashboard/dashboard_page.dart';
import 'package:roomart/presentation/payment/test_page.dart';
import 'package:roomart/presentation/splash_screen/splash_screen_page.dart';
import 'package:roomart/routes/router.dart';
import 'package:roomart/utils/constants.dart';
import 'package:roomart/utils/my_color.dart';

class AppWidget extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _AppWidgetState createState() => _AppWidgetState();
}

class _AppWidgetState extends State<AppWidget> {
  final Future<FirebaseApp> _initialization = Firebase.initializeApp();

  final authController = Get.put(AuthController());

  @override
  void initState() {
    
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      // Initialize FlutterFire:
      future: _initialization,
      builder: (context, snapshot) {
        // Check for errors
        if (snapshot.hasError) {
          return MaterialApp(
            home: Scaffold(
              body: Center(
                child: Column(
                  children: [Text("Firebase Error")],
                ),
              ),
            ),
          );
        }

        // Once complete, show your application
        if (snapshot.connectionState == ConnectionState.done) {
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
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 10, vertical: 3),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide(width: 1, color: Colors.grey)),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide(width: 1, color: Colors.grey))),
                scaffoldBackgroundColor: Colors.white,
                primarySwatch:
                    ColorToMaterial.fromHEX(primaryColor).getMaterialColor()),
          );
        }

        // Otherwise, show something whilst waiting for initialization to complete
        return MaterialApp(
          home: Scaffold(
            body: Center(
              child: Column(
                children: [CircularProgressIndicator()],
              ),
            ),
          ),
        );
      },
    );
  }
}
