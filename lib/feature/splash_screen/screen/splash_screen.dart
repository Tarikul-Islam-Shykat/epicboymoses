import 'package:epicboymoses/core/style/global_text_style.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

import '../../../core/const/app_colors.dart';
import '../controller/splash_screen_controller.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(SplashScreenController());
    var screenWidth = MediaQuery.of(context).size.width;
    return CupertinoPageScaffold(
      backgroundColor: AppColors.bgColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(""),
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Company",
                    style: globalTextStyle(
                      fontSize: 32,
                      color: Color(0xff4FD1C5),
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    "Name",
                    style: globalTextStyle(
                      fontSize: 32,
                      color: Color(0xff9FD354),
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Center(
                child: Image.asset(
                  "assets/images/splash_image.png",
                  width: screenWidth * .8,
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 40.0),
            child: SpinKitFadingCircle(
              color: AppColors.primaryColor,
              size: 50.0,
            ),
          ),
        ],
      ),
    );
  }
}
