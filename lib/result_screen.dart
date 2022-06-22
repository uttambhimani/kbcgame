import 'package:flutter/material.dart';

class Result_Screen extends StatefulWidget {
  const Result_Screen({Key? key}) : super(key: key);

  @override
  State<Result_Screen> createState() => _Result_ScreenState();
}

class _Result_ScreenState extends State<Result_Screen> {
  @override
  Widget build(BuildContext context) {
    dynamic data= ModalRoute.of(context)!.settings.arguments ;
    return SafeArea(
      child: Scaffold(
        body: Container(
          child:Text("${data}"),
        ),
      ),
    );
  }
}
