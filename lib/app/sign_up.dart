import 'package:flutter/material.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

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
                    const TextField(
                      decoration: InputDecoration(
                        labelText: 'Email',
                      ),
                      keyboardType: TextInputType.emailAddress,
                    ),
                    const TextField(
                      decoration: InputDecoration(
                        labelText: 'Password',
                      ),
                      keyboardType: TextInputType.visiblePassword,
                      obscureText: true,
                      autocorrect: false,
                    ),
                    const TextField(
                      decoration: InputDecoration(
                        labelText: 'Confirm Password',
                      ),
                      keyboardType: TextInputType.visiblePassword,
                      obscureText: true,
                      autocorrect: false,
                    ),
                    Container(height: 32),
                    const SizedBox(
                      width: double.infinity,
                      height: 40,
                      child: ElevatedButton(
                        onPressed: null,
                        child: Text('Sign Up'),
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
