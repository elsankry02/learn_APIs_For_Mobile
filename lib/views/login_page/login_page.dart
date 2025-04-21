import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:learn_auth/components/custom_align_widget.dart';
import 'package:learn_auth/components/custom_button.dart';
import 'package:learn_auth/components/custom_textform_field.dart';
import 'package:learn_auth/constant/color_manger.dart';
import 'package:learn_auth/constant/image_manger.dart';
import 'package:learn_auth/constant/svg_manger.dart';

@RoutePage()
class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    final kPrimaryColor = ColorManger.kPrimaryColor;
    final kPrimaryLightColor = ColorManger.kPrimaryLightColor;
    final kTextStyle = Theme.of(context).textTheme;
    final size20 = SizedBox(height: 30);
    final size40 = SizedBox(height: 40);
    return Scaffold(
      body: Stack(
        children: [
          CustomAlignWidget(
            alignment: Alignment.topLeft,
            imageName: ImageManger.kMainTop,
          ),
          Center(
            child: Column(
              children: [
                SizedBox(height: 80),
                Text(
                  'LOGIN',
                  style: kTextStyle.titleLarge!.copyWith(
                    fontWeight: FontWeight.w600,
                    color: kPrimaryColor,
                  ),
                ),
                size40,
                SvgPicture.asset(SvgManger.kLogin),
                size40,
                // Phone
                CustomTextformField(
                  hintText: 'Phone',
                  prefixIcon: Icon(Icons.person, color: kPrimaryColor),
                ),
                size20,
                // Password
                CustomTextformField(
                  hintText: 'Password',
                  prefixIcon: Icon(Icons.lock, color: kPrimaryColor),
                  suffixIcon: Icon(
                    Icons.remove_red_eye_sharp,
                    color: kPrimaryColor,
                  ),
                ),
                size20,
                CustomButton(
                  onTap: () {},
                  text: 'LOGIN',
                  color: kPrimaryColor,
                  textColor: kPrimaryLightColor,
                ),
              ],
            ),
          ),
          CustomAlignWidget(
            alignment: Alignment.bottomRight,
            imageName: ImageManger.kLoginBottom,
          ),
        ],
      ),
    );
  }
}
