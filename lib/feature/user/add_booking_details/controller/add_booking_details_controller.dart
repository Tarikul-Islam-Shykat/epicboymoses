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

  void changeDiscount(int i){
      selectedDiscount.value = i;
  }

  
}
