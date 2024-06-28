import 'package:flutter/material.dart';
import 'package:flutter_siaran/themes/fonts.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.onPressed,
    this.label,
    this.isOutline = false,
    this.sideColor,
    this.textColor,
    this.backgroundColor,
  });

  final Function() onPressed;
  final String? label;
  final bool isOutline;
  final Color? sideColor;
  final Color? textColor;
  final Color? backgroundColor;

  @override
  Widget build(BuildContext context) {
    final buttonStyle = isOutline
        ? OutlinedButton.styleFrom(
            side: BorderSide(color: sideColor ?? const Color(0xFFAD0404)),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            padding: const EdgeInsets.symmetric(vertical: 12),
            backgroundColor: Colors.white,
          )
        : ElevatedButton.styleFrom(
            backgroundColor: backgroundColor ?? const Color(0xFF659480),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            padding: const EdgeInsets.symmetric(vertical: 12),
          );

    final buttonTextStyle = isOutline
        ? poppinsBold.copyWith(
            color: textColor ?? const Color(0xFFAD0404),
          )
        : poppinsBold.copyWith(
            color: Colors.white,
          );

    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: isOutline
          ? OutlinedButton(
              onPressed: onPressed,
              style: buttonStyle,
              child: Text(
                label ?? '',
                style: buttonTextStyle,
              ),
            )
          : ElevatedButton(
              onPressed: onPressed,
              style: buttonStyle,
              child: Text(
                label ?? '',
                style: buttonTextStyle,
              ),
            ),
    );
  }
}
