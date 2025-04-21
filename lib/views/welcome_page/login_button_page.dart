import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:learn_auth/components/custom_button.dart';
import 'package:learn_auth/constant/color_manger.dart';
import 'package:learn_auth/constant/svg_manger.dart';
import 'package:learn_auth/router/router.dart';

@RoutePage()
class LoginButtonPage extends StatelessWidget {
  const LoginButtonPage({super.key});

  @override
  Widget build(BuildContext context) {
    final kTextStyle = Theme.of(context).textTheme;
    final size = SizedBox(height: 80);

    return Center(
      child: Column(
        children: [
          size,
          Text(
            'Welcome To Learn Auth',
            style: kTextStyle.titleLarge!.copyWith(fontWeight: FontWeight.w600),
          ),
          size,

          SvgPicture.asset(SvgManger.kChat),
          size,
          // LOGIN
          CustomButton(
            onTap: () {
              context.router.push(LoginRoute());
            },
            color: ColorManger.kPrimaryColor,
            text: 'LOGIN',
            textColor: Colors.white,
          ),

          SizedBox(height: 20),
          // SIGNUP
          CustomButton(
            onTap: () {
              context.router.push(SignupRoute());
            },
            color: ColorManger.kPrimaryLightColor,
            text: 'SIGNUP',
            textColor: Colors.black,
          ),
        ],
      ),
    );
  }
}
