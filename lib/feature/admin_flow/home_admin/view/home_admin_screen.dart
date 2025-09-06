import 'package:epicboymoses/core/const/app_colors.dart';
import 'package:epicboymoses/core/const/icons_path.dart';
import 'package:epicboymoses/core/style/global_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class HomeAdminScreen extends StatelessWidget {
  const HomeAdminScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(16.r),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 10.h),
              // user profile header
              _userProfileHeader(),

              SizedBox(height: 10.h),

              // Service Overview
              Text(
                'Apartment Overview',
                style: globalTextStyle(
                  fontSize: 16.sp,
                  color: AppColors.blackColor,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(height: 10.h),

              //
              SizedBox(
                height: 330.h,
                child: GridView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: 6,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 10.w,
                    mainAxisSpacing: 8.h,
                    childAspectRatio: 1.25,
                  ),
                  itemBuilder: (context, index) {
                    return Container(
                      decoration: BoxDecoration(
                        color: AppColors.whiteColor,
                        borderRadius: BorderRadius.circular(12.r),
                        // boxShadow: [
                        //   BoxShadow(
                        //     color: AppColors.blackColor.withAlpha(20),
                        //     blurRadius: 4,
                        //     offset: Offset(2, 2),
                        //   ),
                        // ],
                      ),
                      padding: EdgeInsets.all(12.r),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            padding: EdgeInsets.all(8.r),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12.r),
                              color: AppColors.greenColor.withAlpha(20),
                              shape: BoxShape.rectangle,
                            ),
                            child: SvgPicture.asset(
                              IconsPath.dollarNote,
                              height: 12.h,
                              width: 12.w,
                            ),
                          ),
                          SizedBox(height: 8.h),
                          Text(
                            'Earned This Month',
                            style: globalTextStyle(
                              fontSize: 14.sp,
                              color: AppColors.blackColor.withAlpha(70),
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          SizedBox(height: 8.h),
                          Text(
                            '\$500',
                            style: globalTextStyle(
                              fontSize: 20.sp,
                              color: AppColors.greenColor,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget _userProfileHeader() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Row(
        children: [
          const CircleAvatar(
            radius: 24,
            backgroundImage: NetworkImage(
              'https://randomuser.me/api/portraits/men/10.jpg',
            ),
          ),
          const SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Welcome back,',
                style: globalTextStyle(fontSize: 16, color: Colors.black54),
              ),
              Text(
                'Darrell Steward',
                style: globalTextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF00C6AE),
                ),
              ),
            ],
          ),
        ],
      ),
      CircleAvatar(
        radius: 22,
        backgroundColor: Colors.white,
        child: SvgPicture.asset(
          IconsPath.notification,
          color: AppColors.blackColor,
        ),
      ),
    ],
  );
}
