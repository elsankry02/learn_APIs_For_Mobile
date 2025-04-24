import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:learn_auth/components/custom_align_widget.dart';
import 'package:learn_auth/components/custom_button.dart';
import 'package:learn_auth/components/custom_richtext_widget.dart';
import 'package:learn_auth/components/custom_textform_field.dart';
import 'package:learn_auth/components/custom_textformfiled_password.dart';
import 'package:learn_auth/constant/color_manger.dart';
import 'package:learn_auth/constant/image_manger.dart';
import 'package:learn_auth/constant/svg_manger.dart';
import 'package:learn_auth/router/router.dart';

@RoutePage()
class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  final formKey = GlobalKey<FormState>();
  final passwordController = TextEditingController();
  final phoneController = TextEditingController();
  @override
  void dispose() {
    passwordController.dispose();
    phoneController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final kPrimaryColor = ColorManger.kPrimaryColor;
    final kPrimaryLightColor = ColorManger.kPrimaryLightColor;
    final kTextStyle = Theme.of(context).textTheme;
    return Scaffold(
      body: Stack(
        children: [
          // topLeft
          CustomAlignWidget(
            alignment: Alignment.topLeft,
            imageName: ImageManger.kSignupTop,
          ),
          // bottomRight
          CustomAlignWidget(
            alignment: Alignment.bottomLeft,
            imageName: ImageManger.kMainBottom,
          ),
          Form(
            key: formKey,
            child: ListView(
              padding: EdgeInsets.zero,
              children: [
                SizedBox(height: 80),
                Text(
                  textAlign: TextAlign.center,
                  'SIGN UP',
                  style: kTextStyle.titleLarge!.copyWith(
                    fontWeight: FontWeight.w900,
                    color: kPrimaryColor,
                  ),
                ),
                SizedBox(height: 40),
                SvgPicture.asset(SvgManger.kSignUp),
                SizedBox(height: 40),
                // Phone
                CustomTextformFieldPhone(
                  keyboardType: TextInputType.phone,
                  hintText: 'Phone',
                  prefixIcon: Icon(Icons.person, color: kPrimaryColor),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'not valid';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 20),
                // Password
                CustomTextformFieldPassword(
                  controller: passwordController,
                  hintText: 'Password',
                  prefixIcon: Icon(Icons.lock, color: kPrimaryColor),
                  suffixIcon: Icon(
                    Icons.remove_red_eye_sharp,
                    color: kPrimaryColor,
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'not valid';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 20),
                // SIGNUP Botton
                CustomButton(
                  onTap: () {
                    formKey.currentState!.validate();
                  },
                  text: 'SIGNUP',
                  color: kPrimaryColor,
                  textColor: kPrimaryLightColor,
                ),
                SizedBox(height: 30),
                CustomRichTextWidget(
                  onTap: () {
                    context.router.replace(LoginRoute());
                  },
                  title: "Already have an Account ? ",
                  subTitle: "Login",
                ),
                SizedBox(height: 30),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
