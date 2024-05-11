import 'package:cloud_firestore/cloud_firestore.dart';

class userModel {
  final String name;
  final String email;
  final String password;

  const userModel({
    required this.name,
    required this.email,
    required this.password,
  });

  toJson() {
    return {
      "name": name,
      "email": email,
      "password": password,
    };
  }
}

class DatabaseMethods {
  Future addResistration(
      Map<String, dynamic> resitrationInfoMap, String id) async {
    return await FirebaseFirestore.instance
        .collection("users")
        .doc(id)
        .set(resitrationInfoMap);
  }
}
