import 'package:evently_c14_online_sun/core/resources/colors_manager.dart';
import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField(
      {super.key,
      required this.label,
      required this.prefixIcon,
      this.suffixIcon,
      this.isSecure = false,
      this.onPress,
      this.keyboardType = TextInputType.text});

  final String label;
  final IconData prefixIcon;
  final IconData? suffixIcon;
  final bool isSecure;
  final VoidCallback? onPress;
  final TextInputType keyboardType;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorColor: ColorsManager.grey,
      keyboardType: keyboardType,
      obscureText: isSecure,
      decoration: InputDecoration(
          labelText: label,
          prefixIcon: Icon(prefixIcon),
          suffixIcon: suffixIcon != null
              ? IconButton(onPressed: onPress, icon: Icon(suffixIcon))
              : null),
    );
  }
}
