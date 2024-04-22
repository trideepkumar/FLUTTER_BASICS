import 'package:flutter/material.dart';
import '/statefullWidgets/Pusheddata.dart';

class Pushandpop extends StatefulWidget {
  const Pushandpop({super.key});

  @override
  State<Pushandpop> createState() => _PushandpopState();
}

class _PushandpopState extends State<Pushandpop> {
  @override
  Widget build(BuildContext context) {
      return Scaffold(
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: const Icon(Icons.add),
          backgroundColor: const Color.fromARGB(255, 255, 180, 59),
          elevation: 10.0,
          shape: const StadiumBorder(
            side: BorderSide(color: Colors.white),
          ),
        ),
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(Icons.menu),
            onPressed: () {},
          ),
          title: const Text(
            "MyApp",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
          actions: [
            IconButton(
              icon: const Icon(Icons.shopping_cart),
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(Icons.search),
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(Icons.sunny),
              onPressed: () {},
            ),
          ],
          elevation: 0,
          titleSpacing: -10.0,
          backgroundColor: const Color.fromARGB(255, 192, 126, 69),
          foregroundColor: Colors.white,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(bottom: Radius.circular(20)),
          ),
        ),

        // ---------- body ---------

        body: 
      Center(
    child: OutlinedButton(
      style: ButtonStyle(
        side: MaterialStateProperty.resolveWith<BorderSide>(
          (Set<MaterialState> states) {
            return BorderSide(color: const Color.fromARGB(255, 252, 169, 52), width: 1.0);
          },
        ),
      ),
      child: Text(
        "Submit form ".toUpperCase(),
        style: const TextStyle(
          fontWeight: FontWeight.bold,
          color: Color.fromARGB(255, 252, 169, 52),
        ),
      ),
    onPressed: () {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => Pusheddata(),
      ),
    );
  },

    ),
  ),

        bottomNavigationBar: const BottomAppBar(
          shape: CircularNotchedRectangle(),
          color: Color.fromARGB(255, 255, 180, 59),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 10.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      Icons.home,
                      color: Colors.white,
                    ),
                    Text(
                      "Home",
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 10.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      Icons.shopping_cart,
                      color: Colors.white,
                    ),
                    Text(
                      "Cart",
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 10.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      Icons.favorite,
                      color: Colors.white,
                    ),
                    Text(
                      "Favorites",
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 10.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      Icons.person,
                      color: Colors.white,
                    ),
                    Text(
                      "Profile",
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      );
    ;
  }
}
