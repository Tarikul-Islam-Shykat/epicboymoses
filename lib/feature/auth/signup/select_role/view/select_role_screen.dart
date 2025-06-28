import 'package:epicboymoses/core/const/app_colors.dart';
import 'package:epicboymoses/core/global_widegts/custom_button.dart';
import 'package:epicboymoses/core/style/global_text_style.dart';
import 'package:epicboymoses/feature/auth/signup/select_role/controller/selct_role_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SelectRoleScreen extends StatelessWidget {
  SelectRoleScreen({super.key});

  final controller = Get.put(SelctRoleController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 18.0, right: 18.0, top: 60.0),
        child: Column(
          children: [
            Center(child: Image.asset("assets/icons/logo.png", width: 80)),
            Text(
              "Select Role",
              style: globalTextStyle(fontSize: 24, fontWeight: FontWeight.w600),
            ),
            Text(
              "Choose your role to continue",
              textAlign: TextAlign.center,
              style: globalTextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: Colors.grey,
              ),
            ),
            const SizedBox(height: 20),
            Obx(
              () => InkWell(
                onTap: () => controller.selectRole("User"),
                child: Container(
                  width: double.infinity,
                  height: 88,
                  decoration: BoxDecoration(
                    color: controller.selectedRole.value == "User"
                        ? AppColors.primaryColor.withValues(alpha: 0.05)
                        : Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(
                      color: controller.selectedRole.value == "User"
                          ? AppColors.primaryColor
                          : Colors.white,
                    ),
                  ),
                  child: Center(
                    child: Text(
                      "User",
                      style: globalTextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: controller.selectedRole.value == "User"
                            ? AppColors.primaryColor
                            : Colors.black,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10),
            Obx(
              () => InkWell(
                onTap: () => controller.selectRole("Cleaner"),
                child: Container(
                  width: double.infinity,
                  height: 88,
                  decoration: BoxDecoration(
                    color: controller.selectedRole.value == "Cleaner"
                        ? AppColors.primaryColor.withValues(alpha: 0.05)
                        : Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(
                      color: controller.selectedRole.value == "Cleaner"
                          ? AppColors.primaryColor
                          : Colors.white,
                    ),
                  ),
                  child: Center(
                    child: Text(
                      "Cleaner",
                      style: globalTextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: controller.selectedRole.value == "Cleaner"
                            ? AppColors.primaryColor
                            : Colors.black,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Spacer(),
            CustomButton(
              title: "Next",
              onPressed: () {
                controller.nextPage();
              },
            ),
            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}
