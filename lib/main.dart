import 'package:experimento5_flutter/activity/home.dart';
import 'package:flutter/material.dart';
import 'package:experimento5_flutter/activity/loading.dart';
import 'package:experimento5_flutter/activity/second.dart';
import 'package:experimento5_flutter/activity/third.dart';

void main() {
  runApp(MaterialApp(
    routes: {
      "/" : (context) => Loading(),
      "/home" : (context) => HomeScreen(),
      "/second" : (context) => SecondScreen(),
      "/third" : (context) => ThirdScreen(),
    },
  ));
}