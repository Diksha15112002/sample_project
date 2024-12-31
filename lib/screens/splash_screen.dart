import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 3), () {
      context.go('/');
    });
    return Scaffold(
      backgroundColor: Colors.green,
      body: Center(
        child: Container(
            height: 82,
            width: 279,
            child: Image.asset('images/img.png')),
      ),
    );
  }
}