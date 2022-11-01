import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'loading.dart';
import 'home.dart';
import 'location.dart';
import 'settings.dart';
import 'fakecall.dart';
import 'firebase_options.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        routes: {
          '/': (context) => Loading(),
          '/home': (context) => HomeScreen(),
          '/location': (context) => LocationScreen(),
          '/settings': (context) => SettingsScreen(),
          ' /fakecall': (context) => PlayMessageScreen(),
        }
    );
  }
}