import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:get/instance_manager.dart';
import 'package:resistration_firebase/view/resistration_list.dart';

class UpdateScreen extends StatefulWidget {
  const UpdateScreen({super.key});

  @override
  State<UpdateScreen> createState() => _UpdateScreen();
}

class _UpdateScreen extends State<UpdateScreen> {
  TextEditingController namecontroller = TextEditingController();
  TextEditingController emailcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple.shade200,
        title: const Text("Update User Info"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          child: Column(
            children: [
              const SizedBox(
                height: 25,
              ),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Email',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                controller: emailcontroller
                  ..text = Get.arguments['email'].toString(),
              ),
              const SizedBox(
                height: 25,
              ),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Name',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                controller: namecontroller
                  ..text = Get.arguments['name'].toString(),
              ),
              const SizedBox(
                height: 25,
              ),
              ElevatedButton(
                onPressed: () async {
                  await FirebaseFirestore.instance
                      .collection('users')
                      .doc(Get.arguments['docId'])
                      .update(
                    {
                      "email": emailcontroller.text.trim(),
                      "name": namecontroller.text.trim(),
                    },
                  ).then(
                    (value) => {
                      Get.offAll(() => DashBoard()),
                    },
                  );
                  Get.snackbar(
                      backgroundColor: Colors.green,
                      "Update",
                      "Updated Successfully");
                },
                child: const Text("Update"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
