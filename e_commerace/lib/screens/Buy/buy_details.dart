import 'package:e_commerace/constants.dart';
import 'package:e_commerace/screens/Buy/payment_details.dart';
import 'package:e_commerace/screens/more/ordermodel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';

class BuyDetails extends StatefulWidget {
  const BuyDetails({super.key});

  @override
  State<BuyDetails> createState() => _BuyDetailsState();
}

class _BuyDetailsState extends State<BuyDetails> {
  String coordinates = "No Location found";
  String address = 'No Address found';
  bool scanning = false;

  checkPermission() async {
    bool serviceEnabled;
    LocationPermission permission;

    serviceEnabled = await Geolocator.isLocationServiceEnabled();

    print(serviceEnabled);

    if (!serviceEnabled) {
      await Geolocator.openLocationSettings();
      return;
    }

    permission = await Geolocator.checkPermission();

    print(permission);

    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();

      if (permission == LocationPermission.denied) {
        Fluttertoast.showToast(msg: 'Request Denied !');
        return;
      }
    }

    if (permission == LocationPermission.deniedForever) {
      Fluttertoast.showToast(msg: 'Denied Forever !');
      return;
    }

    getLocation();
  }

  getLocation() async {
    setState(() {
      scanning = true;
    });

    try {
      Position position = await Geolocator.getCurrentPosition(
          desiredAccuracy: LocationAccuracy.high);

      coordinates =
          'Latitude : ${position.latitude} \nLongitude : ${position.longitude}';

      List<Placemark> result =
          await placemarkFromCoordinates(position.latitude, position.longitude);

      if (result.isNotEmpty) {
        address =
            '${result[0].name}, ${result[0].locality} ${result[0].administrativeArea}';
      }
    } catch (e) {
      Fluttertoast.showToast(msg: "${e.toString()}");
    }

    setState(() {
      scanning = false;
    });
  }

  final TextEditingController _enterNameController = TextEditingController();
  final TextEditingController _enterNoController = TextEditingController();
  final TextEditingController _enterEmailController = TextEditingController();
  final TextEditingController _enterAddController = TextEditingController();

  void clear() {
    _enterNameController.clear();
    _enterNoController.clear();
    _enterEmailController.clear();
    _enterAddController.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber.shade300,
        title: const Text(
          "Add Details",
          style: TextStyle(
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            children: [
              const SizedBox(
                height: 10,
              ),
              TextFormField(
                decoration: const InputDecoration(
                  hintText: "Enter Your Name",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(12),
                    ),
                  ),
                ),
                controller: _enterNameController,
              ),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                decoration: const InputDecoration(
                  hintText: "Mobile No",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(12),
                    ),
                  ),
                ),
                controller: _enterNoController,
              ),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                decoration: const InputDecoration(
                  hintText: "E-mail",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(12),
                    ),
                  ),
                ),
                controller: _enterEmailController,
              ),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                decoration: const InputDecoration(
                  hintText: "Adress",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(12),
                    ),
                  ),
                ),
                controller: _enterAddController,
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  const Expanded(child: Divider()),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Text(
                      "OR",
                      style: Theme.of(context).textTheme.labelMedium,
                    ),
                  ),
                  const Expanded(child: Divider()),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    checkPermission();
                  });
                },
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  padding: const EdgeInsets.symmetric(
                      vertical: 13.0, horizontal: 30.0),
                  decoration: BoxDecoration(
                    color: Colors.blue.shade200,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: const Center(
                    child: Text(
                      "Use Your Current Location 📌",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),

              scanning
                  ? const SpinKitThreeBounce(
                      color: Colors.amber,
                      size: 20,
                    )
                  : Text(
                      '${address}',
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
              // const Spacer(),
              const SizedBox(
                height: 100,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: kprimaryColor,
                  minimumSize: const Size(double.infinity, 55),
                ),
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => OrderModel(
                        name: _enterNameController.text,
                        phone: _enterNoController.text,
                        email: _enterEmailController.text,
                        address: _enterAddController.text,
                      ),
                    ),
                  );
                },
                child: const Text(
                  "Save & Continue",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    color: Colors.white,
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
