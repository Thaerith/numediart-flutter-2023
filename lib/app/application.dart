import 'package:flutter/material.dart';
import 'package:hello_creactifs/app/sign_up.dart';

class HelloCreactifsApp extends StatelessWidget {
  const HelloCreactifsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hello Creactifs',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const SignUpScreen(),
    );
  }
}
