import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:fl_chart/fl_chart.dart';
import 'package:wheatherapp/screen/age.dart';
import 'package:wheatherapp/screen/gender.dart';
import 'package:wheatherapp/view/progress.dart';

class WorkOutScreen extends StatefulWidget {
  const WorkOutScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _WorkOutScreenState createState() => _WorkOutScreenState();
}

class _WorkOutScreenState extends State<WorkOutScreen> {
  String _selectedPerformance =
      'Kcal Burn'; // Must match one of the dropdown items
  String _selectedTimeFrame = 'Weekly'; // Must match one of the dropdown items

  // Data for different metrics
  final Map<String, Map<String, List<FlSpot>>> _data = {
    'Kcal Burn': {
      'Daily': [
        const FlSpot(0, 200),
        const FlSpot(1, 250),
        const FlSpot(2, 300),
        const FlSpot(3, 350),
        const FlSpot(4, 400),
        const FlSpot(5, 450),
        const FlSpot(6, 500),
      ],
      'Weekly': [
        const FlSpot(0, 200),
        const FlSpot(1, 400),
        const FlSpot(2, 800),
        const FlSpot(3, 600),
        const FlSpot(4, 700),
        const FlSpot(5, 500),
        const FlSpot(6, 200),
      ],
      'Monthly': [
        const FlSpot(0, 1800),
        const FlSpot(1, 2100),
        const FlSpot(2, 2400),
        const FlSpot(3, 2700),
        const FlSpot(4, 3000),
        const FlSpot(5, 3300),
        const FlSpot(6, 3600),
      ],
    },
    'Weight': {
      'Daily': [
        const FlSpot(0, 63),
        const FlSpot(1, 64),
        const FlSpot(2, 65),
        const FlSpot(3, 66),
        const FlSpot(4, 67),
        const FlSpot(5, 68),
        const FlSpot(6, 69),
      ],
      'Weekly': [
        const FlSpot(0, 63),
        const FlSpot(1, 64),
        const FlSpot(2, 65),
        const FlSpot(3, 66),
        const FlSpot(4, 67),
        const FlSpot(5, 68),
        const FlSpot(6, 69),
      ],
      'Monthly': [
        const FlSpot(0, 63),
        const FlSpot(1, 64),
        const FlSpot(2, 65),
        const FlSpot(3, 66),
        const FlSpot(4, 67),
        const FlSpot(5, 68),
        const FlSpot(6, 69),
      ],
    },
    'Duration': {
      'Daily': [
        const FlSpot(0, 30),
        const FlSpot(1, 45),
        const FlSpot(2, 60),
        const FlSpot(3, 75),
        const FlSpot(4, 90),
        const FlSpot(5, 105),
        const FlSpot(6, 120),
      ],
      'Weekly': [
        const FlSpot(0, 30),
        const FlSpot(1, 45),
        const FlSpot(2, 60),
        const FlSpot(3, 90),
        const FlSpot(4, 120),
        const FlSpot(5, 150),
        const FlSpot(6, 180),
      ],
      'Monthly': [
        const FlSpot(0, 300),
        const FlSpot(1, 450),
        const FlSpot(2, 600),
        const FlSpot(3, 750),
        const FlSpot(4, 900),
        const FlSpot(5, 1050),
        const FlSpot(6, 1200),
      ],
    },
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black, // Dark background color
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Good Morning',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 8),
                const Text(
                  'Monica Spenser',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 16),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const ProgressScreen(),
                      ),
                    );
                  },
                  child: Container(
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: const Color(0xFF2C2C2E),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Row(
                      children: [
                        Container(
                          height: 90,
                          width: 80,
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            image: DecorationImage(
                              fit: BoxFit.fill,
                              image: AssetImage("assets/lady.png"),
                            ),
                          ),
                        ),
                        const SizedBox(width: 16),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 8,
                                vertical: 4,
                              ),
                              decoration: BoxDecoration(
                                color: Colors.yellow,
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: const Text(
                                'Advanced',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            const SizedBox(height: 8),
                            const Text(
                              '21 trainings',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(height: 4),
                            const Text(
                              '8 trainings to PRO level',
                              style: TextStyle(
                                color: Colors.white60,
                              ),
                            ),
                          ],
                        ),
                        const Spacer(),
                        const Icon(
                          Icons.more_vert,
                          color: Colors.white,
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 24),
                const Text(
                  'Performance',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    _buildPerformanceCard(
                      icon: Icons.fitness_center,
                      label: 'Weight',
                      value: '63',
                      color: Colors.white,
                    ),
                    _buildPerformanceCard(
                      icon: Icons.whatshot,
                      label: 'Kcal Burn',
                      value: '5423',
                      color: Colors.white,
                    ),
                    _buildPerformanceCard(
                      icon: Icons.timer,
                      label: 'Duration',
                      value: '3h 46m',
                      color: Colors.white,
                    ),
                  ],
                ),
                const SizedBox(height: 24),
                Container(
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: const Color(0xFF2C2C2E),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Total Average',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 8),
                      Row(
                        children: [
                          const Text(
                            '556',
                            style: TextStyle(
                              color: Colors.red,
                              fontSize: 48,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(width: 4),
                          const Text(
                            'Kcal',
                            style: TextStyle(
                              color: Colors.red,
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const Spacer(),
                          DropdownButton<String>(
                            dropdownColor: const Color(0xFF2C2C2E),
                            value: _selectedPerformance,
                            icon: const Icon(Icons.arrow_drop_down,
                                color: Colors.white),
                            items: <String>['Kcal Burn', 'Weight', 'Duration']
                                .map<DropdownMenuItem<String>>((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(
                                  value,
                                  style: const TextStyle(color: Colors.white),
                                ),
                              );
                            }).toList(),
                            onChanged: (newValue) {
                              setState(() {
                                _selectedPerformance = newValue!;
                              });
                            },
                          ),
                          const SizedBox(width: 8),
                          DropdownButton<String>(
                            dropdownColor: const Color(0xFF2C2C2E),
                            value: _selectedTimeFrame,
                            icon: const Icon(Icons.arrow_drop_down,
                                color: Colors.white),
                            items: <String>['Daily', 'Weekly', 'Monthly']
                                .map<DropdownMenuItem<String>>((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(
                                  value,
                                  style: const TextStyle(color: Colors.white),
                                ),
                              );
                            }).toList(),
                            onChanged: (newValue) {
                              setState(() {
                                _selectedTimeFrame = newValue!;
                              });
                            },
                          ),
                        ],
                      ),
                      const SizedBox(height: 16),
                      Center(
                        child: Container(
                          height: 200,
                          padding: const EdgeInsets.all(16),
                          decoration: BoxDecoration(
                            color: Colors.black, // Background color
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: LineChart(
                            LineChartData(
                              gridData: const FlGridData(show: false),
                              titlesData: FlTitlesData(
                                leftTitles: const AxisTitles(
                                  sideTitles: SideTitles(showTitles: false),
                                ),
                                bottomTitles: AxisTitles(
                                  sideTitles: SideTitles(
                                    showTitles: true,
                                    getTitlesWidget: (value, meta) {
                                      TextStyle style = const TextStyle(
                                        color: Colors.white,
                                        fontSize: 10,
                                      );
                                      switch (value.toInt()) {
                                        case 0:
                                          return Text('Mon', style: style);
                                        case 1:
                                          return Text('Tue', style: style);
                                        case 2:
                                          return Text('Wed', style: style);
                                        case 3:
                                          return Text('Thu', style: style);
                                        case 4:
                                          return Text('Fri', style: style);
                                        case 5:
                                          return Text('Sat', style: style);
                                        case 6:
                                          return Text('Sun', style: style);
                                      }
                                      return const Text('');
                                    },
                                  ),
                                ),
                              ),
                              borderData: FlBorderData(
                                show: false,
                              ),
                              lineBarsData: [
                                LineChartBarData(
                                  spots: _data[_selectedPerformance]
                                          ?[_selectedTimeFrame] ??
                                      [],
                                  isCurved: true,
                                  color: Colors.white,
                                  barWidth: 2,
                                  belowBarData: BarAreaData(
                                    show: true,
                                    color: Colors.white.withOpacity(0.5),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 16),
                Container(
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: const Color(0xFF2C2C2E),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Workout Process',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 8),
                      Center(
                        child: Container(
                          height: 200,
                          padding: const EdgeInsets.all(16),
                          decoration: BoxDecoration(
                            color: Colors.black, // Background color
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: LineChart(
                            LineChartData(
                              gridData: const FlGridData(show: false),
                              titlesData: FlTitlesData(
                                leftTitles: const AxisTitles(
                                  sideTitles: SideTitles(showTitles: false),
                                ),
                                bottomTitles: AxisTitles(
                                  sideTitles: SideTitles(
                                    showTitles: true,
                                    getTitlesWidget: (value, meta) {
                                      TextStyle style = const TextStyle(
                                        color: Colors.white,
                                        fontSize: 10,
                                      );
                                      switch (value.toInt()) {
                                        case 0:
                                          return Text('Mon', style: style);
                                        case 1:
                                          return Text('Tue', style: style);
                                        case 2:
                                          return Text('Wed', style: style);
                                        case 3:
                                          return Text('Thu', style: style);
                                        case 4:
                                          return Text('Fri', style: style);
                                        case 5:
                                          return Text('Sat', style: style);
                                        case 6:
                                          return Text('Sun', style: style);
                                      }
                                      return const Text('');
                                    },
                                  ),
                                ),
                              ),
                              borderData: FlBorderData(
                                show: false,
                              ),
                              lineBarsData: [
                                LineChartBarData(
                                  spots: _data[_selectedPerformance]
                                          ?[_selectedTimeFrame] ??
                                      [],
                                  isCurved: true,
                                  color: Colors.white,
                                  barWidth: 2,
                                  belowBarData: BarAreaData(
                                    show: true,
                                    color: Colors.white.withOpacity(0.5),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => const GenderSelectionScreen()),
          );
        },
        backgroundColor: Colors.red,
        elevation: 6,
        child: const Icon(Icons.person),
      ),
    );
  }

  Widget _buildPerformanceCard({
    required IconData icon,
    required String label,
    required String value,
    required Color color,
  }) {
    bool isSelected = _selectedPerformance == label;

    return GestureDetector(
      onTap: () {
        setState(() {
          _selectedPerformance = label;
        });
      },
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        width: 110,
        height: 142, // Animate only the height
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: isSelected
              ? const Color.fromARGB(255, 170, 161, 82)
              : const Color(0xFF2C2C2E),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(icon, color: color, size: 28),
            const SizedBox(height: 8),
            Text(
              label,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 16,
              ),
            ),
            const SizedBox(height: 4),
            Text(
              value,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
