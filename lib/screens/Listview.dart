import 'package:flutter/material.dart';

class Listview extends StatelessWidget {
  const Listview({super.key});

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
        margin: EdgeInsets.symmetric(horizontal: 10.0,vertical:5.0),
        child: ListView(
          children: [
            Container(
              margin: EdgeInsets.only(bottom: 7.0), // Set the desired margin
              child: ListTile(
                leading: Icon(Icons.alarm_on_sharp),
                title: Text("Alarm"),
                subtitle: Text("Snoozes in every 5 minutes."),
                trailing: Icon(Icons.add_alarm_outlined),
                shape: RoundedRectangleBorder(
                  side: BorderSide(color: Colors.black, width: 1),
                  borderRadius: BorderRadius.circular(5),
                ),
                tileColor: Colors.grey,
                onTap: () {},
              ),
            ),
             Container(
              margin: EdgeInsets.only(bottom: 7.0), // Set the desired margin
              child: ListTile(
                leading: Icon(Icons.alarm_on_sharp),
                title: Text("Alarm"),
                subtitle: Text("Snoozes in every 5 minutes."),
                trailing: Icon(Icons.add_alarm_outlined),
                shape: RoundedRectangleBorder(
                  side: BorderSide(color: Colors.black, width: 1),
                  borderRadius: BorderRadius.circular(5),
                ),
                tileColor: Colors.grey,
                onTap: () {},
              ),
            ),
              Container(
              margin: EdgeInsets.only(bottom: 7.0), // Set the desired margin
              child: ListTile(
                leading: Icon(Icons.alarm_on_sharp),
                title: Text("Alarm"),
                subtitle: Text("Snoozes in every 5 minutes."),
                trailing: Icon(Icons.add_alarm_outlined),
                shape: RoundedRectangleBorder(
                  side: BorderSide(color: Colors.black, width: 1),
                  borderRadius: BorderRadius.circular(5),
                ),
                tileColor: Colors.grey,
                onTap: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
