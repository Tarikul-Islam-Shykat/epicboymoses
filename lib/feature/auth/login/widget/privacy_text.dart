import 'package:epicboymoses/core/const/app_colors.dart';
import 'package:epicboymoses/core/style/global_text_style.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class CustomRichText extends StatelessWidget {
  const CustomRichText({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(width: 10),
        Expanded(
          child: RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
              children: <TextSpan>[
                TextSpan(
                  text:
                      'By continuing, you confirm that you are 18 years or older and agree to our ',
                  style: globalTextStyle(
                    fontSize: 11,
                    color: Colors.black,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                TextSpan(
                  text: 'Terms of Service',
                  style: TextStyle(
                    fontSize: 11,
                    color: AppColors.primaryColor,
                    fontWeight: FontWeight.w400,
                    decoration: TextDecoration.underline,
                  ),
                  recognizer: TapGestureRecognizer()
                    ..onTap = () {
                      //Get.to(() => TermsCondition());
                    },
                ),
                TextSpan(
                  text: ' and ',
                  style: globalTextStyle(
                    fontSize: 11,
                    color: Colors.black,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                TextSpan(
                  text: 'Privacy Policy',
                  style: TextStyle(
                    fontSize: 11,
                    color: AppColors.primaryColor,
                    fontWeight: FontWeight.w400,
                    decoration: TextDecoration.underline,
                  ),
                  recognizer: TapGestureRecognizer()
                    ..onTap = () {
                      //Get.to(() => PrivacyPolicyView());
                    },
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
