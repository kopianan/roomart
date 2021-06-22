import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:roomart/presentation/app_widget.dart';

import 'injection.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  configureDependencies();
  await GetStorage.init();
  FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);

  runApp(AppWidget());
}

Future<void> _firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  // If you're going to use other Firebase services in the background, such as Firestore,
  // make sure you call `initializeApp` before using other Firebase services.
  await Firebase.initializeApp();

  if (message.data['notification'] != null) {
    final data = message.data['notification'];
    final title = data['title'];
    final body = data['body'];
    await showNotificationWithDefaultSound(title, body);
  }
  return Future<void>.value();
}

Future showNotificationWithDefaultSound(String title, String message) async {
  print(message);
  
}
