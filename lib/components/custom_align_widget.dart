import 'package:flutter/material.dart';

class CustomAlignWidget extends StatelessWidget {
  const CustomAlignWidget({
    super.key,
    required this.alignment,
    required this.imageName,
  });
  final AlignmentGeometry alignment;
  final String imageName;
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: alignment,
      child: Image.asset(height: 150, imageName),
    );
  }
}
