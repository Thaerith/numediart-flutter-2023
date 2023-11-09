import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hello_creactifs/app/sign_up.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  String _email = '';
  String _password = '';
  bool _loading = false;

  void _onSignInPressed() async {
    setState(() => _loading = true);
    try {
      await Future.delayed(const Duration(seconds: 3));
      await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: _email, password: _password);
    } catch (t) {
      print(t);
    }
    setState(() => _loading = false);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sign In'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            const Spacer(),
            Card(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    TextField(
                      decoration: const InputDecoration(
                        labelText: 'Email',
                      ),
                      keyboardType: TextInputType.emailAddress,
                      onChanged: (value) => setState(() => _email = value),
                    ),
                    TextField(
                      decoration: const InputDecoration(
                        labelText: 'Password',
                      ),
                      keyboardType: TextInputType.visiblePassword,
                      obscureText: true,
                      autocorrect: false,
                      onChanged: (value) => setState(() => _password = value),
                    ),
                    const SizedBox(height: 32),
                    SizedBox(
                      width: double.infinity,
                      height: 40,
                      child: ElevatedButton(
                        onPressed: _loading ? null : _onSignInPressed,
                        child: const Text('Sign In'),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const Spacer(flex: 2),
            TextButton(
              onPressed: () {
                GoRouter.of(context).pushNamed('sign-up');
              },
              child: const Text('Pas encore de compte ?'),
            ),
          ],
        ),
      ),
    );
  }
}
