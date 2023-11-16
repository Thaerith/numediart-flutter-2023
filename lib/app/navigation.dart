import 'package:go_router/go_router.dart';
import 'package:hello_creactifs/app/scan.dart';
import 'package:hello_creactifs/app/sign_in.dart';
import 'package:hello_creactifs/app/sign_up.dart';

final router = GoRouter(
  initialLocation: '/sign-in',
  routes: [
    GoRoute(
      name: 'sign-in',
      path: '/sign-in',
      builder: (context, state) => SignInScreen(
        onSignInPressed: () => GoRouter.of(context).go('/scan'),
      ),
    ),
    GoRoute(
      name: 'sign-up',
      path: '/sign-up',
      builder: (context, state) => const SignUpScreen(),
    ),
    GoRoute(
      name: 'scan',
      path: '/scan',
      builder: (context, state) => const ScanScreen(),
    ),
  ],
);
