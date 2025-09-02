import 'package:flutter/widgets.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class UserProfileController  extends GetxController{
  //=============Edit Profile=================//
  TextEditingController fullName = TextEditingController();
  TextEditingController lastName = TextEditingController();
  TextEditingController mobileNumber = TextEditingController();

  //=============Change Password=================//
  TextEditingController oldPassword = TextEditingController();
  TextEditingController newPassword = TextEditingController();
  TextEditingController confirmPassword = TextEditingController();

  
}