import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:get/get_core/get_core.dart';
import 'package:resistration_firebase/view/update_screen.dart';

class DashBoard extends StatefulWidget {
  const DashBoard({super.key});

  @override
  State createState() => _DashBoard();
}

class _DashBoard extends State<DashBoard> {
  TextEditingController mailcontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple.shade200,
        title: Text("Register users list"),
      ),
      backgroundColor: Colors.grey.shade100,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: StreamBuilder<QuerySnapshot>(
          stream: FirebaseFirestore.instance
              .collection('users')
              .where("")
              .snapshots(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.active) {
              if (snapshot.hasData) {
                return ListView.builder(
                  itemCount: snapshot.data!.docs.length,
                  itemBuilder: (context, index) {
                    var name = snapshot.data!.docs[index]['name'];
                    var email = snapshot.data!.docs[index]['email'];
                    var docId = snapshot.data!.docs[index].id;
                    return ListTile(
                      contentPadding: const EdgeInsets.all(2),
                      shape: Border.all(color: Colors.black),
                      trailing: SizedBox(
                        width: 70,
                        child: Row(
                          children: [
                            GestureDetector(
                              onTap: () {
                                Get.to(
                                  () => const UpdateScreen(),
                                  arguments: {
                                    'name': name,
                                    'email': email,
                                  },
                                );
                              },
                              child: const Icon(Icons.edit_document),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            InkWell(
                              onTap: () {
                                FirebaseFirestore.instance
                                    .collection('users')
                                    .doc(docId)
                                    .delete();
                              },
                              child: const Icon(Icons.delete_outline),
                            ),
                          ],
                        ),
                      ),
                      leading: CircleAvatar(
                        child: Text("${index + 1}"),
                      ),
                      title:
                          Text("Name : ${snapshot.data!.docs[index]['name']}"),
                      subtitle: Text(
                          "Email : ${snapshot.data!.docs[index]['email']}"),
                    );
                  },
                );
              }
            }
            return const Center(
              child: CircularProgressIndicator(),
            );
          },
        ),
      ),
    );
  }
}
