import 'package:epicboymoses/core/const/app_colors.dart';
import 'package:epicboymoses/core/global_widegts/custom_button.dart';
import 'package:epicboymoses/core/style/global_text_style.dart';
import 'package:epicboymoses/feature/auth/cleaner_signup/controller/cleaner_signup_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TimeSelectView extends StatelessWidget {
  TimeSelectView({super.key});
  final controller = Get.put(
    CleanerSignupController(),
  ); // Ensure single instance

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 18.0, right: 18.0, top: 60.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(25),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withAlpha(12),
                        blurRadius: 10,
                        spreadRadius: 2,
                      ),
                    ],
                  ),
                  child: IconButton(
                    icon: const Icon(Icons.arrow_back_ios_new_rounded),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                ),
                Text(
                  "Let's Meet",
                  style: globalTextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(width: 30),
              ],
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 20),
                    Text(
                      "Meet an appointment with our team !",
                      style: globalTextStyle(fontSize: 16),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withAlpha(12),
                            blurRadius: 10,
                            spreadRadius: 2,
                          ),
                        ],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Meeting Date",
                              style: globalTextStyle(fontSize: 16),
                            ),
                            const SizedBox(height: 10),
                            GestureDetector(
                              onTap: () => controller.pickDate(context),
                              child: Container(
                                padding: EdgeInsets.symmetric(
                                  vertical: 15,
                                  horizontal: 10,
                                ),
                                decoration: BoxDecoration(
                                  color: Color(0xffF6F6F6),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Expanded(
                                      child: Obx(() {
                                        final date =
                                            controller.selectedDate.value;
                                        return Text(
                                          date.isEmpty
                                              ? "Select Meeting Date"
                                              : date,
                                          style: globalTextStyle(),
                                          overflow: TextOverflow.ellipsis,
                                        );
                                      }),
                                    ),

                                    Icon(
                                      Icons.calendar_today,
                                      color: Colors.grey,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withAlpha(12),
                            blurRadius: 10,
                            spreadRadius: 2,
                          ),
                        ],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Select Availability",
                              style: globalTextStyle(fontSize: 16),
                            ),
                            const SizedBox(height: 10),
                            GridView.count(
                              crossAxisCount: 4,
                              shrinkWrap: true,
                              physics: NeverScrollableScrollPhysics(),
                              crossAxisSpacing: 10,
                              mainAxisSpacing: 10,
                              padding: EdgeInsets.zero,
                              childAspectRatio: 2.5,
                              children: List.generate(16, (index) {
                                final times = [
                                  '07:00',
                                  '08:00',
                                  '09:00',
                                  '10:00',
                                  '11:00',
                                  '12:00',
                                  '13:00',
                                  '14:00',
                                  '15:00',
                                  '16:00',
                                  '17:00',
                                  '18:00',
                                  '19:00',
                                  '20:00',
                                  '21:00',
                                  '22:00',
                                ];
                                return Obx(
                                  () => GestureDetector(
                                    onTap: () =>
                                        controller.selectTime(times[index]),
                                    child: Container(
                                      height: 35,
                                      decoration: BoxDecoration(
                                        color:
                                            controller.selectedTime.value ==
                                                times[index]
                                            ? AppColors.primaryColor.withValues(
                                                alpha: 0.1,
                                              )
                                            : Color(0xffF6F6F6),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: Center(
                                        child: Text(
                                          times[index],
                                          style: globalTextStyle(fontSize: 12),
                                        ),
                                      ),
                                    ),
                                  ),
                                );
                              }),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            CustomButton(
              title: "Schedule Meeting",
              onPressed: () {
                print(
                  "Scheduled for ${controller.selectedDate.value} at ${controller.selectedTime.value}",
                );
              },
            ),
            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}
