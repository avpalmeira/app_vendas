import 'package:flutter/material.dart';
import 'package:app_vendas/resources/app_colors.dart';
import 'package:app_vendas/resources/app_images.dart';
import 'package:app_vendas/models/current_view_model.dart';
import 'package:provider/provider.dart';

class SignUp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var currentView = context.read<CurrentViewModel>();

    return ListView(
      children: <Widget>[
        Container(
          padding: const EdgeInsets.only(bottom: 60),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                AppImages.logo,
                height: 40,
                width: 40,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Text(
                  'CADASTRO',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
        Container(
          child: Form(
            child: Column(
              children: <Widget>[
                TextFormField(
                  decoration: const InputDecoration(hintText: 'Nome Completo'),
                ),
                TextFormField(
                  decoration: const InputDecoration(hintText: 'Telefone'),
                ),
                TextFormField(
                  decoration: const InputDecoration(hintText: 'E-mail'),
                ),
                TextFormField(
                  decoration: const InputDecoration(hintText: 'Senha'),
                ),
                TextFormField(
                  decoration:
                      const InputDecoration(hintText: 'Código da Empresa'),
                ),
                Container(
                  padding: const EdgeInsets.only(top: 40),
                  child: ElevatedButton(
                    onPressed: () {
                      currentView.selectIndex(2);
                    },
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(AppColors.primary),
                    ),
                    child: Text(
                      'FINALIZAR',
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
