import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:hello_creactifs/app/sign_in.dart';
import 'package:hello_creactifs/app/sign_up.dart';

class HelloCreactifsApp extends StatefulWidget {
  const HelloCreactifsApp({super.key});

  @override
  State<HelloCreactifsApp> createState() => _HelloCreactifsAppState();
}

class _HelloCreactifsAppState extends State<HelloCreactifsApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hello Creactifs',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/sign-in',
      routes: {
        '/sign-in': (context) => const SignInScreen(),
        '/sign-up': (context) => const SignUpScreen(),
      },
    );
  }
}
