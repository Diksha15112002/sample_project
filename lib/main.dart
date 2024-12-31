import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:sample_project1/screens/detail_screen.dart';
import 'package:sample_project1/screens/dialog_screen.dart';
import 'package:sample_project1/screens/drawer_screen.dart';
import 'package:sample_project1/screens/home_screen.dart';
import 'package:sample_project1/screens/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      routerConfig: _router,
    );
  }
}
final GoRouter _router = GoRouter(
  initialLocation: '/splash',
  routes: [
    GoRoute(
      path: '/splash',
      builder: (context, state) => SplashScreen(),
    ),
    GoRoute(
      path: '/',
      builder: (context, state) => HomeScreen(),
      routes: [
        GoRoute(
          path: 'details',
          builder: (context, state) => DetailScreen(),
        ),
      ],
    ),
    GoRoute(
      path: '/dialog',
      builder: (context, state) => DialogScreen(),
    ),
    GoRoute(
      path: '/drawer',
      builder: (context, state) => DrawerScreen(),
    ),
  ],
);