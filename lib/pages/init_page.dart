import 'package:app_vendas/resources/app_colors.dart';
import 'package:app_vendas/sections/init/init_section.dart';
import 'package:app_vendas/sections/init/login_section.dart';
import 'package:app_vendas/sections/init/signup_section.dart';
import 'package:app_vendas/models/current_view_model.dart';
import 'package:provider/provider.dart';
import 'package:flutter/material.dart';

class InitPage extends StatefulWidget {
  @override
  _InitPageState createState() => _InitPageState();
}

class _InitPageState extends State<InitPage> {
  static List<Widget> _widgetOptions = <Widget>[
    Init(),
    SignUp(),
    Login(),
    Container(),
  ];

  @override
  Widget build(BuildContext context) {
    return Consumer<CurrentViewModel>(
      builder: (context, currentView, child) => Scaffold(
        body: Container(
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 55),
          decoration: BoxDecoration(
            color: AppColors.primary,
          ),
          child: Center(
            child: Container(
              padding: const EdgeInsets.all(40),
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(
                  color: Colors.black54,
                ),
              ),
              child: _widgetOptions.elementAt(currentView.index),
            ),
          ),
        ),
      ),
    );
  }
}
