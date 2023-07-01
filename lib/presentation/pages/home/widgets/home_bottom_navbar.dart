import 'package:flutter/material.dart';

import '../../../../app/app_colors.dart';

class HomeBottomBar extends StatelessWidget {
  const HomeBottomBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        currentIndex: 2,
        enableFeedback: false,
        unselectedItemColor: AppColors.greyShade400,
        selectedItemColor: AppColors.primaryColor,
        showUnselectedLabels: true,
        showSelectedLabels: true,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Explore'),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart), label: 'Explore'),
          BottomNavigationBarItem(
              icon: Icon(Icons.local_offer), label: 'Offer'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Account'),
        ]);
  }
}
