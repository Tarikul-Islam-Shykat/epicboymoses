import 'package:epicboymoses/core/const/app_colors.dart';
import 'package:epicboymoses/core/const/image_path.dart';
import 'package:epicboymoses/core/global_widegts/custom_button.dart';
import 'package:epicboymoses/core/style/global_text_style.dart';
import 'package:epicboymoses/route/route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class AccountApprovedScreen extends StatelessWidget {
  const AccountApprovedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
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
                      "Account Approved",
                      style: globalTextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 18,
                      ),
                    ),
                    Spacer(),
                  ],
                ),
              ),
              Spacer(),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16.0,
                  vertical: 10,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(ImagePath.success, height: 100.h),
                    SizedBox(height: 5),
                    Text(
                      "Congratulation",
                      style: globalTextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 20,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "You're now a Verified Cleaner on our platform! We're thrilled to welcome you to our sparkling community! 🧹✨ Get ready to shine and make spaces spotless.",
                      style: globalTextStyle(
                        // fontWeight: FontWeight.w600,
                        fontSize: 13,
                        color: AppColors.grayColor.withAlpha(90),
                      ),
                    ),
                  ],
                ),
              ),

              Spacer(),

              CustomButton(
                title: "Login",
                onPressed: () {
                  Get.toNamed(AppRoute.setupProfileCleanerScreen);
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
