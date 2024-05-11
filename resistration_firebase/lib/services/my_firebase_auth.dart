import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:resistration_firebase/services/database.dart';
import 'package:resistration_firebase/view/resistration_list.dart';

class AuthMethods {
  final FirebaseAuth auth = FirebaseAuth.instance;

  getCurrentUser() async {
    return await auth.currentUser;
  }

  signInWithGoogle(BuildContext context) async {
    final FirebaseAuth firebaseAuth = FirebaseAuth.instance;

    UserCredential result = await firebaseAuth.signInWithEmailAndPassword(
        email: "email", password: "");

    User? userDetails = result.user;

    if (result != null) {
      Map<String, dynamic> userInfoMap = {
        "email": userDetails!.email,
        "name": userDetails.displayName,
        "imgUrl": userDetails.photoURL,
        "id": userDetails.uid
      };
      await DatabaseMethods()
          .addUser(userDetails.uid, userInfoMap)
          .then((value) {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => DashBoard()));
      });
    }
  }
}
