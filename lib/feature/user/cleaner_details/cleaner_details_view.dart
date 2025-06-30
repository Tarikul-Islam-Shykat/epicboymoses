import 'package:epicboymoses/core/const/app_colors.dart';
import 'package:epicboymoses/core/global_widegts/custom_button.dart';
import 'package:epicboymoses/core/style/global_text_style.dart';
import 'package:epicboymoses/feature/user/cleaner_details/cleaneer_details_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CleanerDetailsView extends StatelessWidget {
  CleanerDetailsView({super.key});
  final CleaneerDetailsController controller = Get.put(
    CleaneerDetailsController(),
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF7F5FA),
      body: SafeArea(
        child: Column(
          children: [
            /// Top AppBar
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 16.0,
                vertical: 10,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                  Text(
                    "Cleaner Details",
                    style: globalTextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                    ),
                  ),
                  const CircleAvatar(
                    backgroundColor: Colors.white,
                    child: Icon(Icons.bookmark_border, color: Colors.black),
                  ),
                ],
              ),
            ),

            SizedBox(
              height: 210,
              child: Stack(
                alignment: Alignment.topCenter,
                children: [
                  Container(
                    height: 160,
                    width: double.infinity,
                    margin: const EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 16,
                    ),

                    decoration: BoxDecoration(
                      color: Colors.teal,
                      borderRadius: BorderRadius.circular(20),
                      image: const DecorationImage(
                        image: NetworkImage(
                          'https://img.freepik.com/free-photo/cleaning-service-woman-rubber-gloves-holding-bucket-with-detergents-smiling-blue-background_1258-48243.jpg',
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                    alignment: Alignment.centerLeft,
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

            /// Name + Info
            Text(
              "Dianne Russell",
              style: globalTextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Text(
              "Warshawa, Poland",
              style: globalTextStyle(fontSize: 14, color: Colors.grey),
            ),
            SizedBox(height: 4),
            Text(
              "\$20/Per Hour",
              style: globalTextStyle(fontSize: 14, fontWeight: FontWeight.w500),
            ),

            const SizedBox(height: 20),

            /// Tab bar
            DefaultTabController(
              length: 3,
              child: Expanded(
                child: Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 16),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: const TabBar(
                        labelColor: Colors.black,
                        unselectedLabelColor: Colors.grey,

                        dividerHeight: 0,
                        tabs: [
                          Tab(text: "About"),
                          Tab(text: "Services"),
                          Tab(text: "Reviews"),
                        ],
                      ),
                    ),
                    const SizedBox(height: 10),
                    Expanded(
                      child: TabBarView(
                        children: [
                          /// About Tab
                          SingleChildScrollView(
                            padding: const EdgeInsets.all(16),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "About Dianne Russell",
                                  style: globalTextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                  ),
                                ),
                                SizedBox(height: 10),
                                Text(
                                  "I am a dedicated and experienced driver with a deep passion for providing exceptional service. Based in Warszawa, Poland, I have been proudly serving the community for several years, ensuring safe, reliable, and comfortable transportation for all my passengers. My primary goal is to make every journey enjoyable and stress-free, with a strong commitment to punctuality, professionalism, and customer satisfaction. I take pride in maintaining a high standard of service and am always ready to help.",
                                  style: globalTextStyle(
                                    fontSize: 14,
                                    color: Colors.grey,
                                  ),
                                ),
                              ],
                            ),
                          ),

                          /// Services Tab
                          SingleChildScrollView(
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 18.0,
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "All Services",
                                    style: globalTextStyle(
                                      fontSize: 16,
                                      color: Color(0xff4B4B50),
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  SizedBox(height: 10),
                                  ListView.builder(
                                    shrinkWrap: true,
                                    physics: NeverScrollableScrollPhysics(),
                                    itemCount: 5,
                                    padding: EdgeInsets.zero,
                                    itemBuilder: (context, index) {
                                      return Container(
                                        margin: const EdgeInsets.only(
                                          bottom: 8,
                                        ),
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(
                                            13,
                                          ),
                                          color: Colors.white,
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.all(16.0),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                "Classic Regular Cleaning",
                                                style: globalTextStyle(
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w600,
                                                ),
                                              ),
                                              Text(
                                                "\$20/per hour",
                                                style: globalTextStyle(
                                                  fontSize: 10,
                                                  color: Color(0xff1E1E1E),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      );
                                    },
                                  ),
                                ],
                              ),
                            ),
                          ),

                          /// Reviews Tab
                          SingleChildScrollView(
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 18.0,
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "All Reviews(100+)",
                                    style: globalTextStyle(
                                      fontSize: 16,
                                      color: const Color(0xff1E1E24),
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  SizedBox(height: 10),
                                  Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(13),
                                      color: Colors.white,
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(16.0),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          _buildRatingRow(5.0, 0.75, "75%"),
                                          _buildRatingRow(4.0, 0.15, "15%"),
                                          _buildRatingRow(3.0, 0.02, "02%"),
                                          _buildRatingRow(2.0, 0.75, "75%"),
                                          _buildRatingRow(1.0, 0.08, "08%"),
                                        ],
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 10),
                                  Row(
                                    children: [
                                      Text(
                                        "What People Say's",
                                        style: globalTextStyle(
                                          fontSize: 16,
                                          color: const Color(0xff1E1E24),
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                      const Spacer(),
                                      Container(
                                        height: 35,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(
                                            17.5,
                                          ),
                                          border: Border.all(
                                            color: Colors.black45,
                                          ),
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.symmetric(
                                            horizontal: 8.0,
                                          ),
                                          child: Row(
                                            children: [
                                              Icon(
                                                Icons.star,
                                                color: AppColors.primaryColor,
                                                size: 16,
                                              ),
                                              SizedBox(
                                                width: 55,
                                                child: Obx(
                                                  () => DropdownButton<double>(
                                                    value: controller
                                                        .selectedratting
                                                        .value,
                                                    onChanged: (double? newValue) {
                                                      if (newValue != null) {
                                                        controller
                                                                .selectedratting
                                                                .value =
                                                            newValue;
                                                      }
                                                    },
                                                    icon: const Icon(
                                                      Icons.keyboard_arrow_down,
                                                      color: AppColors
                                                          .primaryColor,
                                                    ),
                                                    underline: Container(),
                                                    items:
                                                        <double>[
                                                          5.0,
                                                          4.0,
                                                          3.0,
                                                          2.0,
                                                          1.0,
                                                        ].map<
                                                          DropdownMenuItem<
                                                            double
                                                          >
                                                        >((double value) {
                                                          return DropdownMenuItem<
                                                            double
                                                          >(
                                                            value: value,
                                                            child: Text(
                                                              value.toString(),
                                                              style: TextStyle(
                                                                color: AppColors
                                                                    .primaryColor,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold,
                                                              ),
                                                            ),
                                                          );
                                                        }).toList(),
                                                    dropdownColor: Colors.white,
                                                    isExpanded: true,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 10),
                                  ListView.builder(
                                    itemCount: 5,
                                    shrinkWrap: true,
                                    physics: NeverScrollableScrollPhysics(),
                                    itemBuilder: (context, index) {
                                      return Container(
                                        margin: const EdgeInsets.only(
                                          bottom: 8,
                                        ),
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(
                                            13,
                                          ),
                                          color: Colors.white,
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Column(
                                            children: [
                                              Row(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                children: [
                                                  Container(
                                                    height: 32,
                                                    width: 32,
                                                    decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                            8,
                                                          ),
                                                      image: const DecorationImage(
                                                        image: NetworkImage(
                                                          "https://randomuser.me/api/portraits/men/60.jpg",
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  SizedBox(width: 10),
                                                  Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Text(
                                                        "John Doe",
                                                        style: globalTextStyle(
                                                          fontSize: 12,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                        ),
                                                      ),
                                                      Text(
                                                        "Booking On 26 March",
                                                        style: globalTextStyle(
                                                          fontSize: 10,
                                                          color: Colors.grey,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  const Spacer(),
                                                  Container(
                                                    height: 20,
                                                    width: 40,
                                                    decoration: BoxDecoration(
                                                      color: Color(0xffF9F9F9),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                            8,
                                                          ),
                                                    ),
                                                    child: Center(
                                                      child: Row(
                                                        children: [
                                                          Icon(
                                                            Icons.star,
                                                            color: Colors.teal,
                                                            size: 14,
                                                          ),
                                                          SizedBox(width: 2),
                                                          Text(
                                                            "5.0",
                                                            style:
                                                                globalTextStyle(
                                                                  fontSize: 10,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              SizedBox(height: 10),
                                              Text(
                                                "Dianne was very professional and did an amazing job cleaning my house. I highly recommend her services!",
                                                style: globalTextStyle(
                                                  fontSize: 12,
                                                  color: Color(0xff000000),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      );
                                    },
                                  ),
                                  SizedBox(height: 30),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),

            /// Bottom Button
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: CustomButton(title: "Book Cleaner", onPressed: () {}),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildRatingRow(double star, double percentage, String label) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        children: [
          Icon(Icons.star, color: AppColors.primaryColor),
          Text(star.toString(), style: TextStyle(fontWeight: FontWeight.bold)),
          SizedBox(width: 10),
          Expanded(
            child: LinearProgressIndicator(
              value: percentage,
              backgroundColor: Colors.grey[300],
              valueColor: AlwaysStoppedAnimation<Color>(AppColors.primaryColor),
            ),
          ),
          SizedBox(width: 10),
          Text(label),
        ],
      ),
    );
  }
}
