import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_fac_pro/splash.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      options: const FirebaseOptions(
          apiKey: 'AIzaSyDXESypWE6Np9wQfyGXkVo9rrHGa5oTa7I',
          appId: 'com.example.flutter_fac_pro',
          messagingSenderId: '597363150151',
          projectId: 'notes-app-4d6ed'));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.red,
        buttonTheme: const ButtonThemeData(
          buttonColor: Colors.red,
        ),
        useMaterial3: true,
      ),
      home: const SplashScreen(),
    );
  }
}
