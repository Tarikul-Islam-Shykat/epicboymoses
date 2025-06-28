import 'package:flutter/material.dart';

class SelectRoleScreen extends StatelessWidget {
  const SelectRoleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 50, left: 20, right: 20),
            child: Text(
              "Select Your Role",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}
