import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:learn_auth/constant/color_manger.dart';

class CustomRichTextWidget extends StatelessWidget {
  const CustomRichTextWidget({
    super.key,
    this.title,
    this.subTitle,
    this.onTap,
  });
  final String? title;
  final String? subTitle;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    final kTextStyle = Theme.of(context).textTheme;
    final color = ColorManger.kPrimaryColor;
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        children: [
          TextSpan(
            text: title,
            style: kTextStyle.labelMedium!.copyWith(color: color),
          ),
          TextSpan(
            text: subTitle,
            style: kTextStyle.labelLarge!.copyWith(
              color: color,
              fontWeight: FontWeight.w900,
            ),
            recognizer: TapGestureRecognizer()..onTap = onTap,
          ),
        ],
      ),
    );
  }
}
