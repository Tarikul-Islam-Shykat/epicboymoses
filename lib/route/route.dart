import 'package:epicboymoses/feature/auth/cleaner_signup/view/account_approved_screen.dart';
import 'package:epicboymoses/feature/auth/cleaner_signup/view/setup_profile_cleaner_screen.dart';
import 'package:epicboymoses/feature/cleaner/booking_details/view/booking_details_cleaner.dart';
import 'package:epicboymoses/feature/cleaner/bookings/view/bookings_screen_cleaner.dart';
import 'package:epicboymoses/feature/cleaner/bottom_navbar_cleaner/view/bottom_nav_screen_cleaner.dart';
import 'package:epicboymoses/feature/cleaner/home/view/home_screen_cleaner.dart';
import 'package:epicboymoses/feature/cleaner/profile_cleaner/view/change_password_cleaner_screen.dart';
import 'package:epicboymoses/feature/cleaner/profile_cleaner/view/cleaner_profile_screen.dart';
import 'package:epicboymoses/feature/cleaner/profile_cleaner/view/edit_profile_cleaner_screen.dart';
import 'package:epicboymoses/feature/user/add_booking_details/screen/add_booking_details_screen1.dart';
import 'package:epicboymoses/feature/user/add_booking_details/screen/add_booking_details_screen2.dart';
import 'package:epicboymoses/feature/user/bookingdetails/screen/booking_details_screeen.dart';
import 'package:epicboymoses/feature/user/mybookings/screen/mybookings_screen.dart';
import 'package:epicboymoses/feature/user/user_profile/screen/change_password_screen.dart';
import 'package:epicboymoses/feature/user/user_profile/screen/edit_profile_screen.dart';
import 'package:get/get.dart';
import '../feature/splash_screen/screen/splash_screen.dart';
import '../feature/user/add_booking_details/screen/booking_confirmation_screen.dart';

class AppRoute {
  static String splashScreen = '/splashScreen';
  static String loginScreen = "/loginScreen";
  static String forgetScreen = "/forgetScreen";
  static String resetPassScreen = "/resetPassScreen";
  static String addBookingDetails1Screen = "/addBookingDetails1";
  static String addBookingDetails2Screen = "/addBookingDetails2";
  static String bookingConfirmationScreen = "/bookingConfirmation";
  static String editProfileScreen = "/editProfile";
  static String changePasswordScreen = "/changePassword";
  static String myBookingsScreen = "/myBookings";
  static String bookingDetailsScreen = "/bookingDetails";
  static String accountApprovedScreen = "/accountApproved";
  static String setupProfileCleanerScreen = "/setupProfileCleaner";
  static String bottomNavBarCleanerScreen = "/bottomNavBarCleaner";
  static String homeScreenCleanerScreen = "/homeScreenCleaner";
  static String bookingsScreenCleanerScreen = "/bookingsScreenCleaner";
  static String cleanerProfileScreen = "/cleanerProfile";
  static String editCleanerProfileScreen = "/editCleanerProfile";
  static String changePasswordCleanerScreen = "/changePasswordCleaner";
  static String bookingDetailsCleanerScreen = "/bookingDetailsCleaner";

  static String getSplashScreen() => splashScreen;

  static List<GetPage> routes = [
    GetPage(name: splashScreen, page: () => const SplashScreen()),
    GetPage(name: addBookingDetails1Screen, page: () => const AddBookingDetailsScreen1()),
    GetPage(name: addBookingDetails2Screen, page: () => const AddBookingDetailsScreen2()),
    GetPage(name: bookingConfirmationScreen, page: () => const BookingConfirmationScreen()),
    GetPage(name: editProfileScreen, page: () => const EditProfileScreen()),
    GetPage(name: changePasswordScreen, page: () => const ChangePasswordScreen()),
    GetPage(name: myBookingsScreen, page: () =>  MyBookingsScreen()),
    GetPage(name: bookingDetailsScreen, page: () =>  BookingDetailsScreen()),
    GetPage(name: accountApprovedScreen, page: () =>  AccountApprovedScreen()),
    GetPage(name: setupProfileCleanerScreen, page: () =>  SetupProfileCleanerScreen()),
    GetPage(name: bottomNavBarCleanerScreen, page: () =>  BottomNavbarScreenCleaner()),
    GetPage(name: homeScreenCleanerScreen, page: () =>  HomeScreenCleanerScreen()),
    GetPage(name: bookingsScreenCleanerScreen, page: () =>  BookingsScreenCleaner()),
    GetPage(name: cleanerProfileScreen, page: () =>  CleanerProfileScreen()),
    GetPage(name: editCleanerProfileScreen, page: () =>  CleanerEditProfileScreen()),
    GetPage(name: changePasswordCleanerScreen, page: () =>  ChangePasswordCleanerScreen()),
    GetPage(name: bookingDetailsCleanerScreen, page: () =>  BookingDetailsCleanerScreen()),
  ];
}
