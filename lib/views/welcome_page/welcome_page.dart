import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:learn_auth/components/custom_align_widget.dart';
import 'package:learn_auth/constant/image_manger.dart';
import 'package:learn_auth/views/welcome_page/widget/login_button_page.dart';

@RoutePage()
class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // image topLeft
          CustomAlignWidget(
            alignment: Alignment.topLeft,
            imageName: ImageManger.kMainTop,
          ),
          // image bottomLeft
          CustomAlignWidget(
            alignment: Alignment.bottomRight,
            imageName: ImageManger.kLoginBottom,
          ),
          // Ui
          LoginButtonPage(),
        ],
      ),
    );
  }
}
