import 'package:epicboymoses/core/const/app_colors.dart';
import 'package:epicboymoses/core/global_widegts/custom_button.dart';
import 'package:epicboymoses/core/global_widegts/custom_text_field.dart';
import 'package:epicboymoses/core/style/global_text_style.dart';
import 'package:epicboymoses/feature/cleaner_flow/profile_cleaner/controller/cleaner_profile_controller.dart';
import 'package:epicboymoses/feature/user_flow/user_profile/controller/user_profile_controller.dart';
import 'package:epicboymoses/route/route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class CleanerEditProfileScreen extends GetView<CleanerProfileController> {
  const CleanerEditProfileScreen({super.key});

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
                      "Edit Profile",
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

              // user picture
              SizedBox(
                height: 100.h,
                child: Stack(
                  children: [
                    ClipOval(
                      child: Image.network(
                        'https://randomuser.me/api/portraits/men/1.jpg',
                        fit: BoxFit.fill,
                        height: 80.h,
                      ),
                    ),
                    Positioned(
                      top: 65.h,
                      left: 35.w,
                      child: CircleAvatar(
                        backgroundColor: Color(0xff4FD1C5),
                        child: IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.edit),
                          iconSize: 25,
                          color: AppColors.whiteColor,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),

              // full name
              CustomTextField(
                hitText: "Darrell",
                title: "Full Name",
                fontWeight: FontWeight.bold,
                controller: controller.fullName,
              ),
              SizedBox(height: 20),
              // Last Name
              CustomTextField(
                hitText: "Steward",
                title: "Last Name",
                fontWeight: FontWeight.bold,
                controller: controller.lastName,
              ),
              SizedBox(height: 20),
              // Mobile Number
              CustomTextField(
                hitText: "+xxxxxxxxxxxxxxx",
                title: "Mobile Number",
                fontWeight: FontWeight.bold,
                controller: controller.mobileNumber,
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
