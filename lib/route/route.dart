import 'package:epicboymoses/feature/user/add_booking_details/screen/add_booking_details_screen1.dart';
import 'package:get/get.dart';
import '../feature/splash_screen/screen/splash_screen.dart';

class AppRoute {
  static String splashScreen = '/splashScreen';
  static String loginScreen = "/loginScreen";
  static String forgetScreen = "/forgetScreen";
  static String resetPassScreen = "/resetPassScreen";
  static String addBookingDetails1Screen = "/addBookingDetails1";

  static String getSplashScreen() => splashScreen;

  static List<GetPage> routes = [
    GetPage(name: splashScreen, page: () => const SplashScreen()),
    GetPage(name: addBookingDetails1Screen, page: () => const AddBookingDetailsScreen1()),
  ];
}
