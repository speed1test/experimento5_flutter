import 'package:experimento5_flutter/activity/home.dart';
import 'package:flutter/material.dart';

class ThirdScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Pantalla #2')),
      body: Center(child: Text('Pantallota')),
      drawer: HomeScreen().buildDrawer(context),
    );
  }
}