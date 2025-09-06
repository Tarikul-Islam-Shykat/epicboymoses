import 'package:epicboymoses/core/const/app_colors.dart';
import 'package:epicboymoses/core/global_widegts/custom_button.dart';
import 'package:epicboymoses/core/global_widegts/custom_text_field.dart';
import 'package:epicboymoses/core/style/global_text_style.dart';
import 'package:epicboymoses/feature/user_flow/add_booking_details/controller/add_booking_details_controller.dart';
import 'package:epicboymoses/route/route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/instance_manager.dart';
import 'package:get/utils.dart';

class AddBookingDetailsScreen1 extends StatelessWidget {
  const AddBookingDetailsScreen1({super.key});

  @override
  Widget build(BuildContext context) {
    AddBookingDetailsController controller = Get.put(
      AddBookingDetailsController(),
    );
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
                      onTap: () => Navigator.pop(context),
                      child: const CircleAvatar(
                        backgroundColor: Colors.white,
                        child: Icon(
                          Icons.arrow_back_ios_new_rounded,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    SizedBox(width: 50),
                    Text(
                      "Add Booking Details",
                      style: globalTextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(height: 20),

              // body content
              // Cleaning Address
              Obx(() {
                return Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 15,
                    vertical: 10,
                  ),
                  decoration: BoxDecoration(
                    color: AppColors.whiteColor,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    children: [
                      // heading
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Cleaning Address',
                            style: globalTextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          TextButton(
                            onPressed: () {},
                            child: Text(
                              "Edit Address",
                              style: globalTextStyle(
                                fontSize: 14,
                                color: AppColors.primaryColor,
                              ),
                            ),
                          ),
                        ],
                      ),

                      // previous location
                      GestureDetector(
                        onTap: () {
                          controller.changeAddress('yes');
                        },
                        child: Container(
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: controller.selectedAddress.value == 'yes'
                                ? AppColors.primaryColor.withAlpha(20)
                                : const Color(0xff1E1E24).withAlpha(10),
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                              color: controller.selectedAddress.value == 'yes'
                                  ? AppColors.primaryColor
                                  : Colors.transparent,
                            ),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Icon(
                                    Icons.check_circle_rounded,
                                    color: AppColors.primaryColor,
                                    size: 20,
                                  ),
                                  const SizedBox(width: 5),
                                  Text(
                                    'Previous location',
                                    style: globalTextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 5),
                              Text(
                                '110 W 3rd St, New York, NY 10012, USA',
                                style: globalTextStyle(
                                  fontSize: 12,
                                  color: AppColors.grayColor,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),

                      const SizedBox(height: 10),

                      // other location
                      GestureDetector(
                        onTap: () {
                          controller.changeAddress('no');
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            color: controller.selectedAddress.value == 'no'
                                ? AppColors.primaryColor.withAlpha(20)
                                : const Color(0xff1E1E24).withAlpha(10),
                            borderRadius: BorderRadius.circular(15),
                            border: Border.all(
                              color: controller.selectedAddress.value == 'no'
                                  ? AppColors.primaryColor
                                  : Colors.transparent,
                            ),
                          ),
                          child: TextFormField(
                            controller: controller.otherAddressController,
                            readOnly: false,
                            onTap: () {
                              controller.changeAddress(
                                'no',
                              ); // Optional: auto-select on tap
                            },
                            cursorColor: AppColors.primaryColor,
                            style: globalTextStyle(color: AppColors.blackColor),
                            decoration: InputDecoration(
                              suffixIcon: Icon(
                                Icons.map_rounded,
                                color: const Color(0xff1E1E24).withAlpha(100),
                              ),
                              hintText: 'Enter Other location',
                              hintStyle: globalTextStyle(
                                color: const Color(0xff1E1E24).withAlpha(100),
                              ),
                              contentPadding: EdgeInsets.symmetric(
                                horizontal: 10.w,
                                vertical: 10.h,
                              ),
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              }),
              SizedBox(height: 20),

              // Cleaning session
              Obx(() {
                return Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 15,
                    vertical: 10,
                  ),
                  decoration: BoxDecoration(
                    color: AppColors.whiteColor,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // heading
                      Text(
                        'Choose your cleaning session',
                        style: globalTextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(height: 10),

                      // standard
                      GestureDetector(
                        onTap: () {
                          controller.changeCleaningSession('standard');
                        },
                        child: Container(
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color:
                                controller.selectCleaningSession.value ==
                                    'standard'
                                ? AppColors.primaryColor.withAlpha(20)
                                : const Color(0xff1E1E24).withAlpha(10),
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                              color:
                                  controller.selectCleaningSession.value ==
                                      'standard'
                                  ? AppColors.primaryColor
                                  : Colors.transparent,
                            ),
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              controller.selectCleaningSession.value ==
                                      'standard'
                                  ? Icon(
                                      Icons.check_circle_rounded,
                                      color: AppColors.primaryColor,
                                      size: 20,
                                    )
                                  : SizedBox(),
                              SizedBox(width: 10),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Standard Cleaning',
                                    style: globalTextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  SizedBox(height: 5),
                                  Text(
                                    '£26.90/h',
                                    style: globalTextStyle(
                                      fontSize: 12,
                                      color: AppColors.grayColor,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(height: 10),
                      //one-off
                      GestureDetector(
                        onTap: () {
                          controller.changeCleaningSession('one-off');
                        },
                        child: Container(
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color:
                                controller.selectCleaningSession.value ==
                                    'one-off'
                                ? AppColors.primaryColor.withAlpha(20)
                                : const Color(0xff1E1E24).withAlpha(10),
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                              color:
                                  controller.selectCleaningSession.value ==
                                      'one-off'
                                  ? AppColors.primaryColor
                                  : Colors.transparent,
                            ),
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              controller.selectCleaningSession.value ==
                                      'one-off'
                                  ? Icon(
                                      Icons.check_circle_rounded,
                                      color: AppColors.primaryColor,
                                      size: 20,
                                    )
                                  : SizedBox(),
                              SizedBox(width: 10),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'One-Off Cleaning',
                                    style: globalTextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  SizedBox(height: 5),
                                  Text(
                                    '£26.90/h',
                                    style: globalTextStyle(
                                      fontSize: 12,
                                      color: AppColors.grayColor,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(height: 10),
                      // Deep Cleaning
                      GestureDetector(
                        onTap: () {
                          controller.changeCleaningSession('deep');
                        },
                        child: Container(
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color:
                                controller.selectCleaningSession.value == 'deep'
                                ? AppColors.primaryColor.withAlpha(20)
                                : const Color(0xff1E1E24).withAlpha(10),
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                              color:
                                  controller.selectCleaningSession.value ==
                                      'deep'
                                  ? AppColors.primaryColor
                                  : Colors.transparent,
                            ),
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              controller.selectCleaningSession.value == 'deep'
                                  ? Icon(
                                      Icons.check_circle_rounded,
                                      color: AppColors.primaryColor,
                                      size: 20,
                                    )
                                  : SizedBox(),
                              SizedBox(width: 10),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Deep Cleaning',
                                    style: globalTextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  SizedBox(height: 5),
                                  Text(
                                    '£25.70/h',
                                    style: globalTextStyle(
                                      fontSize: 12,
                                      color: AppColors.grayColor,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(height: 10),
                      // Move-In/Move-Out
                      GestureDetector(
                        onTap: () {
                          controller.changeCleaningSession('move');
                        },
                        child: Container(
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color:
                                controller.selectCleaningSession.value == 'move'
                                ? AppColors.primaryColor.withAlpha(20)
                                : const Color(0xff1E1E24).withAlpha(10),
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                              color:
                                  controller.selectCleaningSession.value ==
                                      'move'
                                  ? AppColors.primaryColor
                                  : Colors.transparent,
                            ),
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              controller.selectCleaningSession.value == 'move'
                                  ? Icon(
                                      Icons.check_circle_rounded,
                                      color: AppColors.primaryColor,
                                      size: 20,
                                    )
                                  : SizedBox(),
                              SizedBox(width: 10),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Move-In/Move-Out',
                                    style: globalTextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  SizedBox(height: 5),
                                  Text(
                                    '£26.90/h',
                                    style: globalTextStyle(
                                      fontSize: 12,
                                      color: AppColors.grayColor,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(height: 10),
                    ],
                  ),
                );
              }),
              const SizedBox(height: 10),

              // 10% Discounts are available
              Obx(() {
                return Container(
                  width: double.infinity,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 15,
                    vertical: 10,
                  ),
                  decoration: BoxDecoration(
                    color: AppColors.whiteColor,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // heading
                      Text(
                        '10% Discounts are available',
                        style: globalTextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(height: 10),

                      // discounts
                      Row(
                        children: List.generate(controller.discounts.length, (
                          index,
                        ) {
                          final isSelected =
                              controller.selectedDiscount.value == index;
                          final discounts = controller.discounts[index];

                          return GestureDetector(
                            onTap: () {
                              controller.changeDiscount(index);
                            },
                            child: Container(
                              margin: EdgeInsets.symmetric(horizontal: 5),
                              padding:  EdgeInsets.symmetric(vertical: 10, horizontal: 50),
                              decoration: BoxDecoration(
                                color: isSelected
                                    ? AppColors.primaryColor.withAlpha(20)
                                    : const Color(0xff1E1E24).withAlpha(10),
                                borderRadius: BorderRadius.circular(20),
                                border: Border.all(
                                  color: isSelected
                                      ? AppColors.primaryColor
                                      : Colors.transparent,
                                ),
                              ),
                              child: Text(
                                discounts,
                                style: globalTextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          );
                        }),
                      ),
                    ],
                  ),
                );
              }),
            ],
          ),
        ),
      ),
      bottomSheet: Container(
        decoration: BoxDecoration(color: AppColors.whiteColor),
        padding: EdgeInsets.only(bottom: 30, left: 20, right: 20, top: 20),
        child: CustomButton(
          title: "Next",
          onPressed: () {
            Get.toNamed(AppRoute.addBookingDetails2Screen);
          },
        ),
      ),
    );
  }
}
