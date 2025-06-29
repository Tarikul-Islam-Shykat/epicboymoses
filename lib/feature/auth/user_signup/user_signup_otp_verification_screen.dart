import 'package:epicboymoses/core/global_widegts/custom_button.dart';
import 'package:epicboymoses/core/style/global_text_style.dart';
import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';

class UserSignupOtpVerificationScreen extends StatelessWidget {
  const UserSignupOtpVerificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 60),
            Image.asset("assets/icons/logo.png", height: 55),
            SizedBox(height: 5),
            Text(
              "Apply Reset Code",
              style: globalTextStyle(fontSize: 24, fontWeight: FontWeight.w600),
            ),
            Text(
              "Please check your email. Give correct\nreset 5 digit code here.",
              textAlign: TextAlign.center,
              style: globalTextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: Colors.grey,
              ),
            ),
            SizedBox(height: 20),
            Pinput(
              length: 5,
              defaultPinTheme: PinTheme(
                width: 56,
                height: 56,
                textStyle: globalTextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
                decoration: BoxDecoration(
                  color: Color(0xff1E1E24).withValues(alpha: 0.04),
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              focusedPinTheme: PinTheme(
                width: 56,
                height: 56,
                textStyle: globalTextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
                decoration: BoxDecoration(
                  color: Color(0xff1E1E24).withValues(alpha: 0.04),
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              submittedPinTheme: PinTheme(
                width: 56,
                height: 56,
                textStyle: globalTextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
                decoration: BoxDecoration(
                  color: Colors.white.withValues(alpha: 0.04),
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              showCursor: true,
              onCompleted: (value) {},
            ),

            Spacer(),

            CustomButton(onPressed: () {}, title: 'Apply Code'),
            SizedBox(height: 20),
            CustomButton(
              title: "Send Email Again",
              onPressed: () {},
              backgroundColor: Colors.grey.shade300,
              textStyle: globalTextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w700,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 40),
          ],
        ),
      ),
    );
  }
}
