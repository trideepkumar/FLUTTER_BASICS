import 'package:flutter/material.dart';
import '/screens/Listview.dart';
// import '/screens/RowsandCol.dart';
// import '/screens/Dashboard.dart';
// import '/screens/Home.dart';
// import '/screens/dashboard.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner:false, 
      title: 'My Flutter App',
      themeMode: ThemeMode.system,
      // home: Home(),
      // home: Dashboard(),
      // home: RowsandCol(),
      home: Listview(),
    );
  }
}
