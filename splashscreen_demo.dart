import 'dart:async';
import 'package:flutter/material.dart';
import 'package:listgrid/listgrid_demo.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState(){
    Timer(Duration(seconds: 5), () {Navigator.push(context,MaterialPageRoute(builder: (context)=>ListgridDemo()));});
   super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffffffff),
      body: Center(child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTk6xVr-WOgOVJRE9wH3KgCeqLEwjvs0XR-2A&usqp=CAU")),
    );
  }
}
