import 'package:flutter/material.dart';

class ProgressScreen extends StatelessWidget {
  const ProgressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Full-screen background image
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                    'assets/gym1.png'), // Replace with your image path
                fit: BoxFit.cover,
              ),
            ),
          ),
          // Back button
          Positioned(
            top: 40.0,
            left: 20.0,
            child: IconButton(
              icon: const Icon(Icons.arrow_back, color: Colors.white),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ),
          // Workout info and CTA button
          Positioned(
            bottom: 50.0,
            left: 20.0,
            right: 20.0,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Cardio workout',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 28.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 8.0),
                const Row(
                  children: [
                    Icon(Icons.local_fire_department, color: Colors.white),
                    SizedBox(width: 4.0),
                    Text(
                      '420 Kcal',
                      style: TextStyle(color: Colors.white),
                    ),
                    SizedBox(width: 16.0),
                    Icon(Icons.access_time, color: Colors.white),
                    SizedBox(width: 4.0),
                    Text(
                      '35 min',
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
                const SizedBox(height: 20.0),
                ElevatedButton(
                  onPressed: () {
                    // Handle start workout
                  },
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.black,
                    backgroundColor: Colors.yellow, // Button color
                    padding: const EdgeInsets.symmetric(vertical: 16.0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                  ),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Start Workout',
                        style: TextStyle(fontSize: 18.0),
                      ),
                      SizedBox(width: 8.0),
                      Icon(Icons.play_arrow),
                    ],
                  ),
                ),
                const SizedBox(height: 16.0),
                const SizedBox(
                  height: 200,
                ),
              ],
            ),
          ),
          // Draggable bottom sheet
          Align(
            alignment: Alignment.bottomCenter,
            child: DraggableScrollableSheet(
              initialChildSize: 0.3,
              minChildSize: 0.3,
              maxChildSize: 0.8,
              builder: (context, scrollController) {
                return Container(
                  decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.8),
                    borderRadius: const BorderRadius.vertical(
                      top: Radius.circular(12.0),
                    ),
                  ),
                  padding: const EdgeInsets.all(16.0),
                  child: SingleChildScrollView(
                    controller: scrollController,
                    child: const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Icon(
                          Icons.keyboard_arrow_up,
                          color: Colors.white,
                          size: 30.0,
                        ),
                        SizedBox(height: 16.0),
                        Text(
                          'Cardio Workout Details',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 22.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 16.0),
                        Text(
                          'Details about the cardio workout go here. This section provides more information about the workout, including tips, benefits, and any other relevant details.',
                          style: TextStyle(color: Colors.white),
                        ),
                        SizedBox(height: 16.0),
                        Text(
                          'Details about the cardio workout go here. This section provides more information about the workout, including tips, benefits, and any other relevant details.',
                          style: TextStyle(color: Colors.white),
                        ),
                        SizedBox(height: 16.0),
                        Text(
                          'Details about the cardio workout go here. This section provides more information about the workout, including tips, benefits, and any other relevant details.',
                          style: TextStyle(color: Colors.white),
                        ),
                        SizedBox(height: 16.0),
                        Text(
                          'Details about the cardio workout go here. This section provides more information about the workout, including tips, benefits, and any other relevant details.',
                          style: TextStyle(color: Colors.white),
                        ),
                        SizedBox(height: 16.0),
                        Text(
                          'Details about the cardio workout go here. This section provides more information about the workout, including tips, benefits, and any other relevant details.',
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
