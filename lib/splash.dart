import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_fac_pro/about.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedSplashScreen(
        splashIconSize: 1000,
        splash: const Hero(
          tag: 'id1',
          child: Icon(
            Icons.school_rounded,
            color: Colors.red,
            size: 100,
          ),
        ),
        nextScreen: const AboutScrean(),
      ),
    );
  }
}
