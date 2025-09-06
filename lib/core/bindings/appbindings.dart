import 'package:epicboymoses/feature/cleaner_flow/bookings/controller/bookings_controller_cleaner.dart';
import 'package:epicboymoses/feature/cleaner_flow/bottom_navbar_cleaner/controller/bottom_navbar_cleaner_controller.dart';
import 'package:epicboymoses/feature/cleaner_flow/profile_cleaner/controller/cleaner_profile_controller.dart';
import 'package:epicboymoses/feature/user_flow/mybookings/controller/mybookings_controller.dart';
import 'package:epicboymoses/feature/user_flow/user_profile/controller/user_profile_controller.dart';
import 'package:get/get.dart';

class AppBindings extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut(()=> UserProfileController());
    Get.lazyPut(()=> MyBookingsController());
    Get.lazyPut(()=> BottomNavbarCleanerController());
    Get.lazyPut(()=> BookingsControllerCleaner());
    Get.lazyPut(()=> CleanerProfileController());
  }
}