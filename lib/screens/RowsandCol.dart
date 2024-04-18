import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class RowsandCol extends StatelessWidget {
  const RowsandCol({Key? key}) : super(key: key); // corrected super.key

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 170, 174, 175),
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () {},
        ),
        title: Text(
          "MyApp",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
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
        ), // Moved titleTextStyle inside Text widget as a style property
      ),
      body: Container(
        height:79.0,
        padding: EdgeInsets.all(10.0),
        margin: EdgeInsets.symmetric(horizontal: 7.0, vertical: 7.0),
        decoration: BoxDecoration(
          // color: Colors.white,
          border: Border.all(
            color: Color.fromARGB(255, 88, 88, 88), // Set the border color
            width: 2.0, // Set the border width
          ),
          borderRadius:
              BorderRadius.circular(12.0), // Set the border radius here
          boxShadow: [
            BoxShadow(
                color: const Color.fromARGB(255, 239, 240, 239),
                spreadRadius: 3)
          ], // Optional shadow
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              children: [
                Icon(
                  Icons.phone,
                  size: 35.0,
                ),
                Text("Phone")
              ],
            ),
             Column(
              children: [
                Icon(
                  Icons.access_alarm,
                  size: 35.0,
                ),
                Text("Alarm")
              ],
            ),
             Column(
              children: [
                Icon(
                  Icons.add_reaction,
                  size: 35.0,
                ),
                Text("Emojis")
              ],
            ),
             Column(
              children: [
                Icon(
                  Icons.home,
                  size: 35.0,
                ),
                Text("Home")
              ],
            ),
          ],
        ),
      ),
    );
  }
}
