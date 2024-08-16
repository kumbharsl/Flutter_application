import 'package:flutter/material.dart';
import 'package:wheatherapp/screen/height.dart';

class WeightInputScreen extends StatefulWidget {
  const WeightInputScreen({super.key});

  @override
  _WeightInputScreenState createState() => _WeightInputScreenState();
}

class _WeightInputScreenState extends State<WeightInputScreen> {
  int _selectedWeight = 65; // Default weight
  ScrollController? _scrollController; // Declare the ScrollController
  final double itemWidth = 50.0; // Width of each item in the list

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      // Set initial scroll position after the layout is built
      final screenWidth = MediaQuery.of(context).size.width;
      final middleItemOffset = (screenWidth / 2) - (itemWidth / 2);
      final initialScrollOffset =
          (_selectedWeight - 1) * itemWidth - middleItemOffset;

      _scrollController = ScrollController(
        initialScrollOffset:
            initialScrollOffset, // Set the initial scroll offset to center
      );
      setState(() {}); // To rebuild with the scroll controller
    });
  }

  @override
  void dispose() {
    _scrollController?.dispose(); // Dispose of the ScrollController
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF191919), // Dark background color
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const SizedBox(height: 100),
            const Text(
              "What is Your Weight?",
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            const Text(
              "Weight in kg. Don’t worry, you can always change it later.",
              style: TextStyle(
                color: Colors.grey,
                fontSize: 16,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 152),
            Stack(
              alignment: Alignment.center,
              children: [
                // The scrollable ListView for weight
                SizedBox(
                  height: 80,
                  child: _scrollController == null
                      ? Container() // Show empty container while controller initializes
                      : ListView.builder(
                          controller:
                              _scrollController, // Attach the ScrollController
                          scrollDirection: Axis.horizontal,
                          itemCount: 200, // Example range: 1 to 200 kg
                          itemBuilder: (context, index) {
                            int weight = index + 1;
                            bool isSelected = weight == _selectedWeight;

                            return GestureDetector(
                              onTap: () {
                                setState(() {
                                  _selectedWeight = weight;
                                });
                                print(
                                    "Selected Weight: $_selectedWeight"); // Print selected weight
                              },
                              child: Container(
                                width: itemWidth,
                                alignment: Alignment.center,
                                child: Text(
                                  "$weight",
                                  style: TextStyle(
                                    color: isSelected
                                        ? const Color(
                                            0xFF7F38F4) // Purple color for selected weight
                                        : Colors.grey,
                                    fontSize: isSelected ? 40 : 20,
                                    fontWeight: isSelected
                                        ? FontWeight.bold
                                        : FontWeight.normal,
                                  ),
                                ),
                              ),
                            );
                          },
                        ),
                ),
                // Overlay for highlighting the middle value
              ],
            ),
            const SizedBox(height: 32),
            const Icon(
              Icons.arrow_drop_up,
              color: Color(0xFF7F38F4), // Purple color
              size: 40,
            ),
            const SizedBox(height: 32),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                  onPressed: () {
                    // Handle back action
                    Navigator.pop(context);
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor:
                        const Color(0xFF303030), // Dark button background
                    padding: const EdgeInsets.symmetric(
                        vertical: 16, horizontal: 24),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: const Text(
                    "Back",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    // Print the selected weight before navigating
                    print("Final Selected Weight: $_selectedWeight");
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const HeightInputScreen()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor:
                        const Color(0xFF7F38F4), // Purple button background
                    padding: const EdgeInsets.symmetric(
                        vertical: 16, horizontal: 24),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: const Text(
                    "Continue",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 24),
          ],
        ),
      ),
    );
  }
}
