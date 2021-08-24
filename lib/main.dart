import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:get_storage/get_storage.dart';
import 'package:roomart/presentation/app_widget.dart';
import 'package:roomart/utils/notification_helper.dart';

import 'injection.dart';

FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
    FlutterLocalNotificationsPlugin();
Future<void> _firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  
  // If you're going to use other Firebase services in the background, such as Firestore,
  // make sure you call `initializeApp` before using other Firebase services.
  await Firebase.initializeApp();
  if (message.notification != null) {
    String? title = message.notification!.title;
    String? body = message.notification!.body;
    await showNotificationWithDefaultSound(title!, body!);
  }
  return Future<void>.value();
}

Future showNotificationWithDefaultSound(String title, String message) async {
  NotificationHelper.showNotification(title, message);
}

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);
  FirebaseMessaging.onMessage.listen((event) {
    _firebaseMessagingBackgroundHandler(event);
  });

  FirebaseMessaging.onMessageOpenedApp.listen((RemoteMessage message) {
    _firebaseMessagingBackgroundHandler(message);
  });
  configureDependencies();
  await GetStorage.init();
  FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);

  runApp(AppWidget());
}

