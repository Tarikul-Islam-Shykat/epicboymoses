import 'package:epicboymoses/core/const/app_colors.dart';
import 'package:epicboymoses/core/global_widegts/custom_button.dart';
import 'package:epicboymoses/core/global_widegts/custom_text_field.dart';
import 'package:epicboymoses/core/style/global_text_style.dart';
import 'package:epicboymoses/feature/user/add_booking_details/controller/add_booking_details_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/instance_manager.dart';
import 'package:get/utils.dart';

class AddBookingDetailsScreen2 extends StatelessWidget {
  const AddBookingDetailsScreen2({super.key});

  @override
  Widget build(BuildContext context) {
    AddBookingDetailsController controller =
        Get.find<AddBookingDetailsController>();
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
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
              // How Long ?
              HowLong(controller: controller),
              SizedBox(height: 20),

              // Do You Have Any Other Needs?
              OtherNeeds(controller: controller),
              SizedBox(height: 20),

              // Have Any Pets
              HaveAnyPets(controller: controller),
              SizedBox(height: 20),

              // Appointment Date
              AppointmentDate(controller: controller),
              SizedBox(height: 20),

              // Select Availability
              SelectAvailability(controller: controller),
              SizedBox(height: 20),

              EnjoyService(controller: controller),
              SizedBox(height: 100),
            ],
          ),
        ),
      ),
      bottomSheet: Container(
        decoration: BoxDecoration(color: AppColors.whiteColor),
        padding: EdgeInsets.only(bottom: 30, left: 20, right: 20, top: 20),
        child: SizedBox(
          height: 56,
          width: double.infinity,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: AppColors.primaryColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
            ),
            onPressed: () {},
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '1 Item',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w800,
                    color: Colors.white,
                  ),
                ),
                Text(
                  'Checkout',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w800,
                    color: Colors.white,
                  ),
                ),
                Text(
                  '\$40',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w800,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class HowLong extends StatelessWidget {
  const HowLong({super.key, required this.controller});

  final AddBookingDetailsController controller;

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        decoration: BoxDecoration(
          color: AppColors.whiteColor,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // heading
            Text(
              'How Long ?',
              style: globalTextStyle(fontSize: 14, fontWeight: FontWeight.w500),
            ),
            SizedBox(height: 10),
            GridView.count(
              crossAxisCount: 4,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              padding: EdgeInsets.zero,
              childAspectRatio: 2.5,
              children: List.generate(controller.hours.length, (index) {
                final isSelected = controller.selectedHour.value == index;
                final hours = controller.hours[index];
                return GestureDetector(
                  onTap: () => controller.selectHour(index),
                  child: Container(
                    height: 35,
                    decoration: BoxDecoration(
                      color: isSelected
                          ? AppColors.primaryColor.withValues(alpha: 0.1)
                          : Color(0xffF6F6F6),
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        color: isSelected
                            ? AppColors.primaryColor
                            : AppColors.whiteColor,
                      ),
                    ),
                    child: Center(
                      child: Text(
                        hours,
                        style: globalTextStyle(
                          fontSize: 14,
                          color: isSelected
                              ? AppColors.primaryColor
                              : AppColors.blackColor,
                        ),
                      ),
                    ),
                  ),
                );
              }),
            ),
          ],
        ),
      );
    });
  }
}

class OtherNeeds extends StatelessWidget {
  const OtherNeeds({super.key, required this.controller});

  final AddBookingDetailsController controller;

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return Container(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        decoration: BoxDecoration(
          color: AppColors.whiteColor,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // heading
            Text(
              'Do You Have Any Other Needs?',
              style: globalTextStyle(fontSize: 14, fontWeight: FontWeight.w500),
            ),
            SizedBox(height: 10),

            // Cleaning products
            GestureDetector(
              onTap: () {
                controller.changeNeeds('cleaning');
              },
              child: Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: controller.selectNeeds.value == 'cleaning'
                      ? AppColors.primaryColor.withAlpha(20)
                      : const Color(0xff1E1E24).withAlpha(10),
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    color: controller.selectNeeds.value == 'cleaning'
                        ? AppColors.primaryColor
                        : Colors.transparent,
                  ),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    controller.selectNeeds.value == 'cleaning'
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
                          'Cleaning products',
                          style: globalTextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(height: 5),
                        Text(
                          '+£3.00/h',
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
            // Ironing
            GestureDetector(
              onTap: () {
                controller.changeNeeds('ironing');
              },
              child: Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: controller.selectNeeds.value == 'ironing'
                      ? AppColors.primaryColor.withAlpha(20)
                      : const Color(0xff1E1E24).withAlpha(10),
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    color: controller.selectNeeds.value == 'ironing'
                        ? AppColors.primaryColor
                        : Colors.transparent,
                  ),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    controller.selectNeeds.value == 'ironing'
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
                          'Ironing',
                          style: globalTextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(height: 5),
                        Text(
                          '+£10.00/h',
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
          ],
        ),
      );
    });
  }
}

class HaveAnyPets extends StatelessWidget {
  const HaveAnyPets({super.key, required this.controller});

