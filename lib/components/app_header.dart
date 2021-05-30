import 'package:app_vendas/resources/app_images.dart';
import 'package:flutter/material.dart';

class AppHeader extends PreferredSize {
  AppHeader({Key key, this.title, this.height, this.statusBarHeight})
      : super(
          key: key,
          preferredSize: Size.fromHeight(height),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border(
                bottom: BorderSide(
                  width: 1,
                  color: Colors.black54,
                ),
              ),
            ),
            padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
            child: Row(
              children: [
                Builder(
                  builder: (context) => IconButton(
                    icon: Image.asset(
                      AppImages.logo,
                      width: 35,
                      height: 35,
                    ),
                    onPressed: () => Scaffold.of(context).openDrawer(),
                  ),
                ),
                Expanded(
                  child: Center(
                    child: Text(
                      title,
                      style: TextStyle(
                        color: Colors.black54,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );

  final String title;
  final double height;
  final double statusBarHeight;
}
