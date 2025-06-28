import 'package:get/get.dart';
import '../feature/splash_screen/screen/splash_screen.dart';

class AppRoute {
  static String splashScreen = '/splashScreen';
  static String loginScreen = "/loginScreen";
  static String forgetScreen = "/forgetScreen";
  static String resetPassScreen = "/resetPassScreen";

  static String getSplashScreen() => splashScreen;

  static List<GetPage> routes = [
    GetPage(name: splashScreen, page: () => const SplashScreen()),
  ];
}
