import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({
    super.key,
  });
  @override
  State<HomeScreen> createState() => _HomeScreen();
}

class _HomeScreen extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "PCMC Water Data",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 25,
          ),
        ),
        backgroundColor: Colors.blueGrey,
        actions: const [
          Icon(
            Icons.more_vert,
            color: Colors.white,
          ),
        ],
      ),
      body: Container(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.all(15),
                child: Row(
                  children: [
                    SingleChildScrollView(
                      child: Row(
                        children: [
                          Container(
                            padding: const EdgeInsets.all(10),
                            height: 200,
                            width: 150,
                            // color: Colors.grey,
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(
                                  "assets/image.png",
                                ),
                                // opacity: 0.3,
                                fit: BoxFit.fill,
                              ),
                              color: Colors.grey,
                              borderRadius: BorderRadius.all(
                                Radius.circular(15),
                              ),
                              boxShadow: [
                                BoxShadow(
                                    color: Color.fromARGB(255, 187, 184, 184),
                                    offset: Offset(10, 10),
                                    blurRadius: 8),
                              ],
                            ),
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                          Container(
                            padding: const EdgeInsets.all(10),
                            height: 200,
                            width: 150,
                            // color: Colors.grey,
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(
                                  "assets/pcmc.png",
                                ),
                                // opacity: 0.3,
                                fit: BoxFit.fill,
                              ),
                              color: Colors.grey,
                              borderRadius: BorderRadius.all(
                                Radius.circular(15),
                              ),
                              boxShadow: [
                                BoxShadow(
                                    color: Color.fromARGB(255, 187, 184, 184),
                                    offset: Offset(10, 10),
                                    blurRadius: 8),
                              ],
                            ),
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                          Container(
                            padding: const EdgeInsets.all(10),
                            height: 200,
                            width: 150,
                            // color: Colors.grey,
                            decoration: const BoxDecoration(
                              color: Colors.grey,
                              borderRadius: BorderRadius.all(
                                Radius.circular(15),
                              ),
                              boxShadow: [
                                BoxShadow(
                                    color: Color.fromARGB(255, 187, 184, 184),
                                    offset: Offset(10, 10),
                                    blurRadius: 8),
                              ],
                            ),
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                          Container(
                            padding: const EdgeInsets.all(10),
                            height: 200,
                            width: 150,
                            // color: Colors.grey,
                            decoration: const BoxDecoration(
                              color: Colors.grey,
                              borderRadius: BorderRadius.all(
                                Radius.circular(15),
                              ),
                              boxShadow: [
                                BoxShadow(
                                    color: Color.fromARGB(255, 187, 184, 184),
                                    offset: Offset(10, 10),
                                    blurRadius: 8),
                              ],
                            ),
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                          Container(
                            padding: const EdgeInsets.all(10),
                            height: 200,
                            width: 150,
                            // color: Colors.grey,
                            decoration: const BoxDecoration(
                              color: Colors.grey,
                              borderRadius: BorderRadius.all(
                                Radius.circular(15),
                              ),
                              boxShadow: [
                                BoxShadow(
                                    color: Color.fromARGB(255, 187, 184, 184),
                                    offset: Offset(10, 10),
                                    blurRadius: 8),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
