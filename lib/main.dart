import 'package:chat_app/app_theme.dart';
import 'package:chat_app/screens/auth.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FlutterChat',
      theme: theme,
      home: const AuthScreen(),
    );
  }
}