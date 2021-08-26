import 'package:app_vendas/resources/app_colors.dart';
import 'package:flutter/material.dart';

class PedidosSection extends StatelessWidget {
  static const style = TextStyle(
    height: 2,
    fontSize: 16,
    fontWeight: FontWeight.bold,
  );

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          padding: EdgeInsets.all(25),
          height: 160,
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.black54,
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('05040 - Comercial Batista', style: style),
                  Text('Data do pedido: 22/02/2021', style: style),
                  Text('Valor: R\$ 2040,00', style: style),
                ],
              ),
              Container(
                decoration: BoxDecoration(color: Colors.purple),
                padding: EdgeInsets.all(3),
                child: Text(
                  'Não enviado',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                  ),
                ),
              )
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.all(25),
          height: 160,
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.black54,
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('05040 - Comercial Batista', style: style),
                  Text('Data do pedido: 22/02/2021', style: style),
                  Text('Valor: R\$ 2040,00', style: style),
                ],
              ),
              Container(
                decoration: BoxDecoration(color: AppColors.primary),
                padding: EdgeInsets.all(3),
                child: Text(
                  'Não enviado',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                  ),
                ),
              )
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.all(25),
          height: 160,
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.black54,
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('05040 - Comercial Batista', style: style),
                  Text('Data do pedido: 22/02/2021', style: style),
                  Text('Valor: R\$ 2040,00', style: style),
                ],
              ),
              Container(
                decoration: BoxDecoration(color: Colors.red),
                padding: EdgeInsets.all(3),
                child: Text(
                  'Não enviado',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                  ),
                ),
              )
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.all(25),
          height: 160,
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.black54,
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('05040 - Comercial Batista', style: style),
                  Text('Data do pedido: 22/02/2021', style: style),
                  Text('Valor: R\$ 2040,00', style: style),
                ],
              ),
              Container(
                decoration: BoxDecoration(color: Colors.purple),
                padding: EdgeInsets.all(3),
                child: Text(
                  'Não enviado',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                  ),
                ),
              )
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.all(25),
          height: 160,
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.black54,
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('05040 - Comercial Batista', style: style),
                  Text('Data do pedido: 22/02/2021', style: style),
                  Text('Valor: R\$ 2040,00', style: style),
                ],
              ),
              Container(
                decoration: BoxDecoration(color: Colors.purple),
                padding: EdgeInsets.all(3),
                child: Text(
                  'Não enviado',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.all(25),
          height: 160,
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.black54,
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('05040 - Comercial Batista', style: style),
                  Text('Data do pedido: 22/02/2021', style: style),
                  Text('Valor: R\$ 2040,00', style: style),
                ],
              ),
              Container(
                decoration: BoxDecoration(color: Colors.purple),
                padding: EdgeInsets.all(3),
                child: Text(
                  'Não enviado',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                  ),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
