import 'package:flutter/material.dart';

class Stacks extends StatelessWidget {
  const Stacks({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 170, 174, 175),
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
      body: Center(
          child: Container(
        padding: const EdgeInsets.all(16),
        constraints: const BoxConstraints.expand(
          width: 350,
          height: 470,
        ),
        decoration: const BoxDecoration(
          boxShadow: [BoxShadow(color: Color.fromARGB(255, 251, 251, 251))],
          image: DecorationImage(
            image: NetworkImage(
                "https://i.pinimg.com/originals/93/e9/11/93e91176b635eae4d76d9fca55ca0845.jpg"),
            fit: BoxFit
                .cover, 
          ),
          borderRadius: BorderRadius.all(Radius.circular(12.0)),
        ),
        child: const Stack(
          children: [
            Text(
              "Explore the world!",
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
            Positioned(
              top: 30.0,
              child: Text(
                "The choice of exploration begins !",
                style: TextStyle(color: Colors.white, fontSize: 12),
              ),
            ),
            Positioned(
              bottom:0,
              right: 0,
              child: Text(
                "The choice of exploration begins !",
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
            )
            // Text("Do or Die here !",style: TextStyle(color: Colors.white,fontSize: 16),),
            // Text("Space is awesome !",style: TextStyle(color: Colors.white,fontSize: 16),),
          ],
        ),
      )

          // Stack(
          //   alignment: Alignment.center,
          //   children: [
          //     Container(
          //       width: 200,
          //       height: 300,
          //       color: Colors.white,
          //     ),
          //      Container(
          //       width: 150,
          //       height: 250,
          //       color: Color.fromARGB(255, 79, 78, 76),
          //     ),
          //      Container(
          //       width: 75,
          //       height: 150,
          //       color: Color.fromARGB(255, 225, 210, 167),
          //     )
          //   ],
          // ),
          ),
      // Centered the text widge
      bottomNavigationBar: const BottomAppBar(
        shape: CircularNotchedRectangle(),
        color: Color.fromARGB(255, 254, 198, 44),
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
  }
}
