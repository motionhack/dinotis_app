import 'dart:async';

import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:motionhack_9/features/foryoupage/components/jadwalCard.dart';
import 'package:motionhack_9/features/home/home_screen.dart';
import 'package:motionhack_9/features/intro/splash_screen.dart';
import 'package:motionhack_9/features/jadwal/jadwalPage.dart';
import 'package:motionhack_9/features/profile/profile_screen.dart';
import 'package:motionhack_9/features/searchpage/searchPage.dart';
import 'package:motionhack_9/features/timelinepage/timelinePage.dart';
import 'package:motionhack_9/features/login/daftar_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Obrol',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const SplashScreen(),
        '/forum': (context) => const searchPage(),
        '/jadwal': (context) => const jadwalPage(),
        '/home': (context) => const HomeScreen(),
        '/daftar': (context) => const DaftarScreen(),
      },
    );
  }
}
