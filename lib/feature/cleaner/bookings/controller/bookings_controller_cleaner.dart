import 'package:epicboymoses/core/const/app_colors.dart';
import 'package:epicboymoses/core/style/global_text_style.dart';
import 'package:epicboymoses/route/route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class BookingsControllerCleaner extends GetxController{
  final RxInt tabIndex = 0.obs;

  // Method to update tab
  void changeTab(int index) {
    tabIndex.value = index;
  }

  // Tab titles
  List<String> tabTitles = ['Ongoing', 'Completed'];

  // Tab content (can be widgets later)
  List<Widget> tabContents = [_ongoingPage(), _completedPage()];
}

Widget _ongoingPage() {
  return Column(
    children: List.generate(3, (index) {
      return InkWell(
        onTap: (){
          Get.toNamed(AppRoute.bookingDetailsScreen);
        },
        child: Container(
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
                        'https://randomuser.me/api/portraits/men/${index + 5}.jpg',
                        fit: BoxFit.fill,
                        height: 50,
                      ),
                    ),
                    SizedBox(width: 10),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Standard Cleaning ${index + 1}",
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
                    Spacer(),
                    Container(
                      decoration: BoxDecoration(
                        color: AppColors.primaryColor,
                        borderRadius: BorderRadius.circular(10.h),
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(5),
                        child: Text(
                          'Arrived',
                          style: globalTextStyle(color: AppColors.whiteColor),
                        ),
                      ),
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
                SizedBox(height: 15),
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
        
                    Text('20\$/h', style: globalTextStyle(fontSize: 11)),
                    SizedBox(width: 5),
                    Icon(
                      Icons.calendar_view_day_rounded,
                      size: 17,
                      color: Colors.grey,
                    ),
                    // Text(
                    //   'Full-time, Part-time',
                    //   style: globalTextStyle(fontSize: 11),
                    // ),
                  ],
                ),
              ],
            ),
          ),
        ),
      );
    }),
  );
}

Widget _completedPage() {
  return Column(
    children: List.generate(2, (index) {
      return InkWell(
        onTap: (){
          // Get.toNamed(AppRoute.bookingDetailsScreen);
        },
        child: Container(
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
                        'https://randomuser.me/api/portraits/men/${index + 10}.jpg',
                        fit: BoxFit.fill,
                        height: 50,
                      ),
                    ),
                    SizedBox(width: 10),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Steven ${index + 1}",
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
                    Spacer(),
                    Container(
                      decoration: BoxDecoration(
                        color: AppColors.primaryColor,
                        borderRadius: BorderRadius.circular(10.h),
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(5),
                        child: Text(
                          'Completed',
                          style: globalTextStyle(color: AppColors.whiteColor),
                        ),
                      ),
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
                SizedBox(height: 15),
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
        
                    Text('20\$/h', style: globalTextStyle(fontSize: 11)),
                    SizedBox(width: 5),
                    Icon(
                      Icons.calendar_view_day_rounded,
                      size: 17,
                      color: Colors.grey,
                    ),
                    // Text(
                    //   'Full-time, Part-time',
                    //   style: globalTextStyle(fontSize: 11),
                    // ),
                  ],
                ),
              ],
            ),
          ),
        ),
      );
    }),
  );
}