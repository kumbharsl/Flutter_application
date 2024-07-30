import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: FitnessMetricsScreen(),
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'Roboto',
        textTheme: const TextTheme(
          bodyLarge: TextStyle(fontSize: 16.0),
        ),
      ),
    );
  }
}

class FitnessMetricsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Fitness Metrics'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: 170,
                    height: 80,
                    decoration: BoxDecoration(
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.grey,
                          blurRadius: 5,
                          offset: Offset(4, 4),
                        ),
                      ],
                      color: Colors.blue.shade50,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            color: Colors.pink.shade100,
                            shape: BoxShape.circle,
                          ),
                          child: const Icon(
                            Icons.monitor_weight,
                            color: Colors.pink,
                          ),
                        ),
                        const SizedBox(
                          width: 0,
                        ),
                        Container(
                          height: 50,
                          width: 80,
                          color: Colors.transparent,
                          child: const Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "44.7",
                                style: TextStyle(
                                  fontSize: 21,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              Text("Weight(KG)"),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Container(
                    width: 170,
                    height: 80,
                    decoration: BoxDecoration(
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.grey,
                          blurRadius: 5,
                          offset: Offset(4, 4),
                        ),
                      ],
                      color: Colors.purple.shade50,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            color: Colors.teal.shade100,
                            shape: BoxShape.circle,
                          ),
                          child: const Icon(
                            Icons.height,
                            size: 40,
                            color: Colors.teal,
                          ),
                        ),
                        const SizedBox(
                          width: 0,
                        ),
                        Container(
                          height: 50,
                          width: 80,
                          color: Colors.transparent,
                          child: const Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "162",
                                style: TextStyle(
                                  fontSize: 21,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              Text("Height(CM)"),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                width: double.infinity,
                height: 80,
                decoration: BoxDecoration(
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.grey,
                      blurRadius: 5,
                      offset: Offset(4, 4),
                    ),
                  ],
                  color: Colors.purple.shade50,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        color: Colors.teal.shade100,
                        shape: BoxShape.circle,
                      ),
                      child: const Icon(
                        Icons.height,
                        size: 40,
                        color: Colors.teal,
                      ),
                    ),
                    const SizedBox(
                      width: 0,
                    ),
                    Container(
                      height: 50,
                      width: 80,
                      color: Colors.transparent,
                      child: const Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "162",
                            style: TextStyle(
                              fontSize: 21,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Text("Height(CM)"),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Container(
                width: 100,
                height: 170,
                decoration: BoxDecoration(
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.grey,
                      blurRadius: 5,
                      offset: Offset(4, 4),
                    ),
                  ],
                  color: Colors.purple.shade50,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        color: Colors.teal.shade100,
                        shape: BoxShape.circle,
                      ),
                      child: const Icon(
                        Icons.height,
                        size: 40,
                        color: Colors.teal,
                      ),
                    ),
                    Container(
                      height: 50,
                      width: 130,
                      color: Colors.transparent,
                      child: const Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "21.9",
                            style: TextStyle(
                              fontSize: 21,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Text("Fat%"),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              BMISection(bmiValue: '17.0'),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  FitnessMetricCard(
                    value: '21.9',
                    unit: '%',
                    label: 'Fat',
                    icon: Icons.fitness_center,
                  ),
                  FitnessMetricCard(
                    value: '0.5',
                    unit: '%',
                    label: 'Visceral Fat',
                    icon: Icons.local_hospital,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  FitnessMetricCard(
                    value: '29',
                    unit: '',
                    label: 'Muscle',
                    icon: Icons.accessibility_new,
                  ),
                  FitnessMetricCard(
                    value: '29',
                    unit: 'kcal/min',
                    label: 'RM kcal',
                    icon: Icons.local_fire_department,
                  ),
                ],
              ),
              FitnessMetricCard(
                value: '18',
                unit: 'Year',
                label: 'Body Age',
                icon: Icons.cake,
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.orange,
        unselectedItemColor: Colors.grey,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.event), label: 'Event'),
          BottomNavigationBarItem(
              icon: Icon(Icons.bar_chart), label: 'Progress'),
          BottomNavigationBarItem(icon: Icon(Icons.more), label: 'More'),
        ],
      ),
    );
  }
}

class FitnessMetricCard extends StatelessWidget {
  final String value;
  final String unit;
  final String label;
  final IconData icon;

  FitnessMetricCard({
    required this.value,
    required this.unit,
    required this.label,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Handle on-tap event, e.g., navigate to detailed view
      },
      child: Container(
        width: 170,
        height: 100,
        margin: const EdgeInsets.symmetric(vertical: 10.0),
        padding: const EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10.0),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 1,
              blurRadius: 5,
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: 30, color: Colors.blue),
            const SizedBox(height: 8),
            Text(
              '$value $unit',
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class BMISection extends StatelessWidget {
  final String bmiValue;

  BMISection({required this.bmiValue});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 110,
      width: double.infinity,
      margin: const EdgeInsets.symmetric(vertical: 10.0),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10.0),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 1,
            blurRadius: 5,
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'BMI : ',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
          ),
          // const SizedBox(height: 10),
          Text(
            bmiValue,
            style: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
          // const SizedBox(height: 10),
          const Text(
            'Normal',
            style: TextStyle(color: Colors.green, fontWeight: FontWeight.bold),
          ),
          // Add more detailed information or a graph here
        ],
      ),
    );
  }
}
