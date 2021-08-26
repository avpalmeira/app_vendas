import 'package:flutter/material.dart';

class DashboardSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
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
          child: Text('Dashboard'), //temp
        ),
      ),
    );
  }
}
