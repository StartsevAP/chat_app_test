import 'package:chat_app_test/view/screen.dart';
import 'package:flutter/material.dart';
import 'package:lifecycle/lifecycle.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Test',
      theme: ThemeData(
        textTheme: const TextTheme(
          bodyMedium:
              TextStyle(fontSize: 14, color: Color.fromRGBO(0, 0, 0, 1)),
          titleMedium:
              TextStyle(fontSize: 14, color: Color.fromRGBO(0, 0, 0, 1)),
          titleSmall:
              TextStyle(fontSize: 14, color: Color.fromRGBO(0, 0, 0, 0.51)),
          titleLarge:
              TextStyle(fontSize: 16, color: Color.fromRGBO(0, 0, 0, 1)),
          labelMedium:
              TextStyle(fontSize: 12, color: Color.fromRGBO(255, 255, 255, 1)),
        ),
        primaryColor: const Color.fromRGBO(232, 236, 243, 1),
        backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
        accentColor: const Color.fromRGBO(180, 228, 255, 0.7),
      ),
      home: Scaffold(body: Screen()),
    );
  }
}
