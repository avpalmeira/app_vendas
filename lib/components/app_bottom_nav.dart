import 'package:app_vendas/resources/app_colors.dart';
import 'package:flutter/material.dart';

class AppBottomNav extends StatelessWidget {
  AppBottomNav({
    Key key,
    this.titleOptions,
    this.selectedIndex,
  });

  final List<String> titleOptions;
  final int selectedIndex;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border(
          top: BorderSide(
            width: 2,
            color: Colors.black54,
          ),
        ),
      ),
      child: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.bar_chart_outlined),
            label: titleOptions[0],
            backgroundColor: AppColors.primary,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: titleOptions[1],
            backgroundColor: AppColors.primary,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.star),
            label: titleOptions[2],
            backgroundColor: AppColors.primary,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart_outlined),
            label: titleOptions[3],
            backgroundColor: AppColors.primary,
          ),
        ],
        currentIndex: selectedIndex,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.black54,
      ),
    );
  }
}
