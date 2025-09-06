import 'package:epicboymoses/core/const/app_colors.dart';
import 'package:epicboymoses/feature/admin_flow/bottom_navbar_admin/controller/bottom_navbar_admin_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BottomNavbarAdmin extends StatelessWidget {
  const BottomNavbarAdmin({super.key});

  @override
  Widget build(BuildContext context) {
    BottomNavbarAdminController controller = Get.put(BottomNavbarAdminController());
     return  Obx(
       () {
        return Scaffold(
          body: controller.pages[controller.selectedIndex.value],
           bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.white,
          type: BottomNavigationBarType.fixed,
          currentIndex: controller.selectedIndex.value,
          onTap: (index) => controller.selectedIndex.value = index,
          selectedItemColor: AppColors.primaryColor,
          unselectedItemColor: Colors.grey,
          showSelectedLabels: true,
          showUnselectedLabels: true,
          selectedFontSize: 12,
          unselectedFontSize: 12,
          items: List.generate(controller.icons.length, (index) {
            final isSelected = controller.selectedIndex.value == index;
            return BottomNavigationBarItem(
              icon: Image.asset(
                controller.icons[index],
                width: 24,
                height: 24,
                color: isSelected ? AppColors.primaryColor : Colors.grey,
              ),
              label: controller.labels[index],
            );
          }),
        ),
        );
      }
    );
  }
}