import 'package:flutter/material.dart';

class HomeScreen1 extends StatefulWidget {
  const HomeScreen1({super.key});

  @override
  State<HomeScreen1> createState() => _HomeScreen1State();
}

class _HomeScreen1State extends State<HomeScreen1> {
  final List<Map<String, dynamic>> allBooks = [
    {
      "image":
          "https://i.pinimg.com/474x/ef/af/86/efaf8678fe566de8cc295a9abb968033.jpg",
      "id": 1,
      "name": "Constitution of India",
      "des": "DR. B. R AMBEDKAR",
    },
    {
      "id": 2,
      "name": "Indian Polity",
      "des": "Virendra Singh",
      "image":
          "https://i.pinimg.com/564x/15/53/73/155373ee6135e5af72faa848684a6c30.jpg",
    },
    {
      "id": 3,
      "name": "THE WHEEL OF LAW",
      "des": "GARY JEFFREY JACOBSOHN",
      "image":
          "https://i.pinimg.com/474x/51/ee/41/51ee41f5dc419cdfff09b0c7badcc8c2.jpg",
    },
    {
      "id": 4,
      "name": "India that is Bharat",
      "des": " J SAI DEEPAK",
      "image":
          "https://i.pinimg.com/474x/ef/68/5f/ef685ffb5b4e34b2ecc532a1d3e20545.jpg",
    },
    {
      "id": 5,
      "name": "India's Founding Moment",
      "des": "Madhav Khosla",
      "image":
          "https://i.pinimg.com/474x/4d/bb/19/4dbb198b276040b6dc5a26db31aae15e.jpg",
    },
    {
      "id": 6,
      "name": "The Law of Emergency Powers",
      "des": "Abhishek Singhvi & Khagesh Gautam",
      "image":
          "https://i.pinimg.com/474x/f6/00/16/f60016506761936a132d3dd7f893ffaa.jpg",
    },
    {
      "id": 7,
      "name": "Criminal Manual",
      "des": "DR. B. Ramaswamy",
      "image":
          "https://i.pinimg.com/474x/3e/ba/82/3eba82bfef3cd2721a2118241aaba45d.jpg",
    },
    {
      "id": 8,
      "name": "THE INDIAN CONTRACT ACT, 1872",
      "des": "R Yashod Vardhan, Chitra Narayan, Vinod Kumar",
      "image":
          "https://i.pinimg.com/474x/ac/53/9d/ac539d5017b7c0be30506fcb665dcb83.jpg",
    },
    {
      "id": 9,
      "name": "INDIAN PENAL CODE",
      "des": "Prof. S.N. MISRA",
      "image":
          "https://i.pinimg.com/474x/5c/9e/a1/5c9ea15cd765c04d8b94296cc7f26200.jpg",
    },
    {
      "id": 10,
      "name": "HINDU LAW",
      "des": "Sir Dinshaw Fardunji Mulla",
      "image":
          "https://i.pinimg.com/474x/70/ba/56/70ba569cb7f1308cfe5b627495caec50.jpg",
    },
  ];
// This list holds the data for the list view
  List<Map<String, dynamic>> _foundBooks = [];
  @override
  initState() {
    // at the beginning, all users are shown
    _foundBooks = allBooks;
    super.initState();
  }

  // This function is called whenever the text field changes
  void _runFilter(String enteredKeyword) {
    List<Map<String, dynamic>> results = [];
    if (enteredKeyword.isEmpty) {
      // if the search field is empty or only contains white-space, we'll display all users
      results = allBooks;
    } else {
      results = allBooks
          .where((book) =>
              book["name"].toLowerCase().contains(enteredKeyword.toLowerCase()))
          .toList();
      // we use the toLowerCase() method to make it case-insensitive
    }

    // Refresh the UI
    setState(() {
      _foundBooks = results;
    });
  }

  showDialogFunc(context, name, image) {
    return showDialog(
      context: context,
      builder: (context) {
        return Center(
          child: Material(
            type: MaterialType.transparency,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
              ),
              padding: const EdgeInsets.all(15),
              width: MediaQuery.of(context).size.width * 0.7,
              height: 320,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(5),
                    child: Image.network(
                      image,
                      width: 200,
                      height: 200,
                    ),
                  ),
                  const SizedBox(height: 20),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(5),
                    child: Text(
                      name,
                      style: const TextStyle(
                          fontSize: 20, fontWeight: FontWeight.w500),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
                decoration: BoxDecoration(color: Colors.blue.shade300),
                child: Column(
                  children: [],
                ))
          ],
        ),
      ),
      appBar: AppBar(
        leading: Builder(
          builder: (context) {
            return IconButton(
              icon: const Icon(Icons.menu),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
            );
          },
        ),
        backgroundColor: Colors.orange.shade300,
        title: const Text(
          "Penel Books",
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 20,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: SingleChildScrollView(
          child: Column(
            children: [
              GestureDetector(
                child: Container(
                  height: 80,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.orange.shade300,
                    borderRadius: BorderRadius.circular(8),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.black26,
                        offset: Offset(2, 4),
                        blurRadius: 5,
                        blurStyle: BlurStyle.normal,
                        spreadRadius: 2,
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Container(
                          width: 100,
                          height: 80,
                          decoration: const BoxDecoration(
                            color: Colors.purple,
                          ),
                        ),
                        Column(
                          children: [],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
