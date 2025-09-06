import 'package:epicboymoses/feature/auth/cleaner_signup/view/cleaner_signup.dart';
import 'package:epicboymoses/feature/auth/login/view/login_view.dart';
import 'package:epicboymoses/feature/auth/user_signup/user_signup.dart';
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
      Get.to(() => CleanerSignup());
    }
    else{
      Get.to(() => LoginView());
    }
  }
}
