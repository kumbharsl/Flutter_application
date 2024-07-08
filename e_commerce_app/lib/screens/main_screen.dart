import 'package:e_commerce_app/screens/home_screen/home_screen.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  Size size = Size.zero;
  int currentIndex = 0;

  final _navigatorKeys = [
    GlobalKey<NavigatorState>(),
    GlobalKey<NavigatorState>(),
    GlobalKey<NavigatorState>(),
    GlobalKey<NavigatorState>(),
    GlobalKey<NavigatorState>(),
  ];

  List<Widget> _buildScreens = [
    HomeScreen(),
    Container(),
    Container(),
    Container(),
    Container(),
    Container(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: _buildScreens[currentIndex],
        bottomNavigationBar: Container(
          decoration: BoxDecoration(
              border: Border(
            top: BorderSide(color: Colors.black26, width: 0.5),
          )),
        ));
  }
}
