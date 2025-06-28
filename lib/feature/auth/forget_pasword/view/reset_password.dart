import 'package:epicboymoses/core/global_widegts/custom_button.dart';
import 'package:epicboymoses/core/global_widegts/custom_text_field.dart';
import 'package:epicboymoses/core/style/global_text_style.dart';
import 'package:flutter/material.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key});

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
              "Reset Password",
              style: globalTextStyle(fontSize: 24, fontWeight: FontWeight.w600),
            ),
            Text(
              "Make a new password for your account.",
              textAlign: TextAlign.center,
              style: globalTextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: Colors.grey,
              ),
            ),
            const SizedBox(height: 20),
            CustomTextField(
              title: "New Password",
              hitText: "Enter your new password",
              controller: TextEditingController(),
            ),
            const SizedBox(height: 20),
            CustomTextField(
              title: "Confirm Password",
              hitText: "Enter your Confirm password",
              controller: TextEditingController(),
            ),

            Spacer(),
            CustomButton(title: "Send Email", onPressed: () {}),

            SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}
