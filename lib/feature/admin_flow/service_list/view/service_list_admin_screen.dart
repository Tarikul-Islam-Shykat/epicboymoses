import 'package:epicboymoses/core/const/app_colors.dart';
import 'package:epicboymoses/core/const/icons_path.dart';
import 'package:epicboymoses/core/style/global_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class ServiceListAdminScreen extends StatelessWidget {
  const ServiceListAdminScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      body: SafeArea(
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
                    "Service List",
                    style: globalTextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                    ),
                  ),
                  const Spacer(),
                  InkWell(
                    splashColor: Colors.transparent,
                    onTap: () => Navigator.pop(context),
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      child: Icon(Icons.add, color: Colors.black, size: 25.r),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10.h),

            Expanded(
              child: ListView.builder(
                itemCount: 10,
                itemBuilder: (context, index) => Container(
                  margin: EdgeInsets.symmetric(horizontal: 15.w, vertical: 5.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Regular Cleaning ${index + 1}",
                        style: globalTextStyle(
                          fontWeight: FontWeight.w500,
                          color: AppColors.blackColor,
                          fontSize: 13.sp
                        ),
                      ),
                      SizedBox(height: 2.h),
                      Row(
                        children: [
                          Icon(Icons.star, color: Colors.orange, size: 13.r),
                          Icon(Icons.star, color: Colors.orange, size: 13.r),
                          Icon(Icons.star, color: Colors.orange, size: 13.r),
                          Icon(Icons.star, color: Colors.orange, size: 13.r),
                          Icon(Icons.star, color: Colors.grey, size: 13.r),
                          Text(
                            '(4.5/5)',
                            style: globalTextStyle(
                              fontSize: 8.sp,
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                       SizedBox(height: 5.h),
                       Row(
                        children: [],
                       )
                    ],
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
