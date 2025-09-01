import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AddBookingDetailsController extends GetxController {
  //=========== Page 1===============//
  var selectedAddress = 'yes'.obs;
  var selectCleaningSession = 'standard'.obs;
  var selectedDiscount = 0.obs;

  final otherAddressController = TextEditingController();

  void changeAddress(String type) {
    selectedAddress.value = type;
  }

  void changeCleaningSession(String type) {
    selectCleaningSession.value = type;
  }

  final List<String> discounts = ['Weekly', 'Bi-weekly'];

  void changeDiscount(int i) {
    selectedDiscount.value = i;
  }

  //=========== Page 2===============//
  final RxInt selectedHour = 0.obs;
  final List<String> hours = ['2h', '3h', '4h', '5h', '6h', '7h', '8h', '9h'];
  void selectHour(int hour) {
    selectedHour.value = hour;
  }

  var selectNeeds = 'cleaning'.obs;
  void changeNeeds(String type) {
    selectNeeds.value = type;
  }

  var selectedPets = 0.obs;
  final List<String> pets = ['Yes I Have', 'No, I dont have'];
  void changePets(int i) {
    selectedPets.value = i;
  }

  final RxString selectedDate = ''.obs;

  Future<void> pickDate(BuildContext context) async {
    DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime.now(),
      lastDate: DateTime(2026),
    );
    if (picked != null) {
      selectedDate.value = "${picked.toLocal()}".split(' ')[0];
    }
  }

  final RxInt selectedTime = 0.obs;
  final List<String> times = ['07:00', '08:00', '09:00', '10:00', '11:00', '12:00', '13:00', '14:00'];
  void selectTime(int time) {
    selectedTime.value = time;
  }



}
