import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final styleText = new TextStyle(fontSize: 25);
  final count = 10;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Acá vamos'),
        centerTitle: true,
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'Número de clicks',
            style: styleText,
          ),
          Text(
            '$count',
            style: styleText,
          )
        ],
      )),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton:
          FloatingActionButton(child: Icon(Icons.add), onPressed: () {
            // count++;
          }),
    );
  }
}
