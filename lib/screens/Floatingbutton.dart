import 'dart:ui';

import 'package:flutter/material.dart';

class Floatingbutton extends StatelessWidget {
  const Floatingbutton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
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
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
        backgroundColor: Color.fromARGB(255, 255, 180, 59),
        elevation: 10.0,
         shape: StadiumBorder(
        side: BorderSide(color: Colors.white),
        ),
      ),
      body: Center(
          child: Text("hello floatingbutton!")), // Centered the text widget

      bottomNavigationBar: BottomAppBar(
                shape: CircularNotchedRectangle(),
        color: Color.fromARGB(255, 254, 198, 44),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          mainAxisSize: MainAxisSize.max,
          children: [
      Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(Icons.home,
                   color: Colors.white,
                   ),
                   Text("Home",
                   style: TextStyle(color: Colors.white),),
                   
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(Icons.shopping_cart,
                   color: Colors.white,
                   ),
                   Text("Cart",
                   style: TextStyle(color: Colors.white),),
                   
                ],
              ),
            ),
          Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(Icons.favorite,
                   color: Colors.white,
                   ),
                   Text("Favorites",
                   style: TextStyle(color: Colors.white),),
                   
                ],
              ),
            ),
           Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(Icons.person,
                   color: Colors.white,
                   ),
                   Text("Profile",
                   style: TextStyle(color: Colors.white),),
                   
                ],
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
