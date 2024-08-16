import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wheatherapp/screen/weight.dart';

class HeightInputScreen extends StatefulWidget {
  const HeightInputScreen({super.key});

  @override
  _HeightInputScreenState createState() => _HeightInputScreenState();
}

class _HeightInputScreenState extends State<HeightInputScreen> {
  int _selectedHeight = 150; // Default value set to 150
  final TextEditingController _heightController = TextEditingController();

  @override
  void initState() {
    super.initState();
    // Initialize the controller with the default value
    _heightController.text = _selectedHeight.toString();
  }

  @override
  void dispose() {
    _heightController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1C1C1E),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 40.0),
            child: Column(
              children: [
                Text(
                  'What is Your Height?',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  "Height in cm. Don't worry, you can always change it later.",
                  style: TextStyle(
                    color: Colors.white70,
                    fontSize: 16,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
          Expanded(
            child: Stack(
              alignment: Alignment.center,
              children: [
                CupertinoPicker(
                  itemExtent: 60,
                  scrollController: FixedExtentScrollController(
                    initialItem: _selectedHeight - 100, // Adjusted for 150
                  ),
                  onSelectedItemChanged: (index) {
                    setState(() {
                      _selectedHeight = 100 + index;
                      _heightController.text = _selectedHeight.toString();
                      print('Selected height: $_selectedHeight');
                    });
                  },
                  children: List<Widget>.generate(101, (index) {
                    int height = 100 + index;
                    return Center(
                      child: Text(
                        '$height',
                        style: TextStyle(
                          color: _selectedHeight == height
                              ? const Color(0xFF6F3FF5) // Purple color
                              : Colors.white,
                          fontSize: _selectedHeight == height ? 36 : 24,
                          fontWeight: _selectedHeight == height
                              ? FontWeight.bold
                              : FontWeight.normal,
                        ),
                      ),
                    );
                  }),
                ),
                Positioned(
                  top: MediaQuery.of(context).size.height * 0.37,
                  child: Container(
                    height: 2,
                    width: MediaQuery.of(context).size.width * 0.3,
                    color: Colors.grey,
                  ),
                ),
                Positioned(
                  bottom: MediaQuery.of(context).size.height * 0.37,
                  child: Container(
                    height: 2,
                    width: MediaQuery.of(context).size.width * 0.3,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF3A3A3C),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 30, vertical: 15),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  child: const Text(
                    'Back',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const WeightInputScreen()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF6F3FF5),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 30, vertical: 15),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  child: const Text(
                    'Continue',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
