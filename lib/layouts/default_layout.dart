import 'package:app_vendas/core/app_colors.dart';
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
          child: Text('Dashboard'),
        ),
      ),
    ),
    // Clientes
    Container(
      child: Center(
        child: Text('Clientes'),
      ),
    ),
    // Pedidos
    Container(
      child: Center(
        child: Text('Pedidos'),
      ),
    ),
    // Produtos
    Container(
      child: Center(
        child: Text('Produtos'),
      ),
    ),
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
        title: Text('App de vendas'),
        backgroundColor: AppColors.primary,
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
              label: 'Dashboard',
              backgroundColor: AppColors.primary,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.business),
              label: 'Clientes',
              backgroundColor: AppColors.primary,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.star),
              label: 'Pedidos',
              backgroundColor: AppColors.primary,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart_outlined),
              label: 'Produtos',
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
