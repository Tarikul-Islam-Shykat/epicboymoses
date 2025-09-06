import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CleanerProfileController extends GetxController{

  //=============Edit Profile=================//
  TextEditingController fullName = TextEditingController();
  TextEditingController lastName = TextEditingController();
  TextEditingController mobileNumber = TextEditingController();

  //=============Change Password=================//
  TextEditingController oldPassword = TextEditingController();
  TextEditingController newPassword = TextEditingController();
  TextEditingController confirmPassword = TextEditingController();
}