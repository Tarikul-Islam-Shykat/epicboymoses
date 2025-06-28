import 'package:epicboymoses/core/const/app_colors.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String title;
  final TextStyle? textStyle;
  final Color? backgroundColor;
  final VoidCallback? onPressed;
  const CustomButton({
    super.key,
    required this.title,
    required this.onPressed,
    this.textStyle,
    this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 56,
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: backgroundColor ?? AppColors.primaryColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0),
          ),
        ),
        onPressed: onPressed,
        child: Text(
          title,
          style:
              textStyle ??
              const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w800,
                color: Colors.white,
              ),
        ),
      ),
    );
  }
}
