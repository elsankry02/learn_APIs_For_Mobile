import 'package:flutter/material.dart';
import 'package:learn_auth/constant/image_manger.dart';

class MainBottomWidget extends StatelessWidget {
  const MainBottomWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomLeft,
      child: Image.asset(ImageManger.kMainBottom),
    );
  }
}
