import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:testforassigments/third_Screen.dart';

class productdetails extends StatelessWidget {
  final String title;
  final double time;
  final String description;
  final String imageURL;
  final double cost;
  const productdetails({
    Key? key,
    required this.title,
    this.description = "",
    this.imageURL =
        "https://upload.wikimedia.org/wikipedia/commons/thumb/6/65/CellPhone.jpg/1280px-CellPhone.jpg",
    required this.time,
    required this.cost,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: GestureDetector(
        onTap: () {
          // Navigator.push(
          //     context, MaterialPageRoute(builder: (context) => third_screen()));
          Get.to(third_screen(
            title: title,
            cost: cost,
            time: time,
          ));
        },
        child: Container(
          width: 400,
          height: 100,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              elevation: 5.0,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SizedBox(
                      width: 80,
                      height: 80,
                      child: Image.network(imageURL),
                    ),
                  ),
                  Column(
                    children: [
                      Text(
                        "$title",
                        style: TextStyle(
                            fontSize: 22.0, fontWeight: FontWeight.w700),
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.timer_outlined,
                            size: 12.0,
                          ),
                          Text(
                            "$time" + "horas",
                            style: TextStyle(
                                fontWeight: FontWeight.w700, fontSize: 12.0),
                          )
                        ],
                      ),
                      Text("\$" + "$cost"),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
