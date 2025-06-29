import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CleanerSignupController extends GetxController {
  final RxString selectedDate = ''.obs; // ✅ CORRECT TYPE
  final RxString selectedTime = '07:00'.obs;

  Future<void> pickDate(BuildContext context) async {
    DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime.now(),
      lastDate: DateTime(2026),
    );
    if (picked != null) {
      selectedDate.value = "${picked.toLocal()}".split(' ')[0]; // ✅ .value
    }
  }

  void selectTime(String time) {
    selectedTime.value = time;
  }
}
