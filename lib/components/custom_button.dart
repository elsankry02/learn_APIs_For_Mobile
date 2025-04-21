import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.text,
    required this.color,
    required this.textColor,
    this.onTap,
  });
  final void Function()? onTap;
  final String text;
  final Color color;
  final Color textColor;
  @override
  Widget build(BuildContext context) {
    final kTextStyle = Theme.of(context).textTheme;
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 15),
        margin: const EdgeInsets.symmetric(horizontal: 80),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Center(
          child: Text(
            text,
            style: kTextStyle.titleSmall!.copyWith(
              color: textColor,
              fontWeight: FontWeight.w900,
            ),
          ),
        ),
      ),
    );
  }
}
