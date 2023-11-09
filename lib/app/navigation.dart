import 'package:go_router/go_router.dart';
import 'package:hello_creactifs/app/sign_in.dart';
import 'package:hello_creactifs/app/sign_up.dart';

final router = GoRouter(
  initialLocation: '/sign-in',
  routes: [
    GoRoute(
      name: 'sign-in',
      path: '/sign-in',
      builder: (context, state) => const SignInScreen(),
    ),
    GoRoute(
      name: 'sign-up',
      path: '/sign-up',
      builder: (context, state) => const SignUpScreen(),
    ),
  ],
);