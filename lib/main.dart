import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_learning/basic_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Material App - only for statemanagement with getx
    // GetMaterialApp - route management, snackbar, dependency injection
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: BasicScreen(),
    );
  }
}


