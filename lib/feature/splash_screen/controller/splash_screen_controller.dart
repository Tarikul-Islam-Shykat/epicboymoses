import 'package:epicboymoses/feature/auth/login/view/login_view.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashScreenController extends GetxController {
  var userImage = "".obs;
  var firstname = ''.obs;
  var lastName = ''.obs;
  void checkIsLogin() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String token = prefs.getString("token") ?? "";
    if (kDebugMode) {
      print("token1$token");
    }
    Future.delayed(const Duration(seconds: 1), () {
      if (kDebugMode) {
        print("token2$token");
      }
      if (token.isNotEmpty) {
        Get.offAll(() => LoginView());
      } else {
        Get.offAll(() => LoginView());
      }
    });

    //
    // else {
    //   try {
    //     // Make the GET request
    //     final response = await http.get(
    //       Uri.parse('${Urls.baseUrl}/auth/get-me'),
    //       headers: {"Authorization": token},
    //     );

    //     if (kDebugMode) {
    //       print(response.body);
    //     }
    //     if (response.statusCode == 201) {
    //       var data = jsonDecode(response.body);
    //       if (data['data']['isCompleted'] == true) {
    //         userImage.value = data['data']['profileImage'] ?? "";
    //         firstname.value = data['data']['firstName'];
    //         lastName.value = data['data']['lastName'];

    //         //Get.offAll(() => NavBarView());
    //       } else {
    //         Get.offAll(() => ProfileSetupScreen());
    //       }
    //     } else {
    //       if (kDebugMode) {
    //         print('Request failed with status: ${response.statusCode}');
    //       }
    //       Get.offAll(() => LoginScreen());
    //     }
    //   } catch (e) {
    //     // Handle any errors that occur during the request
    //     if (kDebugMode) {
    //       print('Error: $e');
    //     }
    //   }
    // }
  }

  @override
  void onInit() {
    super.onInit();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    checkIsLogin();
  }
}
