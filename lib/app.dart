import 'package:flutter/material.dart';
import 'package:learn_auth/router/router.dart';

class LearnAuthLoginSignup extends StatelessWidget {
  const LearnAuthLoginSignup({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: router.config(),
      debugShowCheckedModeBanner: false,
    );
  }
}
