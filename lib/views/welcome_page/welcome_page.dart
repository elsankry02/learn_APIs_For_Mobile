import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:learn_auth/views/welcome_page/login_button_page.dart';
import 'package:learn_auth/views/welcome_page/widget/main_bottom_widget.dart';
import 'package:learn_auth/views/welcome_page/widget/main_top_widget.dart';

@RoutePage()
class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [MainTopWidget(), LoginButtonPage(), MainBottomWidget()],
      ),
    );
  }
}
