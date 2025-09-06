import 'package:epicboymoses/core/const/app_colors.dart';
import 'package:epicboymoses/core/const/icons_path.dart';
import 'package:epicboymoses/core/const/image_path.dart';
import 'package:epicboymoses/core/style/global_text_style.dart';
import 'package:epicboymoses/feature/admin_flow/delivery/controller/delivery_controller_admin.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class CleanerDetailsAdminScreen extends StatelessWidget {
  const CleanerDetailsAdminScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // DeliveryControllerAdmin controller = Get.find<DeliveryControllerAdmin>();
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 16.r),
          child: Column(
            children: [
              // Top AppBar
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 10.h),
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
                      "Cleaner Details",
                      style: globalTextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 18,
                      ),
                    ),
                    const Spacer(),
                  ],
                ),
              ),

              // image box
              SizedBox(
                height: 160.h,
                child: Stack(
                  alignment: Alignment.topCenter,
                  children: [
                    Container(
                      height: 160.h,
                      width: double.infinity,
                      margin: EdgeInsets.symmetric(
                        horizontal: 16.w,
                        vertical: 16.h,
                      ),

                      decoration: BoxDecoration(
                        color: Colors.teal,
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                          image: AssetImage(ImagePath.cleaner),
                          fit: BoxFit.cover,
                        ),
                      ),
                      alignment: Alignment.centerRight,
                      padding: const EdgeInsets.all(16),
                      child: Text(
                        'Book your cleaning\nservice with the best\nhouse cleaners',
                        style: globalTextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      child: SizedBox(
                        height: 80,
                        width: 80,
                        child: Container(
                          height: 80,
                          width: 80,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.white, width: 2),
                            borderRadius: BorderRadius.circular(20),
                            image: const DecorationImage(
                              image: NetworkImage(
                                "https://randomuser.me/api/portraits/men/32.jpg",
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              //
              /// Name + Info
              Text(
                "Dianne Russell",
                style: globalTextStyle(
                  fontSize: 18.sp,
                  fontWeight: FontWeight.w500,
                  color: AppColors.blackColor,
                ),
              ),
              Text(
                "Warshawa, Poland",
                style: globalTextStyle(
                  fontSize: 14,
                  color: AppColors.blackColor.withAlpha(90),
                ),
              ),
              SizedBox(height: 3.h),
              Text(
                "\$20/Per Hour",
                style: globalTextStyle(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w500,
                  color: AppColors.blackColor.withAlpha(90),
                ),
              ),

              SizedBox(height: 10.h),

              /// grid
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 5.w),
                child: SizedBox(
                  height: 210.h,
                  child: GridView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: 4,
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
                                fontSize: 12.sp,
                                color: AppColors.blackColor.withAlpha(70),
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            SizedBox(height: 8.h),
                            Text(
                              '\$500',
                              style: globalTextStyle(
                                fontSize: 16.sp,
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
              ),

              // --- Date and Time Section ---
              SizedBox(height: 10.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.calendar_month, color: AppColors.primaryColor),
                  SizedBox(width: 8.w),
                  Text(
                    "20-04-2024, 18:00",
                    style: globalTextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w500,
                      color: AppColors.primaryColor,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 5.h),
              Text(
                "Wait For Your Meeting Date & Time",
                style: globalTextStyle(fontSize: 12.sp, color: Colors.grey),
              ),

              SizedBox(height: 20.h),

              // --- Illustration Image ---
              Container(
                height: 160.h,
                width: double.infinity,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      ImagePath.meetingIllustration,
                    ), // Add this image to your assets
                    fit: BoxFit.contain,
                  ),
                ),
              ),

              SizedBox(height: 20.h),

              // --- Meeting Link Input ---
              Container(
                padding: EdgeInsets.symmetric(horizontal: 16.w),
                decoration: BoxDecoration(
                  color: AppColors.whiteColor.withAlpha(70),
                  borderRadius: BorderRadius.circular(12.r),
                ),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Apply Meeting link",
                    border: InputBorder.none,
                    suffixIcon: Icon(Icons.send, color: AppColors.primaryColor),
                  ),
                ),
              ),

              SizedBox(height: 20.h),

              // --- Approve / Decline Buttons ---
              // Row(
              //   children: [
              //     Expanded(
              //       child: ElevatedButton(
              //         onPressed: () {},
              //         style: ElevatedButton.styleFrom(
              //           backgroundColor: AppColors.primaryColor,
              //           padding: EdgeInsets.symmetric(vertical: 14.h),
              //           shape: RoundedRectangleBorder(
              //             borderRadius: BorderRadius.circular(12.r),
              //           ),
              //         ),
              //         child: Text(
              //           "Approve",
              //           style: globalTextStyle(
              //             color: Colors.white,
              //             fontWeight: FontWeight.w500,
              //           ),
              //         ),
              //       ),
              //     ),
              //     SizedBox(width: 10.w),
              //     Expanded(
              //       child: ElevatedButton(
              //         onPressed: () {},
              //         style: ElevatedButton.styleFrom(
              //           backgroundColor: Colors.white,
              //           side: BorderSide(color: AppColors.primaryColor),
              //           padding: EdgeInsets.symmetric(vertical: 14.h),
              //           shape: RoundedRectangleBorder(
              //             borderRadius: BorderRadius.circular(12.r),
              //           ),
              //         ),
              //         child: Text(
              //           "Decline",
              //           style: globalTextStyle(
              //             color: AppColors.primaryColor,
              //             fontWeight: FontWeight.w500,
              //           ),
              //         ),
              //       ),
              //     ),
              //   ],
              // ),
            ],
          ),
        ),
      ),
       bottomSheet: Container(
        decoration: BoxDecoration(color: AppColors.whiteColor),
        padding: EdgeInsets.only(bottom: 30, left: 20, right: 20, top: 10),
        child:  Row(
                children: [
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.primaryColor,
                        padding: EdgeInsets.symmetric(vertical: 10.h),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12.r),
                        ),
                      ),
                      child: Text(
                        "Approve",
                        style: globalTextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 10.w),
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        side: BorderSide(color: AppColors.primaryColor),
                        padding: EdgeInsets.symmetric(vertical: 10.h),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12.r),
                        ),
                      ),
                      child: Text(
                        "Decline",
                        style: globalTextStyle(
                          color: AppColors.primaryColor,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
      ),
    );
  }
}
