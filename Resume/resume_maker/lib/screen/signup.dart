import 'package:flutter/material.dart';
import 'package:resume_maker/screen/login.dart';
import 'package:resume_maker/widgets/custom_scaffold.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreen();
}

class _SignUpScreen extends State<SignUpScreen> {
  String email = "", name = "", password = "";

  // String email = "", password = "", name = "";
  TextEditingController namecontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();
  TextEditingController mailcontroller = TextEditingController();
  TextEditingController retypepasswordcontroller = TextEditingController();
  TextEditingController phonenumbercontroller = TextEditingController();

  // addSignUP(){
  //   MyFirebaseAuth.addSignUp(namecontroller.text, mailcontroller.text, passwordcontroller.text);
  // }

  final _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        // get started form
        child: Form(
          key: _formkey,
          child: Padding(
            padding: const EdgeInsets.all(12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 250,
                ),
                // get started text

                // full name

                TextFormField(
                  // cursorHeight: 15,
                  controller: namecontroller,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter Full name';
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    // label: const Text('Full Name'),
                    hintText: 'Enter Full Name',
                    hintStyle: const TextStyle(
                      color: Colors.black26,
                    ),
                    border: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Colors.black12, // Default border color
                      ),
                      borderRadius: BorderRadius.circular(40),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Colors.black, // Default border color
                      ),
                      borderRadius: BorderRadius.circular(40),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                // email

                TextFormField(
                  controller: mailcontroller,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter Email';
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    alignLabelWithHint: true,
                    // label: const Text('Email'),
                    hintText: 'Enter Email',
                    hintStyle: const TextStyle(
                      color: Colors.black26,
                    ),
                    border: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Colors.black, // Default border color
                      ),
                      borderRadius: BorderRadius.circular(40),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Colors.black, // Default border color
                      ),
                      borderRadius: BorderRadius.circular(40),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                // password

                TextFormField(
                  controller: passwordcontroller,
                  obscureText: true,
                  obscuringCharacter: '*',
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter Password';
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    // label: const Text('Password'),
                    hintText: 'Enter Password',
                    hintStyle: const TextStyle(
                      color: Colors.black26,
                    ),
                    border: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Colors.black12, // Default border color
                      ),
                      borderRadius: BorderRadius.circular(40),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Colors.black, // Default border color
                      ),
                      borderRadius: BorderRadius.circular(40),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                TextFormField(
                  controller: retypepasswordcontroller,
                  obscureText: true,
                  obscuringCharacter: '*',
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter Re-Type Password';
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    // label: const Text('Password'),
                    hintText: 'Re-Type Password',
                    hintStyle: const TextStyle(
                      color: Colors.black26,
                    ),
                    border: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Colors.black12, // Default border color
                      ),
                      borderRadius: BorderRadius.circular(40),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Colors.black, // Default border color
                      ),
                      borderRadius: BorderRadius.circular(40),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                TextFormField(
                  controller: phonenumbercontroller,
                  obscureText: true,
                  // obscuringCharacter: '*',
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter PhoneNumber';
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    // label: const Text('Password'),
                    hintText: 'Enter Phone Number',
                    hintStyle: const TextStyle(
                      color: Colors.black26,
                    ),
                    border: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Colors.black12, // Default border color
                      ),
                      borderRadius: BorderRadius.circular(40),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Colors.black, // Default border color
                      ),
                      borderRadius: BorderRadius.circular(40),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                // signup button
                GestureDetector(
                  onTap: () async {
                    if (_formkey.currentState!.validate()) {
                      setState(() {
                        email = mailcontroller.text;
                        name = namecontroller.text;
                        password = passwordcontroller.text;
                      });
                    }
                  },
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    padding: const EdgeInsets.symmetric(
                        vertical: 13.0, horizontal: 30.0),
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 255, 149, 0),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: const Center(
                      child: Text(
                        "Sign Up",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 22.0,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                ),
                // already have an account
                const SizedBox(
                  height: 25,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Already have an account? ',
                      style: TextStyle(
                        color: Colors.black45,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).pushReplacement(
                          MaterialPageRoute(
                            builder: (_) => const LoginScreen(),
                          ),
                        );
                      },
                      child: const Text(
                        'Log in',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.blue,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20.0,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
