import 'package:app_vendas/core/app_colors.dart';
import 'package:app_vendas/core/app_images.dart';
import 'package:flutter/material.dart';

class SignupPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 55),
        decoration: BoxDecoration(
          color: AppColors.primary,
        ),
        child: Center(
          child: Container(
            padding: const EdgeInsets.all(15),
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(
                color: Colors.black54,
              ),
            ),
            child: ListView(
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
                          decoration:
                              const InputDecoration(hintText: 'Nome Completo'),
                        ),
                        TextFormField(
                          decoration:
                              const InputDecoration(hintText: 'Telefone'),
                        ),
                        TextFormField(
                          decoration: const InputDecoration(hintText: 'E-mail'),
                        ),
                        TextFormField(
                          decoration: const InputDecoration(hintText: 'Senha'),
                        ),
                        TextFormField(
                          decoration: const InputDecoration(
                              hintText: 'Código da Empresa'),
                        ),
                        Container(
                          padding: const EdgeInsets.only(top: 40),
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all<Color>(
                                  AppColors.primary),
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
            ),
          ),
        ),
      ),
    );
  }
}
