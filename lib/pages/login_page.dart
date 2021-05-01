import 'package:app_vendas/core/app_colors.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
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
            padding: const EdgeInsets.all(25),
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
                  child: Image.asset('assets/images/logo.jpg'),
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
                          decoration: const InputDecoration(
                            hintText: 'E-mail'
                          ),
                        ),
                        TextFormField(
                          decoration: const InputDecoration(
                              hintText: 'Senha'
                          ),
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
                            onPressed: () {},
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all<Color>(AppColors.primary),
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
            ),
          ),
        ),
      ),
    );
  }
}
