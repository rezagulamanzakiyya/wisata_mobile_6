import 'package:flutter/material.dart';

class Mystatefulwidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _Mystatefulwidgetstate();
}

class _Mystatefulwidgetstate extends State<Mystatefulwidget> {
  var _hitungan = 0;

  void _tambahAngka(){
    setState(() {
      _hitungan++;
    });
  }




  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'program stateful widget',
      home: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('$_hitungan'),
          SizedBox(
            height: 10,
            width: 20,
          ),
          ElevatedButton(
            onPressed: () {
              _tambahAngka();
            },
            child: Text('BERAPA JUMLAH CEWE YANG DI CULIK'),
          )
        ],
      ),
    );
  }
}
