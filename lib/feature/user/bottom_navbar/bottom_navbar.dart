import 'package:epicboymoses/core/const/app_colors.dart';
import 'package:epicboymoses/feature/user/home/view/user_home_view.dart';
import 'package:epicboymoses/feature/user/saved/screen/saved_screen.dart';
import 'package:epicboymoses/feature/user/search_screen/screen/search_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class UserBottomNavBar extends StatelessWidget {
  UserBottomNavBar({super.key});

  final RxInt selectedIndex = 0.obs;

  final List<String> icons = [
    'assets/icons/home.png',
    'assets/icons/search.png',
    'assets/icons/message.png',
    'assets/icons/saved.png',
    'assets/icons/profile.png',
  ];

  final List<String> labels = ['Home', 'Search', 'Message', 'Saved', 'Profile'];

  final List<Widget> pages = [
    UserHomeView(),
    SearchScreen(),
    Center(child: Text('Chat Page')),
    SavedScreen(),
    Center(child: Text('Profile Page')),
  ];

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Scaffold(
        body: pages[selectedIndex.value],
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.white,
          type: BottomNavigationBarType.fixed,
          currentIndex: selectedIndex.value,
          onTap: (index) => selectedIndex.value = index,
          selectedItemColor: AppColors.primaryColor,
          unselectedItemColor: Colors.grey,
          showSelectedLabels: true,
          showUnselectedLabels: true,
          selectedFontSize: 12,
          unselectedFontSize: 12,
          items: List.generate(icons.length, (index) {
            final isSelected = selectedIndex.value == index;
            return BottomNavigationBarItem(
              icon: Image.asset(
                icons[index],
                width: 24,
                height: 24,
                color: isSelected ? AppColors.primaryColor : Colors.grey,
              ),
              label: labels[index],
            );
          }),
        ),
      ),
    );
  }
}
