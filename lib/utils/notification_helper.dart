import 'package:flutter_local_notifications/flutter_local_notifications.dart';

class NotificationHelper {
  static FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
      FlutterLocalNotificationsPlugin();
  static final androidPlatformChannelSpecifics = AndroidNotificationDetails(
      'some_channel_id', 'channel_name', 'channel_description',
      importance: Importance.max,
      priority: Priority.high,
      enableVibration: true);

  static final iOSPlatformChannelSpecifics = IOSNotificationDetails();

  static NotificationDetails notificationDetails() {
    return NotificationDetails(
        android: androidPlatformChannelSpecifics,
        iOS: iOSPlatformChannelSpecifics);
  }

  static Future showNotification(String title, String body) async {
    var android = AndroidNotificationDetails(
      'id',
      'channel ',
      'description',
      priority: Priority.high,
      importance: Importance.max,
    );

    var platform = new NotificationDetails(
      android: android,
    );
    await flutterLocalNotificationsPlugin.show(
      0,
      title,
      body,
      platform,
    );
  }
}
