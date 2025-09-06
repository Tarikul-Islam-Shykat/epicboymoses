import 'package:get/get.dart';

class BookingConfirmationController extends GetxController{
  final RxBool isExpanded = false.obs;
  void changeExpand(){
    isExpanded.value = !isExpanded.value;
  }
}