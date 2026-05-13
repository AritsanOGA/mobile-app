import 'dart:convert';

import 'package:artisan_oga/core/routes/app_routes.dart';
import 'package:artisan_oga/core/services/local_storage.dart';
import 'package:artisan_oga/di.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

class FirebaseApi {
  final _firebaseMessaging = FirebaseMessaging.instance;
  final _localStorage = locator<LocalStorageService>();

  final _androidChannel = AndroidNotificationChannel(
      'high_importance_channel', 'High Importance Notifications',
      description: 'This channel is used for imortant notification',
      importance: Importance.defaultImportance);
  final _localNotifications = FlutterLocalNotificationsPlugin();

  void handleMessage(RemoteMessage? message) {
    if (message == null) return;
    AppRoutes.navigatorKey.currentState?.pushNamed(
      AppRoutes.acceptRejectPageScreen,
      //   arguments: message,
    );
  }

  Future initLocalNotifications() async {
    const iOS = DarwinInitializationSettings();
    const android = AndroidInitializationSettings('@mipmap/ic_launcher');
    const settings = InitializationSettings(android: android, iOS: iOS);
    await _localNotifications.initialize(
      settings,
      onDidReceiveNotificationResponse: (details) {
        final payload = details.payload;
        if (payload != null) {
          try {
            final data = jsonDecode(payload) as Map<String, dynamic>;
            final message = RemoteMessage.fromMap({
              'data': data,
            });
            handleMessage(message);
          } catch (e) {
            print('❌ Failed to decode payload: $e');
          }
        }
        // final message = RemoteMessage.fromMap(jsonEncode(details));
        // handleMessage(message);
      },
    );
    final platform = _localNotifications.resolvePlatformSpecificImplementation<
        AndroidFlutterLocalNotificationsPlugin>();
    if (platform != null) {
      await platform.createNotificationChannel(_androidChannel
          // const AndroidNotificationChannel(
          //   'recall_channel', // ID
          //   'Recall Notifications', // Name
          //   description: 'Channel for important recall notifications',
          //   importance: Importance.max,
          // ),
          );
    }
  }

  Future initPushNotification() async {
    await FirebaseMessaging.instance
        .setForegroundNotificationPresentationOptions(
      alert: true,
      badge: true,
      sound: true,
    );
    FirebaseMessaging.instance.getInitialMessage().then(handleMessage);
    FirebaseMessaging.onMessageOpenedApp.listen(handleMessage);
    FirebaseMessaging.onMessage.listen((RemoteMessage message) {
      RemoteNotification? notification = message.notification;
      AndroidNotification? android = message.notification?.android;

      final title = notification?.title ?? message.data['title'];
      final body = notification?.body ?? message.data['body'];

      if (title != null || body != null) {
        FlutterLocalNotificationsPlugin().show(
          message.hashCode,
          title,
          body,
          NotificationDetails(
            android: AndroidNotificationDetails(
              _androidChannel.id,
              _androidChannel.name,
              channelDescription: _androidChannel.description,
              importance: Importance.max,
              priority: Priority.high,
              icon: '@mipmap/ic_launcher',
            ),
          ),
          payload: jsonEncode(message.data),
        );
      }
    });

    // FirebaseMessaging.onMessage.listen((message) {
    //   final notification = message.notification;
    //   if (notification == null) return;
    //   _localNotifications.show(
    //       message.hashCode,
    //       message.notification?.title ?? message.data['title'],
    //       message.notification?.body ?? message.data['body'],
    //       // notification.hashCode,
    //       // notification.title,
    //       // notification.body,
    //       NotificationDetails(
    //           android: AndroidNotificationDetails(
    //               _androidChannel.id, _androidChannel.name,
    //               icon: '@drawable/ic_launcher')),
    //       payload: jsonEncode(message.data));
    // });
  }

  Future<void> initNotifications() async {
    await _firebaseMessaging.requestPermission();

    String? fcmToken;

    // (Platform.isIOS) {
    // _firebaseMessaging.onAPNSTokenChanged.listen((String? apnsToken) async {

    String? apnsToken = await _firebaseMessaging.getToken();

    fcmToken = await _firebaseMessaging.getToken();
    await _localStorage.saveToDisk('notificationToken', fcmToken);
    // _userStorageService.saveNotification(fcmToken ?? '');
    print('📱 iOS FCM token: $fcmToken');
    //   final savedToken = _userStorageService.notificationToken;

    //   if (savedToken != apnsToken) {
    //     final authBloc = locator<AuthenticationBloc>();
    //     authBloc.add(AuthenticationEvent.sendToken(apnsToken));
    //   } else {
    //     print('✅ Token is up-to-date. No update needed.');
    //   }
    // } else {
    //   fcmToken = await _firebaseMessaging.getToken();
    //   _userStorageService.saveNotification(fcmToken ?? '');
    //   print('🤖 Android FCM token: $fcmToken');
    // }
    // final savedToken = _userStorageService.notificationToken;

    // if (savedToken != fcmToken) {
    //   final authBloc = locator<AuthenticationBloc>();
    //   authBloc.add(AuthenticationEvent.sendToken(fcmToken));
    // } else {
    //   print('✅ Token is up-to-date. No update needed.');
    // }
    // _firebaseMessaging.onTokenRefresh.listen((newToken) {
    //   print('FCM token refreshed: $newToken');
    //   // TODO: Save/send refreshed token to backend
    // });

    // Save or use the token

    initPushNotification();
    initLocalNotifications();
  }

  Future<void> handleBackgroundMessaging(RemoteMessage message) async {
    print('title ${message.notification?.title}');
    print('Body ${message.notification?.body}');
    print('Payload ${message.data}');
  }
}
