import 'package:epicboymoses/core/const/app_colors.dart';
import 'package:epicboymoses/core/global_widegts/custom_button.dart';
import 'package:epicboymoses/core/global_widegts/custom_text_field.dart';
import 'package:epicboymoses/core/style/global_text_style.dart';
import 'package:epicboymoses/feature/user_flow/user_profile/controller/user_profile_controller.dart';
import 'package:epicboymoses/route/route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class ChangePasswordScreen extends GetView<UserProfileController> {
  const ChangePasswordScreen({super.key});

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
                      "Change Password",
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
                hitText: "Enter old password",
                title: "Old Password",
                fontWeight: FontWeight.bold,
                controller: controller.oldPassword,
                isObscure: true,
                
              ),
              SizedBox(height: 20),
              // Last Name
              CustomTextField(
                hitText: "Enter new password",
                title: "New Password",
                fontWeight: FontWeight.bold,
                controller: controller.newPassword,
                isObscure: true,
              ),
              SizedBox(height: 20),
              // Mobile Number
              CustomTextField(
                hitText: "Enter confirm password",
                title: "Confirm Password",
                fontWeight: FontWeight.bold,
                controller: controller.confirmPassword,
                isObscure: true,
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
      bottomSheet: Container(
        decoration: BoxDecoration(color: AppColors.whiteColor),
        padding: EdgeInsets.only(bottom: 30, left: 20, right: 20, top: 20),
        child: CustomButton(
          title: "Save",
          onPressed: () {
            Get.back();
          },
        ),
      ),
    );
  }
}
