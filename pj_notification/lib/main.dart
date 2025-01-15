import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:notification_test/screen_ui_send.dart';

import 'bloc/notification_bloc.dart';
import 'device_token_sreen.dart';
import 'get_it.dart';
import 'firebase_options.dart';

@pragma('vm:entry-point')
Future<void> _firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  showNotification(message);
}

void showNotification(RemoteMessage message) {
  if (message.notification != null) {
    FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
        FlutterLocalNotificationsPlugin();

    flutterLocalNotificationsPlugin.initialize(
      const InitializationSettings(
        android: AndroidInitializationSettings('@mipmap/ic_launcher'),
        iOS: DarwinInitializationSettings(
            requestAlertPermission: true,
            requestBadgePermission: true,
            requestSoundPermission: true,
            requestCriticalPermission:
                true // Cho phép hiện thị khi khóa màn hình iOS
            ),
      ),
    );

    flutterLocalNotificationsPlugin.show(
      0,
      message.notification?.title,
      message.notification?.body,
      const NotificationDetails(
        android: AndroidNotificationDetails(
          'high_importance_channel',
          'High Importance Notifications',
          importance: Importance.max,
          priority: Priority.high,
          fullScreenIntent: true, // Hiển thị khi khóa màn hình Android
          visibility: NotificationVisibility.public,
        ),
        iOS: DarwinNotificationDetails(
            presentAlert: true,
            presentBadge: true,
            presentSound: true,
            interruptionLevel:
                InterruptionLevel.critical // Mức độ ưu tiên cao nhất cho iOS
            ),
      ),
    );
  }
}

Future<void> _setupNotifications() async {
  await FirebaseMessaging.instance.requestPermission(
    alert: true,
    badge: true,
    sound: true,
    criticalAlert: true,
  );

  FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);
  FirebaseMessaging.onMessage.listen(showNotification);

  FirebaseMessaging.instance.getInitialMessage().then((message) {
    if (message != null) {
      // Handle tap action
    }
  });

  FirebaseMessaging.onMessageOpenedApp.listen((message) {
    // Handle tap action
  });
}

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  setupDependencies();
  await _setupNotifications();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<NotificationBloc>(),
      child: MaterialApp(
        title: 'Notification Demo',
        theme: ThemeData(primarySwatch: Colors.blue),
        initialRoute: '/send-notification',
        routes: {
          '/send-notification': (context) => NotificationSenderScreen(),
          '/device-token': (context) => const DeviceTokenScreen(),
        },
      ),
    );
  }
}
