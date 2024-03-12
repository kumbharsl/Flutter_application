import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavigationBar(
        backgroundColor: const Color.fromARGB(255, 64, 164, 69),
        destinations: const [
          NavigationDestination(
            // selectedIcon: Icon(Icons.home),
            icon: Icon(
              Icons.home_outlined,
              color: Colors.black,
            ),
            label: 'Home demo',
          ),
          NavigationDestination(
            // selectedIcon: Icon(Icons.home),
            icon: Icon(
              Icons.search_outlined,
              color: Colors.white,
            ),
            label: 'Search',
          ),
          NavigationDestination(
            // selectedIcon: Icon(Icons.home),
            icon: Icon(
              Icons.add_shopping_cart,
              color: Colors.white,
            ),
            label: 'Shop',
          ),
          NavigationDestination(
            // selectedIcon: Icon(Icons.home),
            icon: Icon(
              Icons.agriculture,
              color: Colors.white,
            ),
            label: 'Vehical',
          ),
          NavigationDestination(
            // selectedIcon: Icon(Icons.home),
            icon: Icon(
              Icons.person,
              color: Colors.white,
            ),
            label: 'Profile',
          ),
        ],
      ),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 64, 164, 69),
        title: const Text(
          'Farmer Easy...',
          style: TextStyle(
            color: Color.fromARGB(255, 96, 55, 103),
            fontWeight: FontWeight.bold,
            fontFamily: "Poppins",
            fontSize: 25,
          ),
        ),
        leading: const Icon(
          Icons.menu,
          color: Colors.white,
        ),
        leadingWidth: 15,
        actions: const [
          Icon(
            Icons.share_rounded,
            color: Colors.white,
          ),
          SizedBox(
            width: 10,
          ),
          Icon(
            Icons.more_vert,
            color: Colors.white,
          ),
          SizedBox(
            width: 5,
          ),
        ],
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              "assets/image.png",
            ),
            opacity: 0.6,
            fit: BoxFit.fill,
            alignment: Alignment(-1, 8),
          ),
        ),
      ),
    );
  }
}
