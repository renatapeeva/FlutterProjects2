import 'package:flutter/material.dart';
import 'package:lab2_213003/providers/favorites_provider.dart';
import 'package:lab2_213003/screens/home_screen.dart';
import 'package:provider/provider.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();  // Initialize Firebase

  // Request permission for push notifications
  await FirebaseMessaging.instance.requestPermission();

  // Get the FCM token (optional: send to your server for registration)
  String? token = await FirebaseMessaging.instance.getToken();
  print("FCM Token: $token");

  // Handle background notifications when the app is in background
  FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);

  // Initialize push notification settings
  setupFirebaseMessaging();

  runApp(const MyApp());
}

void setupFirebaseMessaging() {
  FirebaseMessaging.onMessage.listen((RemoteMessage message) {
    print('Received a message: ${message.notification?.title}');
    // Optionally, show the notification content or navigate to a screen
  });

  FirebaseMessaging.onMessageOpenedApp.listen((RemoteMessage message) {
    print('Message clicked! ${message.notification?.title}');
    // Handle when the notification is clicked
  });
}

// This handler will be called when the app is in the background or terminated
Future<void> _firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  print("Handling a background message: ${message.notification?.title}");
  // Handle background notification
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => FavoritesProvider(),
      child: MaterialApp(
        title: 'Joke App',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const HomeScreen(),
      ),
    );
  }
}