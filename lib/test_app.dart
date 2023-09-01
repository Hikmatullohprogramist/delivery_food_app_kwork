import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
      FlutterLocalNotificationsPlugin();

  @override
  void initState() {
    super.initState();

    var initializationSettingsAndroid =
        AndroidInitializationSettings('@mipmap/ic_launcher');

    var initializationSettings = InitializationSettings(
      android: initializationSettingsAndroid,
    );

    flutterLocalNotificationsPlugin.initialize(
      initializationSettings,
    );

    // Vaqt cheklovini sozlash
    SystemChannels.lifecycle.setMessageHandler((msg) async {
      if (msg == AppLifecycleState.resumed.toString()) {
        var now = DateTime.now();
        var start = DateTime(now.year, now.month, now.day, 8, 0); // 08:00
        var end = DateTime(now.year, now.month, now.day, 18, 0); // 18:00

        if (now.isAfter(start) && now.isBefore(end)) {
          await showNotification();
        }
      }
      return null;
    });
  }

  Future<void> showNotification() async {
    var androidPlatformChannelSpecifics = AndroidNotificationDetails(
      'your_channel_id',
      'your_channel_name',
      importance: Importance.max,
      priority: Priority.high,
      playSound: false,
      enableVibration: true,
      vibrationPattern: Int64List.fromList([0, 2000, 500, 1000]),
    );

    var platformChannelSpecifics = NotificationDetails(
      android: androidPlatformChannelSpecifics,
    );

    await flutterLocalNotificationsPlugin.show(
      0,
      'Internetni yoq xorami iplos',
      'Pulini hallolab ol!',
      platformChannelSpecifics,
      payload: 'item x',
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Internet Vaqti Notifikatsiyasi'),
      ),
      body: Center(
        child: Text('Foydalanuvchiga vibratsiya qilish uchun kod'),
      ),
    );
  }
}
