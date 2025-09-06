import 'package:epicboymoses/core/const/icons_path.dart';
import 'package:epicboymoses/feature/cleaner_flow/bookings/view/bookings_screen_cleaner.dart';
import 'package:epicboymoses/feature/cleaner_flow/home_cleaner/view/home_screen_cleaner.dart';
import 'package:epicboymoses/feature/cleaner_flow/profile_cleaner/view/cleaner_profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BottomNavbarCleanerController extends GetxController {
  final RxInt selectedIndex = 0.obs;
  void changeIndex(int i) {
    selectedIndex.value = i;
  }

  final List<Widget> pages = [
    HomeScreenCleanerScreen(),
    BookingsScreenCleaner(),
    Center(child: Text('No Messages')),
    CleanerProfileScreen()
  ];
  final List<String> icons = [
    IconsPath.home,
    IconsPath.bookings,
    IconsPath.message,
    IconsPath.profile,
  ];
  final List<String> labels = ["Home", "Bookings", "Message", "Profile"];
}
