import 'package:flutter/material.dart';

class InformationsWidget extends StatelessWidget {
  const InformationsWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      mainAxisSpacing: 10,
      crossAxisSpacing: 10,
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      childAspectRatio: 4.0,
      children: <Widget>[
        _rowInformation(
          title: 'Ano',
          content: '2019/2020',
        ),
        _rowInformation(
          title: 'Km',
          content: '30.200',
        ),
        _rowInformation(
          title: 'Câmbio',
          content: 'Automático',
        ),
        _rowInformation(
          title: 'Carroceria',
          content: 'Hatchback',
        ),
        _rowInformation(
          title: 'Cor',
          content: 'Grafite',
        ),
        _rowInformation(
          title: 'Combustivel',
          content: 'Alcool e Gasolina',
        ),
        _rowInformation(
          title: 'Final da placa',
          content: '9',
        ),
        _rowInformation(
          title: 'Único dono',
          content: 'Sim',
        ),
        _rowInformation(
          title: 'IPVA pago',
          content: 'Sim',
        ),
        _rowInformation(
          title: 'Licenciado',
          content: 'Sim',
        ),
        _rowInformation(
          title: 'Garantia de fábrica',
          content: 'Sim',
        ),
      ],
    );
  }

  Column _rowInformation({
    String title,
    String content,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          title,
          style: TextStyle(
            fontSize: 14,
          ),
        ),
        SizedBox(height: 2),
        Text(
          content,
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        ),
      ],
    );
  }
}
