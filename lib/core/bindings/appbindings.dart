import 'package:epicboymoses/feature/user/mybookings/controller/mybookings_controller.dart';
import 'package:epicboymoses/feature/user/user_profile/controller/user_profile_controller.dart';
import 'package:get/get.dart';

class AppBindings extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut(()=> UserProfileController());
    Get.lazyPut(()=> MyBookingsController());
  }
}