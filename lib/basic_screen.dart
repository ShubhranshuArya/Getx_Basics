import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_learning/second_screen.dart';

class BasicScreen extends StatelessWidget {
  const BasicScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "First Screen",
                style: TextStyle(
                  fontSize: 24,
                ),
              ),
              SizedBox(
                height: 40,
              ),
              ElevatedButton(
                onPressed: () {
                  Get.defaultDialog(
                      // customize the dialog box here.
                      );
                },
                child: Text("Dialog"),
              ),
              ElevatedButton(
                onPressed: () {
                  Get.snackbar(
                    "title",
                    "message",
                    // customize the snackbar here.
                  );
                },
                child: Text("SnackBar"),
              ),
              ElevatedButton(
                onPressed: () {
                  Get.bottomSheet(
                    Container(
                      height: 100,
                      color: Colors.red,
                    ),
                    // customize the bottomsheet here.
                  );
                },
                child: Text("Bottom Sheet"),
              ),
              ElevatedButton(
                onPressed: () async {
                  // off - to pop the top of stack and add
                  // offAll - to clear the stack and add
// This is direct navigation.
                  // Get.to(SecondScreen());

// In this direct navigation we're sending and receiving data.
                  // var data = await Get.to(
                  //   SecondScreen(),
                  //   arguments: "First Data",
                  // Animate the transition here.
                  // );
                  // print("data received - $data");

// This is navigation via named routes
                  Get.toNamed('/second');
                },
                child: Text("Next Screen"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
