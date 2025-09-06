import 'package:epicboymoses/core/const/icons_path.dart';
import 'package:epicboymoses/feature/admin_flow/booking_status/view/booking_status_admin.dart';
import 'package:epicboymoses/feature/admin_flow/cleaner/view/cleaner_screen_admin.dart';
import 'package:epicboymoses/feature/admin_flow/delivery/view/delivery_screen_admin.dart';
import 'package:epicboymoses/feature/admin_flow/home_admin/view/home_admin_screen.dart';
import 'package:epicboymoses/feature/cleaner_flow/bookings/view/bookings_screen_cleaner.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BottomNavbarAdminController extends GetxController {
  final RxInt selectedIndex = 0.obs;
  void changeIndex(int i) {
    selectedIndex.value = i;
  }

  final List<Widget> pages = [
    HomeAdminScreen(),
    DeliveryScreenAdmin(),
    CleanScreenAdmin(),
    Center(child: Text('No Messages')),
  ];
  final List<String> icons = [
    IconsPath.home,
    IconsPath.bookings,
    IconsPath.broom,
    IconsPath.profile,
  ];
  final List<String> labels = ["Home", "Delivery", "Cleaner", "User"];
}
