import 'package:flutter/material.dart';
import 'package:testforassigments/product.dart';
import 'package:testforassigments/second_Screen.dart';
import 'package:testforassigments/services/user-informations.dart';
import 'package:get/get.dart';

class firstScreen extends StatelessWidget {
  const firstScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.orange,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "First Screen",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.w800),
              ),
              Padding(
                padding: const EdgeInsets.all(22),
                child: ElevatedButton(
                  child: const Text("go to another screen"),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => secondScreen()));
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
