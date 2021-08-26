import 'package:flutter/material.dart';
import 'package:app_vendas/pages/main_page.dart';
import 'package:app_vendas/resources/app_colors.dart';
import 'package:app_vendas/resources/app_images.dart';
import 'package:app_vendas/models/current_view_model.dart';
import 'package:provider/provider.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var currentView = context.read<CurrentViewModel>();

    return ListView(
      padding: const EdgeInsets.all(0),
      children: <Widget>[
        Container(
          padding: const EdgeInsets.only(bottom: 60),
          child: Image.asset(AppImages.fullLogo),
        ),
        Container(
          padding: const EdgeInsets.only(bottom: 60),
          alignment: Alignment.center,
          child: Text(
            'LOGIN',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Container(
          child: Form(
            child: Column(
              children: <Widget>[
                TextFormField(
                  decoration: const InputDecoration(hintText: 'E-mail'),
                ),
                TextFormField(
                  decoration: const InputDecoration(hintText: 'Senha'),
                ),
                Container(
                  padding: const EdgeInsets.only(top: 30),
                  width: 280,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 8),
                        child: Text(
                          'Esqueceu a senha?',
                          style: TextStyle(
                            color: AppColors.primary,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      ),
                      Text(
                        'Não tem conta? Cadastre-se',
                        style: TextStyle(
                          color: AppColors.primary,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(top: 40),
                  child: ElevatedButton(
                    onPressed: () {
                      currentView.selectIndex(0);
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => MainPage()),
                      );
                    },
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(AppColors.primary),
                    ),
                    child: Text(
                      'ENTRAR',
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
