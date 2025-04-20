import 'package:evently_c14_online_sun/core/resources/colors_manager.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField(
      {super.key,
      this.label,
      this.prefixIcon,
      this.suffixIcon,
      this.isSecure = false,
      this.onPress,
      this.keyboardType = TextInputType.text,
      this.hint,
      this.maxLines = 1});

  final String? label;
  final IconData? prefixIcon;
  final IconData? suffixIcon;
  final bool isSecure;
  final VoidCallback? onPress;
  final TextInputType keyboardType;
  final String? hint;
  final int maxLines;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      maxLines: maxLines,
      style: GoogleFonts.inter(
          fontSize: 16,
          fontWeight: FontWeight.normal,
          color: ColorsManager.black1C),
      cursorColor: ColorsManager.grey,
      keyboardType: keyboardType,
      obscureText: isSecure,
      decoration: InputDecoration(
          alignLabelWithHint: true,
          hintText: hint,
          labelText: label,
          prefixIcon: prefixIcon != null ? Icon(prefixIcon) : null,
          suffixIcon: suffixIcon != null
              ? IconButton(onPressed: onPress, icon: Icon(suffixIcon))
              : null),
    );
  }
}
