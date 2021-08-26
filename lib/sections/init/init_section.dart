import 'package:flutter/material.dart';
import 'package:app_vendas/resources/app_colors.dart';
import 'package:app_vendas/resources/app_images.dart';
import 'package:app_vendas/models/current_view_model.dart';
import 'package:provider/provider.dart';

class Init extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var currentView = context.read<CurrentViewModel>();

    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Image.asset(AppImages.fullLogo),
        Text(
          'App de Vendas',
          style: TextStyle(fontSize: 20),
        ),
        Container(
          child: Column(
            children: <Widget>[
              ElevatedButton(
                onPressed: () {
                  currentView.selectIndex(1);
                },
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(AppColors.primary),
                ),
                child: Text(
                  'SE CADASTRAR',
                  style: TextStyle(fontSize: 16),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  currentView.selectIndex(2);
                },
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(AppColors.primary),
                ),
                child: Text(
                  'FAZER LOGIN',
                  style: TextStyle(fontSize: 16),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