  final AddBookingDetailsController controller;

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        decoration: BoxDecoration(
          color: AppColors.whiteColor,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // heading
            Text(
              'Have Any Pets',
              style: globalTextStyle(fontSize: 14, fontWeight: FontWeight.w500),
            ),
            SizedBox(height: 10),

            // pets
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(controller.pets.length, (index) {
                  final isSelected = controller.selectedPets.value == index;
                  final pets = controller.pets[index];

                  return GestureDetector(
                    onTap: () {
                      controller.changePets(index);
                    },
                    child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 3),
                      padding: EdgeInsets.symmetric(
                        vertical: 10,
                        horizontal: 40,
                      ),
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
                        pets,
                        style: globalTextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  );
                }),
              ),
            ),
          ],
        ),
      );
    });
  }
}

class AppointmentDate extends StatelessWidget {
  const AppointmentDate({super.key, required this.controller});

  final AddBookingDetailsController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      decoration: BoxDecoration(
        color: AppColors.whiteColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // heading
          Text(
            'Appointment Date',
            style: globalTextStyle(fontSize: 14, fontWeight: FontWeight.w500),
          ),
          SizedBox(height: 10),

          // select date
          GestureDetector(
            onTap: () => controller.pickDate(context),
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
              decoration: BoxDecoration(
                color: Color(0xffF6F6F6),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Obx(() {
                      final date = controller.selectedDate.value;
                      return Text(
                        date.isEmpty ? "Select Meeting Date" : date,
                        style: globalTextStyle(),
                        overflow: TextOverflow.ellipsis,
                      );
                    }),
                  ),

                  Icon(Icons.calendar_today, color: Colors.grey),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class SelectAvailability extends StatelessWidget {
  const SelectAvailability({super.key, required this.controller});

  final AddBookingDetailsController controller;

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        decoration: BoxDecoration(
          color: AppColors.whiteColor,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // heading
            Text(
              'Select Availability',
              style: globalTextStyle(fontSize: 14, fontWeight: FontWeight.w500),
            ),
            SizedBox(height: 10),
            GridView.count(
              crossAxisCount: 4,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              padding: EdgeInsets.zero,
              childAspectRatio: 2.5,
              children: List.generate(controller.times.length, (index) {
                final isSelected = controller.selectedTime.value == index;
                final times = controller.times[index];
                return GestureDetector(
                  onTap: () => controller.selectedTime(index),
                  child: Container(
                    height: 35,
                    decoration: BoxDecoration(
                      color: isSelected
                          ? AppColors.primaryColor.withValues(alpha: 0.1)
                          : Color(0xffF6F6F6),
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        color: isSelected
                            ? AppColors.primaryColor
                            : AppColors.whiteColor,
                      ),
                    ),
                    child: Center(
                      child: Text(
                        times,
                        style: globalTextStyle(
                          fontSize: 14,
                          color: isSelected
                              ? AppColors.primaryColor
                              : AppColors.blackColor,
                        ),
                      ),
                    ),
                  ),
                );
              }),
            ),
          ],
        ),
      );
    });
  }
}

class EnjoyService extends StatelessWidget {
  const EnjoyService({super.key, required this.controller});

  final AddBookingDetailsController controller;

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return Container(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        decoration: BoxDecoration(
          color: AppColors.whiteColor,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // heading
            Text(
              'Who Enjoy This Service',
              style: globalTextStyle(fontSize: 14, fontWeight: FontWeight.w500),
            ),
            SizedBox(height: 10),

            // Cleaning products
            GestureDetector(
              onTap: () {
                controller.changeNeeds('cleaning');
              },
              child: Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: controller.selectNeeds.value == 'cleaning'
                      ? AppColors.primaryColor.withAlpha(20)
                      : const Color(0xff1E1E24).withAlpha(10),
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    color: controller.selectNeeds.value == 'cleaning'
                        ? AppColors.primaryColor
                        : Colors.transparent,
                  ),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    controller.selectNeeds.value == 'cleaning'
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
                          'For me',
                          style: globalTextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(height: 5),
                        Text(
                          '110 W 3rd St, New York, NY 10012, USA',
                          style: globalTextStyle(
                            fontSize: 12,
                            color: AppColors.grayColor,
                          ),
                        ),
                      ],
                    ),
                    Spacer(),
                    GestureDetector(
                      onTap: () {},
                      child: Icon(Icons.keyboard_arrow_down_sharp, size: 30),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 10),
            // Ironing
            GestureDetector(
              onTap: () {
                controller.changeNeeds('ironing');
              },
              child: Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: controller.selectNeeds.value == 'ironing'
                      ? AppColors.primaryColor.withAlpha(20)
                      : const Color(0xff1E1E24).withAlpha(10),
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    color: controller.selectNeeds.value == 'ironing'
                        ? AppColors.primaryColor
                        : Colors.transparent,
                  ),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    controller.selectNeeds.value == 'ironing'
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
                          'Add Other Person',
                          style: globalTextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      );
    });
  }
}
