import 'package:app_vendas/layouts/default_layout.dart';
import 'package:app_vendas/models/current_view_model.dart';
// import 'package:app_vendas/pages/init_page.dart';
// import 'package:app_vendas/pages/login_page.dart';
// import 'package:app_vendas/pages/signup_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CurrentViewModel(),
      child: MaterialApp(
        title: 'App de Vendas',
        home: DefaultLayout(),
      ),
    );
  }
}
