import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  String _email = '';
  String _password = '';
  bool _loading = false;

  _onSignUpPressed() async {
    setState(() {
      _loading = true;
    });

    try {
      FirebaseAuth.instance
          .createUserWithEmailAndPassword(email: _email, password: _password);
    } catch (t) {
      print(t);
    }

    setState(() {
      _loading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sign Up'),
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
                    const TextField(
                      decoration: InputDecoration(
                        labelText: 'Nom',
                      ),
                    ),
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
                    Container(height: 32),
                    SizedBox(
                      width: double.infinity,
                      height: 40,
                      child: ElevatedButton(
                        onPressed: _loading ? null : _onSignUpPressed,
                        child: const Text('Sign Up'),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const Spacer(flex: 2),
            const Text(
              'By signing up, you agree to our Terms of Service and Privacy Policy.',
            ),
          ],
        ),
      ),
    );
  }
}
