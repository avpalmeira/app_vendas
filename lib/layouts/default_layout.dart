import 'package:app_vendas/core/app_colors.dart';
import 'package:app_vendas/core/app_images.dart';
import 'package:flutter/material.dart';

class DefaultLayout extends StatefulWidget {
  @override
  _DefaultLayoutState createState() => _DefaultLayoutState();
}

class _DefaultLayoutState extends State<DefaultLayout> {
  int _selectedIndex = 0;
  static List<Widget> _widgetOptions = <Widget>[
    // Dashboard
    Padding(
      padding: const EdgeInsets.all(30),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(
            width: 2,
            color: Colors.black54,
          ),
        ),
        child: Center(
          child: Text(_titleOptions[0]), //temp
        ),
      ),
    ),
    // Clientes
    Container(
      child: Center(
        child: Text(_titleOptions[1]), //temp
      ),
    ),
    // Pedidos
    Container(
      child: Center(
        child: Text(_titleOptions[2]), //temp
      ),
    ),
    // Produtos
    Container(
      child: Center(
        child: Text(_titleOptions[3]), //temp
      ),
    ),
  ];

  static List<String> _titleOptions = [
    'Dashboard',
    'Clientes',
    'Pedidos',
    'Produtos',
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(10),
          child: Image.asset(AppImages.logo),
        ),
        title: Text(
          _titleOptions.elementAt(_selectedIndex),
          style: TextStyle(
            color: Colors.black54,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        shadowColor: Colors.black54,
      ),
      backgroundColor: AppColors.background,
      body: _widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          border: Border(
            top: BorderSide(
              width: 2,
              color: Colors.black54,
            ),
          ),
        ),
        child: BottomNavigationBar(
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.bar_chart_outlined),
              label: _titleOptions[0],
              backgroundColor: AppColors.primary,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.business),
              label: _titleOptions[1],
              backgroundColor: AppColors.primary,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.star),
              label: _titleOptions[2],
              backgroundColor: AppColors.primary,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart_outlined),
              label: _titleOptions[3],
              backgroundColor: AppColors.primary,
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.black54,
          onTap: _onItemTapped,
        ),
      ),
    );
  }
}
