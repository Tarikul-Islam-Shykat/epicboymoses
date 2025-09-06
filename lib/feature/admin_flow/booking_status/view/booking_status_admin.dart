import 'package:epicboymoses/core/const/app_colors.dart';
import 'package:epicboymoses/core/const/icons_path.dart';
import 'package:epicboymoses/core/const/image_path.dart';
import 'package:epicboymoses/core/global_widegts/custom_button.dart';
import 'package:epicboymoses/core/style/global_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class BookingStatusAdminScreen extends StatelessWidget {
  const BookingStatusAdminScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(16),
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
                          size: 20,
                        ),
                      ),
                    ),
                    const Spacer(),
                    Text(
                      "Booking Status",
                      style: globalTextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 18,
                      ),
                    ),
                    const Spacer(),
                    InkWell(
                      splashColor: Colors.transparent,
                      onTap: () => Navigator.pop(context),
                      child:  CircleAvatar(
                        backgroundColor: Colors.white,
                        child: SvgPicture.asset(IconsPath.message, color: AppColors.blackColor,)
                        //  Icon(
                        //   Icons.message_rounded,
                        //   color: Colors.black,
                        //   size: 20,
                        // ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10.h),

           // map
              SizedBox(
                height: 420.h,
                child: Stack(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(20.w),
                      child: Image.asset(
                        ImagePath.map,
                        width: double.infinity,
                        fit: BoxFit.fitWidth,
                      ),
                    ),
                    Positioned(
                      top: 190.h,
                      child: SizedBox(
                        height: 200.h,
                        width: 320.w,
                        child: Card(
                          color: AppColors.whiteColor,
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadiusGeometry.circular(15.w),
                          ),
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: 10.w,
                              vertical: 10.h,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                // heading
                                Row(
                                  children: [
                                    // image
                                    SizedBox(
                                      height: 40.h,
                                      width: 40.h,
                                      child: ClipRRect(
                                        borderRadius:
                                            BorderRadiusGeometry.circular(10.w),
                                        child: Image.network(
                                          'https://randomuser.me/api/portraits/men/1.jpg',
                                        ),
                                      ),
                                    ),
                                    SizedBox(width: 10.w),
                                    // name
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Kristin Watson",
                                          style: globalTextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontSize: 13.sp,
                                          ),
                                        ),
                                        Text(
                                          "20 May 2025 at 12:00 pm",
                                          style: globalTextStyle(
                                            fontSize: 10.sp,
                                            color: AppColors.grayColor
                                                .withAlpha(90),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Spacer(),
                                    Text(
                                      "50\$",
                                      style: globalTextStyle(
                                        fontSize: 32.sp,
                                        color: AppColors.primaryColor,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 5.h),

                                // divider
                                Divider(
                                  color: AppColors.grayColor.withAlpha(30),
                                  indent: 20,
                                  endIndent: 20,
                                ),
                                SizedBox(height: 5.h),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.cleaning_services_outlined,
                                      size: 17.w,
                                      color: Colors.grey,
                                    ),
                                    SizedBox(width: 5.w),
                                    Text(
                                      'Classic Regular Cleaning',
                                      style: globalTextStyle(
                                        fontSize: 11.sp,
                                        color: AppColors.grayColor.withAlpha(
                                          90,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 5.h),
                                Row(
                                  children: [
                                    SvgPicture.asset(
                                      IconsPath.dollar,
                                      height: 17.w,
                                    ),
                                    SizedBox(width: 5.w),
                                    Text(
                                      'Total : 40\$',
                                      style: globalTextStyle(
                                        fontSize: 11.sp,
                                        color: AppColors.grayColor.withAlpha(
                                          90,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 5.h),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.cleaning_services_outlined,
                                      size: 17.w,
                                      color: Colors.grey,
                                    ),
                                    SizedBox(width: 5.w),
                                    Text(
                                      'Classic Regular Cleaning',
                                      style: globalTextStyle(
                                        fontSize: 11.sp,
                                        color: AppColors.grayColor.withAlpha(
                                          90,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 10.h),
                                // timeline
                                Padding(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 15.w,
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      CircleAvatar(
                                        maxRadius: 25,
                                        child: SvgPicture.asset(
                                          IconsPath.starting,
                                          height: 15.h,
                                        ),

                                        backgroundColor: AppColors.primaryColor,
                                      ),
                                      Expanded(
                                        child: Divider(
                                          color: AppColors.primaryColor,
                                          thickness: 5,
                                        ),
                                      ),
                                      CircleAvatar(
                                        child: SvgPicture.asset(
                                          IconsPath.ride,
                                          height: 15.h,
                                        ),
                                        backgroundColor: AppColors.grayColor
                                            .withAlpha(20),
                                      ),
                                      Expanded(
                                        child: Divider(
                                          color: AppColors.grayColor.withAlpha(
                                            20,
                                          ),
                                          thickness: 5,
                                        ),
                                      ),
                                      CircleAvatar(
                                        child: SvgPicture.asset(
                                          IconsPath.people,
                                          height: 15.h,
                                        ),
                                        backgroundColor: AppColors.grayColor
                                            .withAlpha(20),
                                      ),
                                      Expanded(
                                        child: Divider(
                                          color: AppColors.grayColor.withAlpha(
                                            20,
                                          ),
                                          thickness: 5,
                                        ),
                                      ),
                                      CircleAvatar(
                                        child: SvgPicture.asset(
                                          IconsPath.money,
                                          height: 15.h,
                                        ),
                                        backgroundColor: AppColors.grayColor
                                            .withAlpha(20),
                                      ),
                                    ],
                                  ),
                                ),

                                SizedBox(height: 5.h),
                                // booking txt
                                Text(
                                  'Your Booking Confirmed',
                                  style: globalTextStyle(
                                    fontSize: 11.sp,
                                    color: AppColors.grayColor.withAlpha(90),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              // booking note
              Row(
                children: [
                  Text(
                    'Booking Note',
                    style: globalTextStyle(
                      fontSize: 18.sp,
                      color: AppColors.blackColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    '*',
                    style: globalTextStyle(
                      fontSize: 18.sp,
                      color: AppColors.primaryColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor.',
                style: globalTextStyle(
                  textAlign: TextAlign.justify,
                  fontSize: 14.sp,
                  color: AppColors.grayColor.withAlpha(90),
                ),
              ),

              SizedBox(height: 50.h,)
            ],
          ),
        ),
      ),
      // bottomSheet: Container(
      //   decoration: BoxDecoration(color: AppColors.whiteColor),
      //   padding: EdgeInsets.only(bottom: 30, left: 20, right: 20, top: 20),
      //   child: CustomButton(
      //     title: "On the Way",
      //     onPressed: () {
      //       Get.back();
      //     },
      //   ),
      // ),
    );
  }
}
