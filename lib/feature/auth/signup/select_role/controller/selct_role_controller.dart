import 'package:epicboymoses/feature/auth/user_signup/user_signup.dart';
import 'package:get/get.dart';

class SelctRoleController extends GetxController {
  var selectedRole = 'User'.obs;

  void selectRole(String role) {
    selectedRole.value = role;
  }

  void nextPage() {
    if (selectedRole.value == "User") {
      Get.to(() => UserSignup());
    } else {
      Get.snackbar('Error', 'Please select a role');
    }
  }
}
