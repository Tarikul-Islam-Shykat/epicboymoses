import 'package:epicboymoses/core/const/app_colors.dart';
import 'package:epicboymoses/core/global_widegts/custom_button.dart';
import 'package:epicboymoses/core/global_widegts/custom_text_field.dart';
import 'package:epicboymoses/core/style/global_text_style.dart';
import 'package:epicboymoses/feature/user/add_booking_details/controller/booking_confirmation_controller.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/instance_manager.dart';
import 'package:get/utils.dart';

class BookingConfirmationScreen extends StatelessWidget {
  const BookingConfirmationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    BookingConfirmationController bookingConfirmationController = Get.put(
      BookingConfirmationController(),
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
                      "Booking Confirmation",
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
              // Location
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 20,
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
                          'Location',
                          style: globalTextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                        ),

                        Icon(Icons.keyboard_arrow_down_rounded),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),

              // Service Price  test
              Obx(() {
                return Container(
                  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  decoration: BoxDecoration(
                    color: AppColors.whiteColor,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: ExpansionPanelList(
                    elevation: 0,
                    expandedHeaderPadding: EdgeInsets.zero,
                    expansionCallback: (index, isExpanded) {
                      bookingConfirmationController.changeExpand();
                    },
                    children: [
                      ExpansionPanel(
                        backgroundColor: AppColors.whiteColor,
                        isExpanded: bookingConfirmationController.isExpanded.value,
                        canTapOnHeader: true,
                        headerBuilder: (context, isExpanded) {
                          return Container(
                            padding: const EdgeInsets.symmetric(vertical: 10),

                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'Service Price',
                                style: globalTextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          );
                        },
                        body: Column(
                          children: [
                            _buildPriceRow('Classic Regular Cleaning', '\$20'),
                            SizedBox(height: 5),
                            _buildPriceRow('For 2 hour', '\$20'),
                            SizedBox(height: 5),
                            _buildPriceRow('Presence of pets', '\$20'),
                            SizedBox(height: 5),
                            const Divider(thickness: 1, color: Colors.grey),
                            SizedBox(height: 5),
                            _buildPriceRow(
                              'Total Bill',
                              '\$22',
                              isBold: true,
                              fontSize: 14,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              }),


              // Service Price
              // Container(
              //   padding: const EdgeInsets.symmetric(
              //     horizontal: 20,
              //     vertical: 20,
              //   ),
              //   decoration: BoxDecoration(
              //     color: AppColors.whiteColor,
              //     borderRadius: BorderRadius.circular(20),
              //   ),
              //   child: Column(
              //     children: [
              //       // heading
              //       Row(
              //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //         children: [
              //           Text(
              //             'Service Price',
              //             style: globalTextStyle(
              //               fontSize: 14,
              //               fontWeight: FontWeight.w500,
              //             ),
              //           ),
              //
              //           Icon(Icons.keyboard_arrow_up_outlined),
              //         ],
              //       ),
              //       SizedBox(height: 10),
              //       Row(
              //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //         children: [
              //           Text(
              //             'Classic Regular Cleaning',
              //             style: globalTextStyle(
              //               color: AppColors.grayColor,
              //               fontSize: 12,
              //             ),
              //           ),
              //           Text(
              //             '\$20',
              //             style: globalTextStyle(
              //               color: AppColors.grayColor,
              //               fontSize: 12,
              //             ),
              //           ),
              //         ],
              //       ),
              //       SizedBox(height: 5),
              //       Row(
              //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //         children: [
              //           Text(
              //             'For 2 hour',
              //             style: globalTextStyle(
              //               color: AppColors.grayColor,
              //               fontSize: 12,
              //             ),
              //           ),
              //           Text(
              //             '\$20',
              //             style: globalTextStyle(
              //               color: AppColors.grayColor,
              //               fontSize: 12,
              //             ),
              //           ),
              //         ],
              //       ),
              //       SizedBox(height: 5),
              //       Row(
              //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //         children: [
              //           Text(
              //             'Presence of pets',
              //             style: globalTextStyle(
              //               color: AppColors.grayColor,
              //               fontSize: 12,
              //             ),
              //           ),
              //           Text(
              //             '\$20',
              //             style: globalTextStyle(
              //               color: AppColors.grayColor,
              //               fontSize: 12,
              //             ),
              //           ),
              //         ],
              //       ),
              //       SizedBox(height: 5),
              //       const Divider(thickness: 1, color: Colors.grey),
              //       SizedBox(height: 5),
              //
              //       Row(
              //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //         children: [
              //           Text(
              //             'Total Bill',
              //             style: globalTextStyle(
              //               color: AppColors.grayColor,
              //               fontSize: 14,
              //               fontWeight: FontWeight.bold,
              //             ),
              //           ),
              //           Text(
              //             '\$22',
              //             style: globalTextStyle(
              //               color: AppColors.grayColor,
              //               fontSize: 14,
              //               fontWeight: FontWeight.bold,
              //             ),
              //           ),
              //         ],
              //       ),
              //     ],
              //   ),
              // ),
              SizedBox(height: 20),

              // Date & TIme
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 20,
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
                          'Date & Time',
                          style: globalTextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                        ),

                        Icon(Icons.keyboard_arrow_down_rounded),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),

              // booking note
              CustomTextField(
                title: 'Booking Note',
                controller: TextEditingController(),
                hitText: 'Enter Booking Note',
                lineHeight: 6,
              ),
            ],
          ),
        ),
      ),
      bottomSheet: Container(
        decoration: BoxDecoration(color: AppColors.whiteColor),
        padding: EdgeInsets.only(bottom: 30, left: 20, right: 20, top: 20),
        child: CustomButton(
          title: "Place Order",
          onPressed: () {
            // Get.toNamed(AppRoute.);
          },
        ),
      ),
    );
  }
}

Widget _buildPriceRow(String title, String price,
    {bool isBold = false, double fontSize = 12}) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Text(
        title,
        style: globalTextStyle(
          fontSize: fontSize,
          fontWeight: isBold ? FontWeight.bold : FontWeight.normal,
          color: AppColors.grayColor,
        ),
      ),
      Text(
        price,
        style: globalTextStyle(
          fontSize: fontSize,
          fontWeight: isBold ? FontWeight.bold : FontWeight.normal,
          color: AppColors.grayColor,
        ),
      ),
    ],
  );
}

