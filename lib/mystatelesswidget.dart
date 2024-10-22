import 'package:flutter/material.dart';

class Mystatelesswidget extends StatelessWidget {
  const Mystatelesswidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'program stateless widget',
      home: Scaffold(
        appBar: AppBar(
        title: Text('REZA GULAMAN ZAKIYYA'),
      ),
      body: Center(
        child: Text('5520122111'),
      )
      ),
      
    );
  }
}