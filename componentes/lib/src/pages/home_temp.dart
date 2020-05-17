import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget {
  final opciones = [
    'uno',
    'dos',
    'tres',
    'cuatro',
    'cinco',
    'uno',
    'dos',
    'tres',
    'cuatro',
    'cinco',
    'uno',
    'dos',
    'tres',
    'cuatro',
    'cinco',
    'uno',
    'dos',
    'tres',
    'cuatro',
    'cinco',
    'uno',
    'dos',
    'tres',
    'cuatro',
    'cinco',
    'uno',
    'dos',
    'tres',
    'cuatro',
    'cinco',
    'uno',
    'dos',
    'tres',
    'cuatro',
    'cinco',
    'uno',
    'dos',
    'tres',
    'cuatro',
    'cinco'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Componentes Temp'),
      ),
      body: ListView(children: _getList()
          // <Widget>[
          //  ListTile(
          //    title: Text('Título Lista'),
          //  ),
          //  Divider(),
          //  ListTile(
          //    title: Text('Título Lista'),
          //  ),
          // ],
          ),
    );
  }

  List<Widget> _getList() {
    return opciones.map((opcion) {
      return Column(
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.accessibility),
            subtitle: Text('más texto'),
            title: Text(opcion),
            trailing: Icon(Icons.account_balance),
            onTap: () {},
          ),
          Divider()
        ],
      );
    }).toList();
    // List<Widget> lst = new List<Widget>();
    // for (var opcion in opciones) {
    //   final tempWidget = Column(
    //     children: <Widget>[
    //       ListTile(
    //         title: Text(opcion),
    //       ),
    //       Divider()
    //     ],
    //   );
    //   lst.add(tempWidget);
    // }
    // return lst;
  }
}
