import 'package:epicboymoses/core/const/app_colors.dart';
import 'package:epicboymoses/core/const/icons_path.dart';
import 'package:epicboymoses/core/style/global_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class HomeScreenCleanerScreen extends StatelessWidget {
  const HomeScreenCleanerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(16.r),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // user profile header
              _userProfileHeader(),

              SizedBox(height: 10.h),

              // Service Overview
              Text(
                'Service Overview',
                style: globalTextStyle(
                  fontSize: 16.sp,
                  color: AppColors.blackColor,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(height: 10.h),

              //
              SizedBox(
                height: 230.h,
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

              // Service Overview
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Nearby Booking',
                    style: globalTextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    'See All',
                    style: globalTextStyle(color: AppColors.primaryColor),
                  ),
                ],
              ),
              const SizedBox(height: 10),

              ...List.generate(5, (index)=>Container(
          width: double.infinity,
        
          margin: EdgeInsets.symmetric(vertical: 5),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(30),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    ClipOval(
                      child: Image.network(
                        'https://randomuser.me/api/portraits/men/${index + 15}.jpg',
                        fit: BoxFit.fill,
                        height: 50,
                      ),
                    ),
                    SizedBox(width: 10),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Person ${index + 1}",
                          style: globalTextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color(0xff4B4B50),
                          ),
                        ),
                        Row(
                          children: [
                            Icon(Icons.star, color: Colors.orange, size: 17),
                            Icon(Icons.star, color: Colors.orange, size: 17),
                            Icon(Icons.star, color: Colors.orange, size: 17),
                            Icon(Icons.star, color: Colors.orange, size: 17),
                            Icon(Icons.star, color: Colors.grey, size: 17),
                            Text(
                              '(4.5/5)',
                              style: globalTextStyle(
                                fontSize: 12,
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                   
                  ],
                ),
                SizedBox(height: 15),
                Row(
                  children: [
                    Icon(
                      Icons.cleaning_services_outlined,
                      size: 17,
                      color: Colors.grey,
                    ),
                    Text(
                      'Classic Regular Cleaning',
                      style: globalTextStyle(fontSize: 11),
                    ),
                    SizedBox(width: 5),
                    Icon(Icons.calendar_month, size: 17, color: Colors.grey),
        
                    Text('12-04-2025', style: globalTextStyle(fontSize: 11)),
                    SizedBox(width: 5),
                    Icon(Icons.lock_clock, size: 17, color: Colors.grey),
                    Text('12:00 PM', style: globalTextStyle(fontSize: 11)),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    Icon(
                      Icons.location_on_outlined,
                      size: 17,
                      color: Colors.grey,
                    ),
                    Text(
                      'Warshawa, Poland',
                      style: globalTextStyle(fontSize: 11),
                    ),
                    SizedBox(width: 5),
                    Icon(
                      Icons.attach_money_rounded,
                      size: 17,
                      color: Colors.grey,
                    ),
        
                    Text('Total : 40\$', style: globalTextStyle(fontSize: 11)),
                    
                  ],
                ),
              ],
            ),
          ),
        ),)
              
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
