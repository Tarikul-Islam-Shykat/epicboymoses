import 'package:epicboymoses/core/const/app_colors.dart';
import 'package:epicboymoses/core/const/icons_path.dart';
import 'package:epicboymoses/core/const/image_path.dart';
import 'package:epicboymoses/core/style/global_text_style.dart';
import 'package:epicboymoses/route/route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/get_core.dart';

class ProfileListAdminScreen extends StatelessWidget {
  const ProfileListAdminScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(16.r),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 10.h),
              // Top AppBar
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 4,
                      offset: Offset(0, 2),
                    ),
                  ],
                ),
                child: TextField(
                  decoration: InputDecoration(
                    icon: Icon(Icons.search),
                    hintText: 'I am looking for',
                    hintStyle: globalTextStyle(color: Colors.grey),
                    border: InputBorder.none,
                  ),
                ),
              ),
              SizedBox(height: 10.h),

              // User List ( 600 )
              Text(
                'User List ( 600 )',
                style: globalTextStyle(
                  fontSize: 16.sp,
                  color: AppColors.blackColor,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(height: 10.h),

              ...List.generate(
                10,
                (index) => Container(
                  padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
                  margin: EdgeInsets.only(bottom: 5.h),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.r),
                    color: AppColors.whiteColor,
                    shape: BoxShape.rectangle,
                  ),
                  child: Row(
                    children: [
                      Container(
                        padding: EdgeInsets.all(5.r),
                        decoration: BoxDecoration(
                          color: AppColors.grayColor.withAlpha(10),
                          shape: BoxShape.circle,
                        ),
                        child: Image.asset(IconsPath.profile, height: 20.h),
                      ),
                    SizedBox(width: 15.w),

                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Wade Warren',
                            style: globalTextStyle(
                              fontSize: 16.sp,
                              color: AppColors.blackColor,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Row(
                            children: [
                              Icon(Icons.email_outlined, size: 15.r), SizedBox(width: 5.w),
                              Text(
                                'wadewarren@gmail.com',
                                style: globalTextStyle(
                                  fontSize: 10.sp,
                                  color: AppColors.blackColor,
                                ),
                              ),
                            ],
                          ),
                          
                        ],
                      ),Spacer(),
                      InkWell(
                        onTap: (){
                          Get.toNamed(AppRoute.individualProfileListAdminScreen);
                        },
                        child: Image.asset(IconsPath.dots))
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
