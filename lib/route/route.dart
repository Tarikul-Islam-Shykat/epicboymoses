import 'package:epicboymoses/feature/user/add_booking_details/screen/add_booking_details_screen1.dart';
import 'package:epicboymoses/feature/user/add_booking_details/screen/add_booking_details_screen2.dart';
import 'package:get/get.dart';
import '../feature/splash_screen/screen/splash_screen.dart';

class AppRoute {
  static String splashScreen = '/splashScreen';
  static String loginScreen = "/loginScreen";
  static String forgetScreen = "/forgetScreen";
  static String resetPassScreen = "/resetPassScreen";
  static String addBookingDetails1Screen = "/addBookingDetails1";
  static String addBookingDetails2Screen = "/addBookingDetails2";

  static String getSplashScreen() => splashScreen;

  static List<GetPage> routes = [
    GetPage(name: splashScreen, page: () => const SplashScreen()),
    GetPage(name: addBookingDetails1Screen, page: () => const AddBookingDetailsScreen1()),
    GetPage(name: addBookingDetails2Screen, page: () => const AddBookingDetailsScreen2()),
  ];
}
