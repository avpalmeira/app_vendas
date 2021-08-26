import 'package:app_vendas/components/app_bottom_nav.dart';
import 'package:app_vendas/components/app_header.dart';
import 'package:app_vendas/components/app_sidebar.dart';
import 'package:app_vendas/models/current_view_model.dart';
import 'package:app_vendas/resources/app_colors.dart';
import 'package:app_vendas/sections/main/clientes_section.dart';
import 'package:app_vendas/sections/main/dashboard_section.dart';
import 'package:app_vendas/sections/main/pedidos_section.dart';
import 'package:app_vendas/sections/main/produtos_section.dart';
import 'package:provider/provider.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  static List<Widget> _widgetOptions = <Widget>[
    DashboardSection(),
    ClientesSection(),
    PedidosSection(),
    ProdutosSection(),
  ];

  static List<String> _titleOptions = [
    'Dashboard',
    'Clientes',
    'Pedidos',
    'Produtos',
  ];

  @override
  Widget build(BuildContext context) {
    return Consumer<CurrentViewModel>(
      builder: (context, currentView, child) => Scaffold(
        appBar: AppHeader(
          title: _titleOptions.elementAt(currentView.index),
          height: 60,
          statusBarHeight: 20, //kToolbarHeight
        ),
        drawer: AppSidebar(),
        backgroundColor: AppColors.background,
        body: _widgetOptions.elementAt(currentView.index),
        bottomNavigationBar: AppBottomNav(
          titleOptions: _titleOptions,
        ),
      ),
    );
  }
}
