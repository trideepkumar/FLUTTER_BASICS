import 'package:flutter/material.dart';
import '/statefullWidgets/Loginform.dart';
// import '/statefullWidgets/Pushandpop.dart';
// import '/statefullWidgets/favoriteicon.dart';
// import '/screens/Stacks.dart';
// import '/screens/Floatingbutton.dart';
// import '/screens/Appbar.dart'; 
// import '/screens/Navdrawer.dart';
// import '/screens/Article.dart';
// import '/screens/Listview.dart';
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
      debugShowCheckedModeBanner: false,
      title: 'My Flutter App',
      themeMode: ThemeMode.system,
      // home: Home(),
      // home: Dashboard(),
      // home: RowsandCol(),
      // home: Listview(),
      // home: Article(),
      // home: Floatingbutton(),
      // home:Stacks(),
      // home: Navdrawer(),
      home: Scaffold(
        // body: favoriteicon(),
        // body: Pushandpop(),
        body: Loginform(),
        
      ),
    );
  }
} 
