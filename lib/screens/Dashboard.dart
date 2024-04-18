import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 170, 174, 175),
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () {},
        ),
        title: Text("MyApp"),
        titleTextStyle: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 20,
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.sunny),
            onPressed: () {},
          ),
        ],
        elevation: 0,
        titleSpacing: -10.0,
        backgroundColor: Color.fromARGB(255, 192, 126, 69),
        foregroundColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(bottom: Radius.circular(20)),
        ),
      ),
      body: Container(
        width: 300.0,
        height: 250.0,
        padding: EdgeInsets.all(25.0),
        margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 50.0),
        alignment: Alignment.center,
        decoration: BoxDecoration(
            color: Colors.deepOrange,
            // borderRadius: BorderRadius.circular(200.0),
            shape: BoxShape.circle,
            border: Border.all(
                color: const Color.fromARGB(255, 255, 255, 255), width: 2.0),
            image: DecorationImage(
                image: NetworkImage(
                    'https://image.lexica.art/full_jpg/acf5676d-e1bb-47cf-8e64-b171543de0ec')),
            boxShadow: [
              BoxShadow(
                color: Colors.grey,
                blurRadius: 7,
                spreadRadius: 5,
                offset: Offset(4, 4),
              )
            ]),
      ),
    );
  }
}

int getRandomNum() {
  return Random().nextInt(100000);
}
