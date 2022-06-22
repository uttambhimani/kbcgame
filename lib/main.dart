import 'package:flutter/material.dart';
import 'package:qiz/qiz_screen.dart';
import 'package:qiz/result_screen.dart';
void main(){
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/':(context)=>home(),
        'rt':(context)=>Result_Screen(),
      },
    ),
  );
}