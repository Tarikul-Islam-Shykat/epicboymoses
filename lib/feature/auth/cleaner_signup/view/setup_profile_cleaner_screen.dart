import 'package:epicboymoses/core/const/app_colors.dart';
import 'package:epicboymoses/core/global_widegts/custom_button.dart';
import 'package:epicboymoses/core/global_widegts/custom_text_field.dart';
import 'package:epicboymoses/core/style/global_text_style.dart';
import 'package:epicboymoses/route/route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class SetupProfileCleanerScreen extends StatelessWidget {
  const SetupProfileCleanerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              // Top AppBar
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16.0,
                  vertical: 10,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    InkWell(
                      splashColor: Colors.transparent,
                      onTap: () => Navigator.pop(context),
                      child: const CircleAvatar(
                        backgroundColor: Colors.white,
                        child: Icon(
                          Icons.arrow_back_ios_new_rounded,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    // SizedBox(width: 50),
                    Spacer(),
                    Text(
                      "Set Up Your Profile",
                      style: globalTextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 18,
                      ),
                    ),
                    Spacer(),
                  ],
                ),
              ),

              SizedBox(height: 20),

              // full name
              CustomTextField(
                hitText: "Monthly",
                title: "Payment Type",
                fontWeight: FontWeight.bold,
                controller: TextEditingController(),
              ),
              SizedBox(height: 20),
              // Last Name
              CustomTextField(
                hitText: "Enter Experience",
                title: "Experience",
                fontWeight: FontWeight.bold,
                controller: TextEditingController(),
              ),
              SizedBox(height: 20),
              // Mobile Number
              CustomTextField(
                hitText: "Enter About Yourself",
                title: "About Yourself*",
                fontWeight: FontWeight.bold,
                controller: TextEditingController(),
                lineHeight: 6,
              ),
              // Spacer(), 
              SizedBox(height: 190.h),

              CustomButton(
                title: "Login",
                onPressed: () {
                  Get.toNamed(AppRoute.bottomNavBarCleanerScreen);
                },
              ),

              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
