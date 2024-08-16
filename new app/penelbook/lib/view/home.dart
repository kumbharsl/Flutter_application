// ignore_for_file: avoid_print

import 'dart:io';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_pdfview/flutter_pdfview.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: HomeScreen(), // Default screen or adjust as needed
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const SectionTitle(title: 'Education Low'),
                ElevatedButton(
                  onPressed: () {},
                  child: const Text("See more"),
                ),
              ],
            ),
            GridSection(
              itemTitles: const [
                'assets/study.png',
                'assets/study1.png',
                'assets/study.png',
                'assets/study.png',
              ],
              itemNames: const [
                'Study of Education',
                'Teacher Education',
                'Study of Education',
                'Study of Education'
              ],
              color: Colors.grey[200]!,
              itemCount: 4,
              pdfUrl: 'https://pdfobject.com/pdf/sample.pdf',
            ),
            const SizedBox(height: 24),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const SectionTitle(title: 'Civil Low'),
                ElevatedButton(onPressed: () {}, child: const Text("See more"))
              ],
            ),
            GridSection(
              itemTitles: const [
                'assets/download.png',
                'assets/download.png',
                'assets/download.png',
                'assets/download.png',
              ],
              itemNames: const ['PHY-I', '0', 'Quantum', 'Nuclear'],
              color: Colors.blue[100]!,
              itemCount: 4,
              pdfUrl: 'https://pdfobject.com/pdf/sample.pdf',
            ),
            const SizedBox(height: 24),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const SectionTitle(title: 'Criminal Low'),
                ElevatedButton(onPressed: () {}, child: const Text("See more"))
              ],
            ),
            GridSection(
              itemTitles: const [
                'https://example.com/image1.jpg',
                'https://example.com/image2.jpg',
                'https://example.com/image3.jpg',
                'https://example.com/image4.jpg'
              ],
              itemNames: const ['Chem-I', 'Chem-II', 'Organic', 'Inorganic'],
              color: Colors.green[100]!,
              itemCount: 4,
              pdfUrl: 'https://pdfobject.com/pdf/sample.pdf',
            ),
            const SizedBox(height: 24),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const SectionTitle(title: 'International Low'),
                ElevatedButton(onPressed: () {}, child: const Text("See more"))
              ],
            ),
            GridSection(
              itemTitles: const [
                'https://example.com/image1.jpg',
                'https://example.com/image2.jpg',
                'https://example.com/image3.jpg',
                'https://example.com/image4.jpg'
              ],
              itemNames: const ['Bio-I', 'Bio-II', 'Genetics', 'Botany'],
              color: Colors.orange[100]!,
              itemCount: 4,
              pdfUrl: 'https://pdfobject.com/pdf/sample.pdf',
            ),
          ],
        ),
      ),
    );
  }
}

class SectionTitle extends StatelessWidget {
  final String title;
  const SectionTitle({required this.title, super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12.0),
      child: Text(
        title,
        style: const TextStyle(
          fontSize: 26,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}

class GridSection extends StatelessWidget {
  final List<String> itemTitles; // List of image URLs
  final List<String> itemNames; // List of names
  final int itemCount;
  final Color color;
  final String pdfUrl;

  const GridSection({
    super.key,
    required this.itemTitles,
    required this.itemNames,
    required this.itemCount,
    required this.color,
    required this.pdfUrl,
  }) : assert(itemTitles.length == itemCount,
            'itemTitles length must match itemCount.');

  @override
  Widget build(BuildContext context) {
    int rows = (itemCount / 2).ceil();

    List<Widget> gridRows = [];
    for (int i = 0; i < rows; i++) {
      List<Widget> rowItems = [];
      for (int j = 0; j < 2; j++) {
        int index = i * 2 + j;
        if (index < itemCount) {
          String imageAssets = itemTitles[index];
          String name = itemNames[index];
          rowItems.add(
            Expanded(
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DetailScreen(
                        title: name,
                        pdfUrl: pdfUrl,
                      ),
                    ),
                  );
                },
                child: Container(
                  height: 200,
                  margin: const EdgeInsets.all(4.0),
                  decoration: BoxDecoration(
                    color: color,
                    border: Border.all(color: Colors.black, width: 2),
                    borderRadius: BorderRadius.circular(4.0),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.3),
                        offset: const Offset(2, 2),
                        blurRadius: 4,
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      Expanded(
                        child: Stack(
                          children: [
                            Positioned.fill(
                              child: Image.asset(
                                imageAssets,
                                fit: BoxFit.cover,
                                errorBuilder: (context, error, stackTrace) {
                                  return const Center(child: Icon(Icons.error));
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: double.infinity,
                        color: Colors.white,
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8.0, vertical: 4.0),
                        child: Text(
                          name,
                          style: const TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        }
      }
      gridRows.add(Row(
        children: rowItems,
      ));
    }

    return Column(
      children: gridRows,
    );
  }
}

class DetailScreen extends StatefulWidget {
  final String title;
  final String pdfUrl;

  const DetailScreen({
    required this.title,
    required this.pdfUrl,
    super.key,
  });

  @override
  // ignore: library_private_types_in_public_api
  _DetailScreenState createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  late String localPath;

  @override
  void initState() {
    super.initState();
    localPath =
        '${Directory.systemTemp.path}/${DateTime.now().millisecondsSinceEpoch}.pdf';
    _downloadPdf();
  }

  Future<void> _downloadPdf() async {
    try {
      final response = await Dio().download(widget.pdfUrl, localPath);
      if (response.statusCode == 200) {
        setState(() {}); // Refresh UI after download
      }
    } catch (e) {
      // ignore: use_build_context_synchronously
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Error loading PDF')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: localPath.isEmpty
          ? const Center(child: CircularProgressIndicator())
          : PDFView(
              filePath: localPath,
              autoSpacing: false,
              enableSwipe: true,
              swipeHorizontal: true,
              pageFling: true,
              pageSnap: true,
              fitPolicy: FitPolicy.BOTH,
              onPageError: (page, e) => print('Page $page error: $e'),
              onViewCreated: (PDFViewController pdfViewController) => print(
                'PDFView created',
              ),
            ),
    );
  }
}

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Search'),
      ),
      body: const Center(
        child: Text('Search Screen'),
      ),
    );
  }
}

class AttendanceScreen extends StatelessWidget {
  const AttendanceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Attendance'),
      ),
      body: const Center(
        child: Text('Attendance Screen'),
      ),
    );
  }
}

class LikeScreen extends StatelessWidget {
  const LikeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Likes'),
      ),
      body: const Center(
        child: Text('Likes Screen'),
      ),
    );
  }
}

class AccountScreen extends StatelessWidget {
  const AccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Account'),
      ),
      body: const Center(
        child: Text('Account Screen'),
      ),
    );
  }
}
