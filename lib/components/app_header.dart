import 'package:app_vendas/resources/app_images.dart';
import 'package:flutter/material.dart';

class AppHeader extends PreferredSize {
  AppHeader({Key key, this.title, this.height, this.statusBarHeight})
      : super(
            key: key,
            preferredSize: Size.fromHeight(height),
            child: Column(children: [
              SizedBox(height: statusBarHeight),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border(
                    bottom: BorderSide(
                      width: 2,
                      color: Colors.black54,
                    ),
                  ),
                ),
                padding: const EdgeInsets.symmetric(
                  vertical: 10,
                  horizontal: 30,
                ),
                child: Row(
                  children: [
                    Image.asset(
                      AppImages.logo,
                      width: 35,
                      height: 35,
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
            ]));

  final String title;
  final double height;
  final double statusBarHeight;
}
