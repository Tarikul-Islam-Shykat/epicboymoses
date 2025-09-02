import 'package:epicboymoses/core/const/app_colors.dart';
import 'package:epicboymoses/core/style/global_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    this.hitText,
    this.title,
    required this.controller,
    this.fontSize,
    this.fontWeight,
    this.lineHeight,
    this.isObscure
  });

  final String? hitText;
  final String? title;
  final double? fontSize;
  final FontWeight? fontWeight;
  final int? lineHeight;
  final TextEditingController controller;
  final bool? isObscure;
  

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text(title ?? "", style: globalTextStyle()),
            SizedBox(width: 5),
            Icon(Icons.star, color: AppColors.primaryColor, size: 12),
          ],
        ),
        SizedBox(height: 10),
        Container(
          decoration: BoxDecoration(
            color: Color(0xff1E1E24).withValues(alpha: 0.04),
            borderRadius: BorderRadius.circular(15),
          ),
          child: TextFormField(
            obscureText: isObscure ?? false,
            controller: controller,
            maxLines: lineHeight ?? 1,
            style: globalTextStyle(color: AppColors.blackColor),
            decoration: InputDecoration(
              hintText: hitText ?? "Enter text here",
              hintStyle: globalTextStyle(
                color: Color(0xff1E1E24).withValues(alpha: 0.34),
              ),
              contentPadding: EdgeInsets.symmetric(
                horizontal: 10.w,
                vertical: 10.h,
              ),
              border: InputBorder.none,
            ),
          ),
        ),
      ],
    );
  }
}
