import 'package:epicboymoses/core/const/app_colors.dart';
import 'package:epicboymoses/core/global_widegts/custom_button.dart';
import 'package:epicboymoses/core/global_widegts/custom_text_field.dart';
import 'package:epicboymoses/core/style/global_text_style.dart';
import 'package:epicboymoses/feature/auth/forget_pasword/view/forgot_pasword.dart';
import 'package:epicboymoses/feature/auth/login/widget/privacy_text.dart';
import 'package:epicboymoses/feature/auth/select_role/view/select_role_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

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
              "Sign In Account",
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
            Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                onPressed: () {
                  Get.to(() => ForgotPasword());
                },
                child: Text(
                  "Forgot Password?",
                  style: globalTextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: AppColors.primaryColor,
                  ),
                ),
              ),
            ),
            Spacer(),
            CustomRichText(),
            const SizedBox(height: 20),
            CustomButton(title: "Sign In", onPressed: () {}),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Don't have an account? ",
                  style: globalTextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: Colors.black,
                  ),
                ),
                InkWell(
                  onTap: () {
                    Get.to(() => SelectRoleScreen());
                  },
                  child: Text(
                    "Sign Up",
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
