import 'package:flutter/material.dart';
import 'package:get/get.dart';

class third_screen extends StatelessWidget {
  final String title;
  final double time;
  final double cost;
  third_screen(
      {Key? key, required this.title, required this.time, required this.cost})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.red,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "$title",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.w800),
              ),
              Text("$cost"),
              Text("$time"),
              Padding(
                padding: const EdgeInsets.all(22),
                child: ElevatedButton(
                  child: const Text("go to the previous screen"),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
