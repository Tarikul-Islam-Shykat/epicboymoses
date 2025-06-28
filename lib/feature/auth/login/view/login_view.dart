import 'package:epicboymoses/core/style/global_text_style.dart';
import 'package:flutter/material.dart';

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
          ],
        ),
      ),
    );
  }
}
