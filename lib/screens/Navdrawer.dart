import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Navdrawer extends StatelessWidget {
  const Navdrawer({super.key});

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
      drawer: Drawer(
        elevation: 140.0,
        child: ListView(
          children: [
            // DrawerHeader(
            //   padding: EdgeInsets.all(0),
            //   child: Container(
            //     color: Color.fromARGB(255, 255, 183, 48),
            //     child: Column(
            //       children: [
            //         Text(
            //           "MENU LIST",
            //           style: TextStyle(
            //             fontWeight: FontWeight.bold,
            //             color: Colors.white,
            //           ),
            //         ),
            //       ],
            //     ),
            //   ),
            // ),
            UserAccountsDrawerHeader(
              accountName: Text("Bob Marley"),
              accountEmail: Text("bob@gmail.com"),
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage("images/mustang2.jpg"),
              ),
            ),

            ListTile(
              leading: Icon(Icons.home),
              title: Text("Home"),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text("Profile"),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.help),
              title: Text("Help"),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.call_rounded),
              title: Text("contact"),
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
