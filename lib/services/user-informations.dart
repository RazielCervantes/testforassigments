import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Users extends StatefulWidget {
  const Users({Key? key}) : super(key: key);

  @override
  State<Users> createState() => _usersState();
}

class _usersState extends State<Users> {
  getUserInfo() async {
    try {
      var response = await http.get(
          Uri.parse("https://jsonplaceholder.typicode.com/posts"),
          headers: {
            'Content-type': "application/json; charset=UTF-8",
            'Accept': 'application/json'
          });
      var data = jsonDecode(response.body);
      print(data);
      return data;
    } catch (err) {
      print(err);
      return "Error";
    }
  }

  @override
  void initState() {
    getUserInfo();
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
