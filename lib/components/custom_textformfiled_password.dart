import 'package:flutter/material.dart';
import 'package:learn_auth/constant/color_manger.dart';

class CustomTextformFieldPassword extends StatefulWidget {
  const CustomTextformFieldPassword({
    super.key,
    this.validator,
    this.keyboardType,
    this.hintText,
    this.prefixIcon,
    this.suffixIcon,
    this.controller,
  });
  final String? Function(String? value)? validator;
  final TextInputType? keyboardType;
  final String? hintText;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final TextEditingController? controller;

  @override
  State<CustomTextformFieldPassword> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<CustomTextformFieldPassword> {
  bool isSelected = false;
  @override
  Widget build(BuildContext context) {
    final text = Theme.of(context).textTheme;
    final kPrimaryLightColor = ColorManger.kPrimaryLightColor;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 80),
      child: TextFormField(
        controller: widget.controller,
        obscureText: isSelected ? false : true,
        keyboardType: widget.keyboardType,
        validator: widget.validator,
        decoration: InputDecoration(
          hintText: widget.hintText,
          hintStyle: text.titleSmall!.copyWith(fontWeight: FontWeight.w600),
          prefixIcon: widget.prefixIcon,
          suffixIcon: GestureDetector(
            onTap: () {
              setState(() {
                isSelected = !isSelected;
              });
            },
            child:
                isSelected
                    ? Icon(Icons.remove_red_eye)
                    : Icon(Icons.visibility_off),
          ),
          filled: true,
          fillColor: kPrimaryLightColor,
          errorBorder: outlineInputBorder(Colors.red),
          focusedErrorBorder: outlineInputBorder(Colors.red),
          enabledBorder: outlineInputBorder(kPrimaryLightColor),
          focusedBorder: outlineInputBorder(kPrimaryLightColor),
        ),
      ),
    );
  }

  OutlineInputBorder outlineInputBorder(Color color) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(22),
      borderSide: BorderSide(color: color),
    );
  }
}
