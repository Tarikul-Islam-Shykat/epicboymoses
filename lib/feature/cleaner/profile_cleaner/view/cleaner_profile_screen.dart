import 'package:epicboymoses/core/const/icons_path.dart';
import 'package:epicboymoses/core/style/global_text_style.dart';
import 'package:epicboymoses/feature/user/user_profile/controller/user_profile_controller.dart';
import 'package:epicboymoses/route/route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class CleanerProfileScreen extends StatelessWidget {
  const CleanerProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
     Get.put(()=> UserProfileController());
    return Scaffold(
      backgroundColor: const Color(0xFFF7F5FA),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Text(
                  'Profile',
                  style: globalTextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ),
              SizedBox(height: 20),

              // header
              Container(
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
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ClipOval(
                            child: Image.network(
                              'https://randomuser.me/api/portraits/men/17.jpg',
                              fit: BoxFit.fill,
                              height: 60,
                            ),
                          ),
                          SizedBox(width: 10),

                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                'Albert Flores',
                                style: globalTextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 20,
                                ),
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.mail,
                                    color: Color(0xff4FD1C5),
                                    size: 19,
                                  ),
                                  SizedBox(width: 5),
                                  Text(
                                    'albertflores@example.com',
                                    style: globalTextStyle(
                                      fontSize: 14,
                                      color: Colors.grey,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 3),
                              Row(
                                children: [
                                  Icon(
                                    Icons.call,
                                    color: Color(0xff4FD1C5),
                                    size: 19,
                                  ),
                                  SizedBox(width: 5),
                                  Text(
                                    '+1 761 234 5678',
                                    style: globalTextStyle(
                                      fontSize: 14,
                                      color: Colors.grey,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          // SizedBox(width: 10),
                          Spacer(),
                          IconButton(
                            onPressed: () {
                              Get.toNamed(AppRoute.editProfileScreen);
                            },
                            icon: Icon(Icons.edit),
                            iconSize: 25,
                            color: Color(0xff4FD1C5),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),

              SizedBox(height: 20),

              // Support & Help
              Text(
                'Support & Help',
                style: globalTextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              SizedBox(height: 20),

              // lists
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.white,
                ),
                child: Column(
                  children: [
                    _profileWidget(
                      context,
                      IconsPath.stear,
                      "Connect Stripe",
                      () {
                        // Get.toNamed(AppRoute.myBookingsScreen);
                      },
                      true,
                    ),
                    _profileWidget(
                      context,
                      IconsPath.pass,
                      "Change Password",
                      () {
                        Get.toNamed(AppRoute.changePasswordScreen);
                      },
                      true,
                    ),
                    _profileWidget(
                      context,
                      IconsPath.aboutus,
                      "About Us",
                      () {},
                      true,
                    ),
                    _profileWidget(
                      context,
                      IconsPath.privacypolicy,
                      "Privacy Policy",
                      () {},
                      false,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget _profileWidget(
  BuildContext context,
  String iconPath,
  String title,
  VoidCallback onPressed,
  bool showUnderLine,
) {
  // final String iconPath;
  // final String title;
  // final VoidCallback onPressed;
  // final bool showUnderLine;
  return Column(
    children: [
      Padding(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: Row(
          children: [
            // icon
            Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Color(0xff4FD1C5).withAlpha(40),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: SvgPicture.asset(iconPath),
              ),
            ),
            SizedBox(width: 15),
            // text
            Text(
              title,
              style: globalTextStyle(fontWeight: FontWeight.w600, fontSize: 20),
            ),
            Spacer(),

            // arrow
            GestureDetector(
              onTap: onPressed,
              child: Icon(Icons.keyboard_arrow_right_outlined, size: 35),
            ),
          ],
        ),
      ),
      showUnderLine
          ? Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Divider(color: Colors.grey.withAlpha(90)),
            )
          : SizedBox(height: 10),
    ],
  );
}
