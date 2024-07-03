import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class DashBoard extends StatefulWidget {
  const DashBoard({super.key});

  @override
  State<DashBoard> createState() => _DashBoard();
}

class _DashBoard extends State<DashBoard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 20,
        backgroundColor: Colors.blue.shade200,
        title: Text('Hello,\nSagar Kumbhar...'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const Row(
                children: [
                  Text(
                    'New For You',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  // mainAxisSize: MainAxisSize.max,
                  children: [
                    Container(
                      width: 150,
                      height: 200,
                      decoration: const BoxDecoration(
                        color: Color.fromRGBO(252, 55, 55, 1),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey,
                            offset: Offset(5, 5),
                            blurRadius: 5,
                          ),
                        ],
                        borderRadius: BorderRadius.all(
                          Radius.circular(20),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Container(
                      width: 150,
                      height: 200,
                      decoration: const BoxDecoration(
                        color: Color.fromRGBO(252, 55, 55, 1),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey,
                            offset: Offset(5, 5),
                            blurRadius: 5,
                          ),
                        ],
                        borderRadius: BorderRadius.all(
                          Radius.circular(20),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Container(
                      width: 150,
                      height: 200,
                      decoration: const BoxDecoration(
                        color: Color.fromRGBO(252, 55, 55, 1),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey,
                            offset: Offset(5, 5),
                            blurRadius: 5,
                          ),
                        ],
                        borderRadius: BorderRadius.all(
                          Radius.circular(20),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const Row(
                children: [
                  Text(
                    'New For You',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  // mainAxisSize: MainAxisSize.max,
                  children: [
                    Container(
                      width: 150,
                      height: 200,
                      decoration: const BoxDecoration(
                        color: Color.fromRGBO(252, 55, 55, 1),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey,
                            offset: Offset(5, 5),
                            blurRadius: 5,
                          ),
                        ],
                        borderRadius: BorderRadius.all(
                          Radius.circular(20),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Container(
                      width: 150,
                      height: 200,
                      decoration: const BoxDecoration(
                        color: Color.fromRGBO(252, 55, 55, 1),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey,
                            offset: Offset(5, 5),
                            blurRadius: 5,
                          ),
                        ],
                        borderRadius: BorderRadius.all(
                          Radius.circular(20),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Container(
                      width: 150,
                      height: 200,
                      decoration: const BoxDecoration(
                        color: Color.fromRGBO(252, 55, 55, 1),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey,
                            offset: Offset(5, 5),
                            blurRadius: 5,
                          ),
                        ],
                        borderRadius: BorderRadius.all(
                          Radius.circular(20),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
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
