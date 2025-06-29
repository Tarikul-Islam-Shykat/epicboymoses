import 'package:epicboymoses/core/global_widegts/custom_button.dart';
import 'package:epicboymoses/core/style/global_text_style.dart';
import 'package:flutter/material.dart';

class CleanerDetailsView extends StatelessWidget {
  const CleanerDetailsView({super.key});

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
                  const CircleAvatar(
                    backgroundColor: Colors.white,
                    child: Icon(Icons.arrow_back, color: Colors.black),
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
                        // indicator: BoxDecoration(
                        //   color: Color(0xFFF7F5FA),
                        //   borderRadius: BorderRadius.all(Radius.circular(30)),
                        // ),
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
                          Center(child: Text("Services will be listed here")),

                          /// Reviews Tab
                          Center(
                            child: Text("Customer reviews will appear here"),
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
}
