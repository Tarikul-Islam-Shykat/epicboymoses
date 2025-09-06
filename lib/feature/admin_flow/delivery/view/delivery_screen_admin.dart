import 'package:epicboymoses/core/const/app_colors.dart';
import 'package:epicboymoses/core/style/global_text_style.dart';
import 'package:epicboymoses/feature/admin_flow/delivery/controller/delivery_controller_admin.dart';
import 'package:epicboymoses/feature/cleaner_flow/bookings/controller/bookings_controller_cleaner.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class DeliveryScreenAdmin extends StatelessWidget {
  const DeliveryScreenAdmin({super.key});

  @override
  Widget build(BuildContext context) {
    DeliveryControllerAdmin controller = Get.put(DeliveryControllerAdmin());
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
              child: Container(
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
            ),

            SizedBox(height: 10.h),

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
