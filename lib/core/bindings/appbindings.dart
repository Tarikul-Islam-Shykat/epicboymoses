import 'package:epicboymoses/feature/cleaner/bookings/controller/bookings_controller_cleaner.dart';
import 'package:epicboymoses/feature/cleaner/bottom_navbar_cleaner/controller/bottom_navbar_cleaner_controller.dart';
import 'package:epicboymoses/feature/cleaner/profile_cleaner/controller/cleaner_profile_controller.dart';
import 'package:epicboymoses/feature/user/mybookings/controller/mybookings_controller.dart';
import 'package:epicboymoses/feature/user/user_profile/controller/user_profile_controller.dart';
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