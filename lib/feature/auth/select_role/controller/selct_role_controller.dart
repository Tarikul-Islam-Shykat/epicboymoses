import 'package:epicboymoses/feature/admin_flow/bottom_navbar_admin/view/bottom_navbar_admin.dart';
import 'package:epicboymoses/feature/admin_flow/home_admin/view/home_admin_screen.dart';
import 'package:epicboymoses/feature/auth/cleaner_signup/view/cleaner_signup.dart';
import 'package:epicboymoses/feature/auth/login/view/login_view.dart';
import 'package:epicboymoses/feature/auth/user_signup/user_signup.dart';
import 'package:epicboymoses/feature/cleaner_flow/bottom_navbar_cleaner/view/bottom_nav_screen_cleaner.dart';
import 'package:epicboymoses/feature/cleaner_flow/home_cleaner/view/home_screen_cleaner.dart';
import 'package:get/get.dart';

class SelectRoleController extends GetxController {
  var selectedRole = 'User'.obs;

  void selectRole(String role) {
    selectedRole.value = role;
  }

  void nextPage() {
    if (selectedRole.value == "User") {
      Get.to(() => UserSignup());
    } else if(selectedRole.value == "Cleaner") {
      Get.to(() => LoginView());
    }
    else{
      Get.to(() => LoginView());
    }
  }

   void homePage() {
    if (selectedRole.value == "User") {
      Get.to(() => UserSignup());
    } else if(selectedRole.value == "Cleaner") {
      Get.to(() => BottomNavbarScreenCleaner());
    }
    else{
      Get.to(() => BottomNavbarAdmin());
    }
  }
}
