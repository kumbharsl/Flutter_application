import 'package:flutter/material.dart';
import 'package:pcmc_water_ui/home.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool nightMode = false;
  bool flag = true;
  List loginCredentials = [];
  String userNamee = 'sagar';
  String pass = '1234';

  ///CONTROLLERS
  TextEditingController userNameTextEditingController = TextEditingController();
  TextEditingController passwordTextEditingController = TextEditingController();

  // KEYS
  GlobalKey<FormFieldState> userNameKey = GlobalKey<FormFieldState>();
  GlobalKey<FormFieldState> passwordKey = GlobalKey<FormFieldState>();

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.lightGreen.shade200,
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        // centerTitle: true,
        title: const Text(
          'Welcome PCMC Water Online Billing',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w700,
            fontSize: 20,
          ),
        ),
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              "assets/image.png",
            ),
            // opacity: 0.3,
            fit: BoxFit.fill,
          ),
        ),
        child: Padding(
          padding:
              const EdgeInsets.only(top: 10, bottom: 0, right: 20, left: 20),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/pcmc.png',
                  height: 120,
                  width: 180,
                ),
                const SizedBox(
                  height: 25,
                ),
                TextFormField(
                  controller: userNameTextEditingController,
                  // key: userNameKey,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.grey.shade300,
                    hintText: "Enter username",
                    label: const Text(
                      "Enter username",
                      style: TextStyle(color: Colors.black),
                    ),
                    border: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Colors.black,
                        width: 5,
                      ),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    prefixIcon: const Icon(
                      Icons.person,
                    ),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Please enter username";
                    } else {
                      return null;
                    }
                  },
                  keyboardType: TextInputType.emailAddress,
                ),
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                  controller: userNameTextEditingController,
                  // key: userNameKey,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.grey.shade300,
                    hintText: "Enter Customer ID",
                    label: const Text(
                      "Enter Customer Id",
                      style: TextStyle(color: Colors.black),
                    ),
                    border: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Colors.black,
                        width: 5,
                      ),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    prefixIcon: const Icon(
                      Icons.person,
                    ),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Please enter username";
                    } else {
                      return null;
                    }
                  },
                  keyboardType: TextInputType.emailAddress,
                ),
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                  controller: passwordTextEditingController,
                  // key: passwordKey,
                  obscureText: flag,
                  obscuringCharacter: "*",
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.grey.shade300,
                    hintText: "Enter password",
                    label: const Text(
                      "Enter password",
                      style: TextStyle(color: Colors.black),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    prefixIcon: const Icon(
                      Icons.lock,
                    ),
                    suffixIcon: GestureDetector(
                      onTap: () {
                        setState(() {});
                      },
                      child: const Icon(
                        Icons.remove_red_eye_outlined,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  validator: (value) {
                    // print("In PASSWORD VALIDATOR");
                    if (value == null || value.isEmpty) {
                      return "Please enter password";
                    } else {
                      return null;
                    }
                  },
                ),
                const SizedBox(
                  height: 30,
                ),
                SizedBox(
                  width: 300,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () {
                      bool loginValidated = _formKey.currentState!.validate();
                      if (loginValidated) {
                        if (userNameTextEditingController.text == userNamee &&
                            passwordTextEditingController.text == pass) {
                          setState(
                            () {
                              Navigator.of(context).pushReplacement(
                                MaterialPageRoute(
                                  builder: (context) => HomeScreen(),
                                ),
                              );
                              ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                  backgroundColor: Colors.green,
                                  content: Text(
                                    "Login Successful",
                                    style: TextStyle(
                                      fontSize: 20,
                                    ),
                                  ),
                                ),
                              );
                            },
                          );
                        } else {
                          if (userNameTextEditingController.text != userNamee &&
                              passwordTextEditingController.text != pass) {
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                backgroundColor: Colors.red,
                                content: Text(
                                  "Login Failed, Please Check Details",
                                  style: TextStyle(
                                    fontSize: 20,
                                  ),
                                ),
                              ),
                            );
                          }
                        }
                      }
                    },
                    style: const ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(
                        Color.fromRGBO(2, 167, 177, 1),
                      ),
                    ),
                    child: const Text(
                      "Login",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),
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
