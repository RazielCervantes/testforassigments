import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:testforassigments/product.dart';
import 'package:testforassigments/third_Screen.dart';

class secondScreen extends StatelessWidget {
  const secondScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(),
        backgroundColor: Colors.lime,
        body: Center(
            child: Column(
          children: [
            productdetails(title: "samsung", time: 2.0, cost: 2000.0),
            productdetails(title: "iphone", time: 15, cost: 300.0),
            productdetails(title: "nokia ", time: 30, cost: 43.00),
          ],
        )),
      ),
    );
  }
}
