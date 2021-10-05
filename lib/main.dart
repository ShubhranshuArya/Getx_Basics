import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_learning/basic_screen.dart';
import 'package:getx_learning/second_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Material App - only for statemanagement with getx
    // GetMaterialApp - route management, snackbar, dependency injection
    return GetMaterialApp(
      // Use various features of get like unkownRoute, defaultTransition etc.
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // This is for name route navigation.
      initialRoute: '/',
      getPages: [
        GetPage(name: '/', page: () => BasicScreen()),
        GetPage(name: 'second', page: () => SecondScreen()),
      ],
      home: BasicScreen(),
    );
  }
}
