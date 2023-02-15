import 'package:flutter/material.dart';
import 'package:listgrid/splashscreen_demo.dart';
import 'package:sizer/sizer.dart';

import 'listgrid_demo.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) => Sizer(builder: (context,orientation,deviceType) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SplashScreen(),
      // routes: {
      //   '/ListgridDemo':(context)=>ListgridDemo(),
      // },
    );
   }

  );


}
