import 'package:flutter/material.dart';

class CountPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _CountPageState();
  }
}

class _CountPageState extends State<CountPage> {
  final _styleText = new TextStyle(fontSize: 25);
  int _count = 11;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('StatefullWidget Man'),
          centerTitle: true,
        ),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Número de Clicks',
              style: _styleText,
            ),
            Text(
              '$_count',
              style: _styleText,
            )
          ],
        )),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: _crearBotones());
  }

  Widget _crearBotones() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        FloatingActionButton(child: Icon(Icons.restore), onPressed: _operar1),
        FloatingActionButton(
            child: Icon(Icons.arrow_drop_down_circle), onPressed: _operar2),
        FloatingActionButton(
            child: Icon(Icons.arrow_upward), onPressed: _operar3)
      ],
    );
  }

  void _operar1() => setState(() => _count = 0);
  void _operar2() => setState(() => _count--);
  void _operar3() => setState(() => _count++);
}
