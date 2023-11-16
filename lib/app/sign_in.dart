import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SignInScreen extends StatefulWidget {
  final VoidCallback onSignInPressed;

  const SignInScreen({super.key, required this.onSignInPressed});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  String _email = '';
  String _password = '';
  bool _loading = false;

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
                        onPressed: _loading ? null : widget.onSignInPressed,
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
