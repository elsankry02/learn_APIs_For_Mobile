import 'package:flutter/material.dart';
import 'package:learn_auth/router/router.dart';

class LearnApi extends StatelessWidget {
  const LearnApi({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: router.config(),
      debugShowCheckedModeBanner: false,
    );
  }
}
