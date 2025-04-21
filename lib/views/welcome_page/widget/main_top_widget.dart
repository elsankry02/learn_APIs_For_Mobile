import 'package:flutter/material.dart';
import 'package:learn_auth/constant/image_manger.dart';

class MainTopWidget extends StatelessWidget {
  const MainTopWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topLeft,
      child: Image.asset(height: 150, ImageManger.kMainTop),
    );
  }
}
