import 'package:flutter/material.dart';
import 'package:learn_auth/constant/color_manger.dart';

class CustomTextformField extends StatefulWidget {
  const CustomTextformField({
    super.key,
    this.validator,
    this.keyboardType,
    this.hintText,
    this.prefixIcon,
    this.suffixIcon,
  });
  final String? Function(String?)? validator;
  final TextInputType? keyboardType;
  final String? hintText;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  @override
  State<CustomTextformField> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<CustomTextformField> {
  @override
  Widget build(BuildContext context) {
    final text = Theme.of(context).textTheme;
    final kPrimaryLightColor = ColorManger.kPrimaryLightColor;
    // final kPrimaryColor = ColorManger.kPrimaryColor;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 80),
      child: TextFormField(
        keyboardType: widget.keyboardType,
        validator: widget.validator,
        decoration: InputDecoration(
          hintText: widget.hintText,
          hintStyle: text.titleSmall!.copyWith(fontWeight: FontWeight.w600),
          prefixIcon: widget.prefixIcon,
          suffixIcon: widget.suffixIcon,
          filled: true,
          fillColor: kPrimaryLightColor,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(22),
            borderSide: BorderSide(color: kPrimaryLightColor),
          ),
          focusedBorder: OutlineInputBorder(),
        ),
      ),
    );
  }
}
