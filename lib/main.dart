import 'package:flutter/material.dart';
import '../pages/splash.dart';
import '../layout/main_layout.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      initialRoute: '/splash',

      routes: {
        '/splash': (context) => const SplashScreen(),
        '/main': (context) => const MainLayout(),
      },
    );
  }
}
