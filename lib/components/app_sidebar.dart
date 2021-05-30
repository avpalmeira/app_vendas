import 'package:app_vendas/resources/app_colors.dart';
import 'package:flutter/material.dart';

class AppSidebar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          Container(
            height: 80,
            child: DrawerHeader(
              margin: EdgeInsets.zero,
              decoration: BoxDecoration(
                color: AppColors.primary,
              ),
              child: Text(
                'Menu',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          ListTile(
            title: Text('Sync'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text('Options'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
