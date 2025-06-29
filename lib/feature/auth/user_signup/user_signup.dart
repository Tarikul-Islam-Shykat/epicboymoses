import 'package:epicboymoses/core/const/app_colors.dart';
import 'package:epicboymoses/core/global_widegts/custom_button.dart';
import 'package:epicboymoses/core/global_widegts/custom_text_field.dart';
import 'package:epicboymoses/core/style/global_text_style.dart';
import 'package:epicboymoses/feature/auth/login/view/login_view.dart';
import 'package:epicboymoses/feature/auth/login/widget/privacy_text.dart';
import 'package:epicboymoses/feature/auth/user_signup/user_signup_otp_verification_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class UserSignup extends StatelessWidget {
  const UserSignup({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 18.0, right: 18.0, top: 60),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(child: Image.asset("assets/icons/logo.png", width: 80)),
            Text(
              "Create An Account",
              style: globalTextStyle(fontSize: 24, fontWeight: FontWeight.w600),
            ),
            Text(
              "Start your journey in playmate with fun,\ninteractive lessons now",
              textAlign: TextAlign.center,
              style: globalTextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: Colors.grey,
              ),
            ),
            const SizedBox(height: 20),
            CustomTextField(
              title: "Full Name",
              hitText: "Enter your full name",
              controller: TextEditingController(),
            ),
            const SizedBox(height: 20),
            CustomTextField(
              title: "Email",
              hitText: "Enter your email",
              controller: TextEditingController(),
            ),
            const SizedBox(height: 20),
            CustomTextField(
              controller: TextEditingController(),
              title: "Password",
              hitText: "Enter your password",
            ),

            Spacer(),
            CustomRichText(),
            const SizedBox(height: 20),
            CustomButton(
              title: "Sign Up",
              onPressed: () {
                Get.to(() => UserSignupOtpVerificationScreen());
              },
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Already have an account? ",
                  style: globalTextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: Colors.black,
                  ),
                ),
                InkWell(
                  onTap: () {
                    Get.offAll(() => LoginView());
                  },
                  child: Text(
                    "Log in",
                    style: globalTextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                      color: AppColors.primaryColor,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}
