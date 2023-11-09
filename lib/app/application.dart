import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:hello_creactifs/app/sign_in.dart';

class HelloCreactifsApp extends StatefulWidget {
  const HelloCreactifsApp({super.key});

  @override
  State<HelloCreactifsApp> createState() => _HelloCreactifsAppState();
}

class _HelloCreactifsAppState extends State<HelloCreactifsApp> {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          print(snapshot);
          return MaterialApp(
            title: 'Hello Creactifs',
            theme: ThemeData(
              primarySwatch: Colors.blue,
            ),
            home: const SignInScreen(),
          );
        });
  }

  @override
  void initState() {
    super.initState();
    FirebaseAuth.instance.authStateChanges().listen((user) {
      print(user);
    });
  }
}
