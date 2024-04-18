import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
  body: Center(
    child: ElevatedButton(
      child: Text('Click here'),
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        padding: EdgeInsets.all(20.0),
        fixedSize: Size(300, 80),
        textStyle: TextStyle(fontSize: 25.0,fontWeight: FontWeight.bold,),
        backgroundColor: Colors.red,
        foregroundColor: Colors.white,
        elevation: 15,
        shadowColor: Color.fromARGB(255, 201, 254, 7),
      ),
    ),
  ),
);

  }
}