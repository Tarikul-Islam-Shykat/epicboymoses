import 'package:epicboymoses/core/global_widegts/custom_button.dart';
import 'package:epicboymoses/core/global_widegts/custom_text_field.dart';
import 'package:epicboymoses/core/style/global_text_style.dart';
import 'package:flutter/material.dart';

class CleanerSignup extends StatelessWidget {
  const CleanerSignup({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 18.0, right: 18.0, top: 60.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(25),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withValues(alpha: 0.05),
                        blurRadius: 10,
                        spreadRadius: 2,
                      ),
                    ],
                  ),
                  child: IconButton(
                    icon: const Icon(Icons.arrow_back_ios_new_rounded),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                ),
                Text(
                  "Let's Meet",
                  style: globalTextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(width: 30),
              ],
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    const SizedBox(height: 20),
                    CustomTextField(
                      title: "First Name",
                      hitText: "Enter your first name",
                      controller: TextEditingController(),
                    ),
                    const SizedBox(height: 10),

                    CustomTextField(
                      title: "Last Name",
                      hitText: "Enter your last name",
                      controller: TextEditingController(),
                    ),
                    const SizedBox(height: 10),
                    CustomTextField(
                      title: "Email",
                      hitText: "Enter your Email",
                      controller: TextEditingController(),
                    ),
                    const SizedBox(height: 10),
                    CustomTextField(
                      title: "Password",
                      hitText: "Enter your pasweord",
                      controller: TextEditingController(),
                    ),
                    const SizedBox(height: 10),
                    CustomTextField(
                      title: "Phone Number",
                      hitText: "Enter your phone number",
                      controller: TextEditingController(),
                    ),
                    const SizedBox(height: 10),
                    CustomTextField(
                      title: "Address",
                      hitText: "Enter your address",
                      controller: TextEditingController(),
                    ),
                    const SizedBox(height: 10),
                    CustomTextField(
                      title: "Date of Birth",
                      hitText: "Enter your date of birth",
                      controller: TextEditingController(),
                    ),
                    const SizedBox(height: 10),
                  ],
                ),
              ),
            ),
            CustomButton(title: "Next", onPressed: () {}),
            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}
