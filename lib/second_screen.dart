import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Second Screen",
                style: TextStyle(
                  fontSize: 24,
                ),
              ),
              Text(
                "Data received - ${Get.arguments}",
                style: TextStyle(
                  fontSize: 24,
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  // Simple clause for poping the top of stack
                  Get.back(result: "screen 2");
                },
                child: Text("Go to First Screen"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
