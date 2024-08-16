import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wheatherapp/screen/height.dart';

class AgeScreen extends StatefulWidget {
  const AgeScreen({super.key});

  @override
  _AgeScreenState createState() => _AgeScreenState();
}

class _AgeScreenState extends State<AgeScreen> {
  int _selectedAge = 45; // Default value set to 45
  final TextEditingController _ageController = TextEditingController();

  @override
  void initState() {
    super.initState();
    // Initialize the controller with the default value
    _ageController.text = _selectedAge.toString();
  }

  @override
  void dispose() {
    _ageController.dispose();
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
                  'How Old Are You?',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  "Age in years. This will help us to personalize\nan exercise program plan that suits you.",
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
                    initialItem: _selectedAge - 20, // Adjusted for 45
                  ),
                  onSelectedItemChanged: (index) {
                    setState(() {
                      _selectedAge = 20 + index;
                      _ageController.text = _selectedAge.toString();
                      print('Selected age: $_selectedAge');
                    });
                  },
                  children: List<Widget>.generate(101, (index) {
                    int age = 20 + index;
                    return Center(
                      child: Text(
                        '$age',
                        style: TextStyle(
                          color: _selectedAge == age
                              ? const Color(0xFF6F3FF5) // Purple color
                              : Colors.white,
                          fontSize: _selectedAge == age ? 36 : 24,
                          fontWeight: _selectedAge == age
                              ? FontWeight.bold
                              : FontWeight.normal,
                        ),
                      ),
                    );
                  }),
                ),
                Positioned(
                  top: MediaQuery.of(context).size.height * 0.35,
                  child: Container(
                    height: 2,
                    width: MediaQuery.of(context).size.width * 0.3,
                    color: Colors.grey,
                  ),
                ),
                Positioned(
                  bottom: MediaQuery.of(context).size.height * 0.35,
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
                          builder: (context) => const HeightInputScreen()),
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
