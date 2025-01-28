import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:notification_test/screen_ui_send.dart';
import 'bloc/notification_bloc.dart';
import 'device_token_sreen.dart';
import 'firebase_options.dart';
import 'get_it.dart';

@pragma('vm:entry-point')
Future<void> _firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  showNotification(message);
}

void showNotification(RemoteMessage message) async {
  if (message.notification != null && message.data['type'] == 'call') {
    final callId = message.data['call_id'];
    final notificationId = callId.hashCode % 0x7FFFFFFF;
    final callerName = message.notification?.title ?? 'Unknown';
    final phoneNumber = message.notification?.body ?? '';

    FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
    FlutterLocalNotificationsPlugin();

    const androidPlatformChannelSpecifics = AndroidNotificationDetails(
      'call_channel',
      'Incoming Calls',
      channelDescription: 'Used for incoming call notifications',
      importance: Importance.max,
      priority: Priority.max,
      fullScreenIntent: true,
      category: AndroidNotificationCategory.call,
      visibility: NotificationVisibility.public,
      sound:  RawResourceAndroidNotificationSound('ringtone'),
      playSound: true,
      ongoing: false,
      autoCancel: true,
      timeoutAfter: 15000, // Tự động ẩn sau 15 giây
    );

    const iOSPlatformChannelSpecifics = DarwinNotificationDetails(
      presentAlert: true,
      presentBadge: true,
      presentSound: true,
      sound: 'ringtone.wav',
      interruptionLevel: InterruptionLevel.critical,
      categoryIdentifier: 'call',
    );

    await flutterLocalNotificationsPlugin.initialize(
      const InitializationSettings(
        android: AndroidInitializationSettings('@mipmap/ic_launcher'),
        iOS: DarwinInitializationSettings(
          requestAlertPermission: true,
          requestBadgePermission: true,
          requestSoundPermission: true,
          requestCriticalPermission: true,
        ),
      ),
      onDidReceiveNotificationResponse: (NotificationResponse details) {
        final bloc = getIt<NotificationBloc>();

        if (details.actionId == 'accept') {
          bloc.add(NotificationEvent.acceptCall(callId: callId));
        } else if (details.actionId == 'decline') {
          bloc.add(NotificationEvent.declineCall(callId: callId));
        }
      },
    );

    await flutterLocalNotificationsPlugin.show(
      notificationId,
      callerName,
      phoneNumber,
      const NotificationDetails(
        android: androidPlatformChannelSpecifics,
        iOS: iOSPlatformChannelSpecifics,
      ),
    );

    Future.delayed(const Duration(seconds: 15), () async {
      await flutterLocalNotificationsPlugin.show(
        notificationId, // Reuse notificationId
        'Cuộc gọi nhỡ',
        'Bạn đã bỏ lỡ cuộc gọi từ $callerName',
        const NotificationDetails(
          android: AndroidNotificationDetails(
            'missed_call_channel',
            'Missed Calls',
            channelDescription: 'Used for missed call notifications',
            importance: Importance.defaultImportance,
            priority: Priority.defaultPriority,
          ),
          iOS: DarwinNotificationDetails(
            presentAlert: true,
            presentBadge: true,
            presentSound: true,
          ),
        ),
      );
    });
  }
}


Future<void> _setupNotifications() async {
  // Request permissions
  await FirebaseMessaging.instance.requestPermission(
    alert: true,
    badge: true,
    sound: true,
    criticalAlert: true,
    provisional: false,
  );

  FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);
  FirebaseMessaging.onMessage.listen(showNotification);

  FirebaseMessaging.instance.getInitialMessage().then((message) {
    if (message?.data['type'] == 'call') {
      // Handle call notification tap when app was terminated
    }
  });

  FirebaseMessaging.onMessageOpenedApp.listen((message) {
    if (message.data['type'] == 'call') {
      // Handle call notification tap when app was in background
    }
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
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<NotificationBloc>(),
      child: MaterialApp(
        title: 'Notification Demo',
        theme: ThemeData(primarySwatch: Colors.blue),
        initialRoute: '/send-notification',
        routes: {
          '/send-notification': (context) => const NotificationSenderScreen(),
          '/device-token': (context) => const DeviceTokenScreen(),
        },
      ),
    );
  }
}
