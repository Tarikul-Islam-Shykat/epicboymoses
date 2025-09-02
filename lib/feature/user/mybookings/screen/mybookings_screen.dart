// screens/my_bookings_screen.dart
import 'package:epicboymoses/core/const/app_colors.dart';
import 'package:epicboymoses/core/style/global_text_style.dart';
import 'package:epicboymoses/feature/user/mybookings/controller/mybookings_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyBookingsScreen extends StatelessWidget {
  MyBookingsScreen({super.key});

  final MyBookingsController controller = Get.put(MyBookingsController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      body: SafeArea(
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
                    "My Bookings",
                    style: globalTextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                    ),
                  ),
                  const Spacer(),
                ],
              ),
            ),

            const SizedBox(height: 20),

            // Expanded Tab Section
            Expanded(
              child: Obx(() {
                final tabIndex = controller.tabIndex.value;
                return Column(
                  children: [
                    // Custom TabBar with Reactive Colors
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 16),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Row(
                        children: List.generate(2, (index) {
                          // Now using `tabIndex` (local var) instead of `controller.tabIndex.value`
                          bool isSelected = tabIndex == index;

                          return Expanded(
                            child: GestureDetector(
                              onTap: () => controller.changeTab(index),
                              child: Container(
                                margin: const EdgeInsets.all(4),
                                padding: const EdgeInsets.symmetric(
                                  vertical: 12,
                                ),
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  color: isSelected
                                      ? AppColors.primaryColor
                                      : AppColors.grayColor.withAlpha(20),
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: Text(
                                  controller.tabTitles[index],
                                  style: globalTextStyle(
                                    color: isSelected
                                        ? AppColors.whiteColor
                                        : Colors.grey.shade700,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                            ),
                          );
                        }),
                      ),
                    ),

                    const SizedBox(height: 10),

                    // Tab Views (Content)
                    Expanded(
                      child: IndexedStack(
                        index: controller.tabIndex.value,
                        children: [
                          SingleChildScrollView(
                            padding: const EdgeInsets.all(16),
                            child: controller.tabContents[0],
                          ),
                          SingleChildScrollView(
                            padding: const EdgeInsets.all(16),
                            child: controller.tabContents[1],
                          ),
                        ],
                      ),
                    ),

                    // Expanded(
                    //   child: TabBarView(
                    //     physics:
                    //         const NeverScrollableScrollPhysics(), // Disable swipe
                    //     controller: null,
                    //     children: [
                    //       SingleChildScrollView(
                    //         padding: EdgeInsets.all(16),
                    //         child: Text(controller.tabContents[0]),
                    //       ),
                    //       SingleChildScrollView(
                    //         padding: EdgeInsets.all(16),
                    //         child: Text(controller.tabContents[1]),
                    //       ),
                    //     ],
                    //   ),
                    // ),
                  ],
                );
              }),
            ),
          ],
        ),
      ),
    );
  }
}
