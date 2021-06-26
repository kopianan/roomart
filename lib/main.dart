import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:get_storage/get_storage.dart';
import 'package:roomart/presentation/app_widget.dart';

import 'injection.dart';

Future<void> _firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  // If you're going to use other Firebase services in the background, such as Firestore,
  // make sure you call `initializeApp` before using other Firebase services.
  await Firebase.initializeApp();
  print(message.data);
  if (message.data['notification'] != null) {
    final data = message.data['notification'];
    final title = data['title'];
    final body = data['body'];
    await showNotificationWithDefaultSound(title, body);
  }
  return Future<void>.value();
}

Future showNotificationWithDefaultSound(String title, String message) async {
  FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
      FlutterLocalNotificationsPlugin();

  var androidPlatformChannelSpecifics = AndroidNotificationDetails(
      'some_channel_id', 'channel_name', 'channel_description',
      importance: Importance.max,
      priority: Priority.high,
      enableVibration: true);
  var iOSPlatformChannelSpecifics = IOSNotificationDetails();
  var platformChannelSpecifics = NotificationDetails(
      android: androidPlatformChannelSpecifics,
      iOS: iOSPlatformChannelSpecifics);
  await flutterLocalNotificationsPlugin.show(
    0,
    '$title',
    '$message',
    platformChannelSpecifics,
    payload: 'Default_Sound',
  );
}

/// Create a [AndroidNotificationChannel] for heads up notifications
AndroidNotificationChannel? channel;

/// Initialize the [FlutterLocalNotificationsPlugin] package.
FlutterLocalNotificationsPlugin? flutterLocalNotificationsPlugin;

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
  flutterLocalNotificationsPlugin = FlutterLocalNotificationsPlugin();

  runApp(AppWidget());
}
