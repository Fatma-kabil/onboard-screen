import 'package:flutter/material.dart';
import 'package:taskone/onboard/onboard_screen.dart';


void main() {
  runApp(const MusicApp());
}

class MusicApp extends StatelessWidget {
  const MusicApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(body:OnboardScreen()));
  }
}

