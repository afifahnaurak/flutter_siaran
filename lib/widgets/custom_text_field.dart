import 'package:flutter/material.dart';
import 'package:flutter_siaran/themes/fonts.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.controller,
    this.isPassword,
    this.suffixIcon,
    this.hintText,
    this.isReadOnly = false,
    this.onTap,
    this.maxLines,
    this.maxLength,
    this.onChanged,
    this.isDisabled = false,
  });

  final TextEditingController controller;
  final bool? isPassword;
  final Widget? suffixIcon;
  final String? hintText;
  final bool isReadOnly;
  final VoidCallback? onTap;
  final int? maxLines;
  final int? maxLength;
  final ValueChanged<String>? onChanged;
  final bool isDisabled;

  @override
  Widget build(BuildContext context) {
    return TextField(
      enabled: !isDisabled,
      obscureText: isPassword ?? false,
      controller: controller,
      readOnly: isReadOnly,
      onTap: onTap,
      maxLines: maxLines,
      maxLength: maxLength,
      onChanged: onChanged,
      
      decoration: InputDecoration(
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
        fillColor: isDisabled ? Color(0xFFF9F9FA) : Colors.white,
        suffixIcon: suffixIcon,
        hintText: hintText,
        hintStyle: poppinsRegular.copyWith(
          fontSize: 14,
          color: Colors.grey,
        ),
      ),
    );
  }
}
