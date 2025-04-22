import 'package:auto_route/auto_route.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:learn_auth/constant/color_manger.dart';
import 'package:learn_auth/router/router.dart';

class RichTextWidget extends StatelessWidget {
  const RichTextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final kTextStyle = Theme.of(context).textTheme;
    final color = ColorManger.kPrimaryColor;
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        children: [
          TextSpan(
            text: "Don't have an Account ? ",
            style: kTextStyle.labelMedium!.copyWith(color: color),
          ),
          TextSpan(
            text: "Sign Up",
            style: kTextStyle.labelLarge!.copyWith(
              color: color,
              fontWeight: FontWeight.w900,
            ),
            recognizer:
                TapGestureRecognizer()
                  ..onTap = () {
                    context.router.push(SignupRoute());
                  },
          ),
        ],
      ),
    );
  }
}
