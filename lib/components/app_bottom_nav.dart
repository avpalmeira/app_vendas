import 'package:app_vendas/models/current_view_model.dart';
import 'package:app_vendas/resources/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AppBottomNav extends StatelessWidget {
  AppBottomNav({
    Key key,
    this.titleOptions,
  });

  final List<String> titleOptions;

  @override
  Widget build(BuildContext context) {
    var currentView = context.read<CurrentViewModel>();

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
        onTap: (int index) {
          currentView.selectIndex(index);
        },
        currentIndex: currentView.index,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.black54,
      ),
    );
  }
}
