import 'package:app_vendas/components/app_bottom_nav.dart';
import 'package:app_vendas/components/app_header.dart';
import 'package:app_vendas/components/app_sidebar.dart';
import 'package:app_vendas/resources/app_colors.dart';
import 'package:app_vendas/sections/clientes_section.dart';
import 'package:app_vendas/sections/dashboard_section.dart';
import 'package:app_vendas/sections/pedidos_section.dart';
import 'package:app_vendas/sections/produtos_section.dart';
import 'package:flutter/material.dart';

class DefaultLayout extends StatefulWidget {
  @override
  _DefaultLayoutState createState() => _DefaultLayoutState();
}

class _DefaultLayoutState extends State<DefaultLayout> {
  int _selectedIndex = 0;

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

  /* void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  } */

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppHeader(
        title: _titleOptions.elementAt(_selectedIndex),
        height: 60,
        statusBarHeight: 20, //kToolbarHeight
      ),
      drawer: AppSidebar(),
      backgroundColor: AppColors.background,
      body: _widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: AppBottomNav(
        titleOptions: _titleOptions,
        selectedIndex: _selectedIndex,
      ),
    );
  }
}
