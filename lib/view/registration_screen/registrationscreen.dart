import 'package:flutter/material.dart';
import 'package:loginapplication/controller/homeScreenController.dart';
import 'package:loginapplication/view/login_screen/loginscreen.dart';
import 'package:shared_preferences/shared_preferences.dart';

List<Map<String, String>> regUsers = [];

class Registrationscreen extends StatefulWidget {
  const Registrationscreen({super.key});

  @override
  State<Registrationscreen> createState() => _RegistrationscreenState();
}

class _RegistrationscreenState extends State<Registrationscreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();

  // Map

  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Form(
              key: _formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 40,
                  ),
                  Text(
                    "Sign Up for Free",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  TextFormField(
                    controller: emailController,
                    decoration: InputDecoration(
                        hintText: "Your Email Address",
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(color: Colors.grey)),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(color: Colors.grey)),
                        errorBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.red)),
                        focusedErrorBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.red))),
                    validator: (value) {
                      if (!value!.contains("@") || value.isEmpty) {
                        return "Enter a valid E-mail ID";
                      } else {
                        return null;
                      }
                    },
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  TextFormField(
                    controller: passwordController,
                    decoration: InputDecoration(
                        suffixIcon: Icon(Icons.visibility_outlined),
                        hintText: "Your Password",
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(color: Colors.grey)),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(color: Colors.grey)),
                        errorBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.red)),
                        focusedErrorBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.red))),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Please Enter your Password";
                      } else if (value.length < 6) {
                        return "Password Must contain more than 6 characters";
                      } else if (!RegExp(
                              r'^(?=.*[A-Z])(?=.*[a-z])(?=.*\d)(?=.*[!@#\$&*~]).+$')
                          .hasMatch(value)) {
                        return "Password Must contain one capital letter, small letter, digit and a character";
                      } else {
                        return null;
                      }
                    },
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                        suffixIcon: Icon(Icons.visibility_outlined),
                        hintText: "Your Confirmed Password",
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(color: Colors.grey)),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(color: Colors.grey)),
                        errorBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.red)),
                        focusedErrorBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.red))),
                    validator: (value) {
                      if (value != passwordController.text) {
                        return "Password Does not match";
                      } else {
                        return null;
                      }
                    },
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  ElevatedButton(
                    onPressed: () async {
                      var email = emailController.text.toString();
                      var password = passwordController.text.toString();
                      Homescreencontroller.addvalue(email, password);
                      // if (_formKey.currentState!.validate()) {
                      //   regUsers.add(
                      //       {emailController.text: passwordController.text});
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Loginscreen(),
                          ));
                    },
                    child: Text("Sign Up"),
                    style: ButtonStyle(
                      backgroundColor: WidgetStatePropertyAll(Colors.blue[700]),
                      foregroundColor: WidgetStatePropertyAll(Colors.white),
                      minimumSize: WidgetStatePropertyAll(Size.fromHeight(50)),
                      shape: WidgetStatePropertyAll(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Already have an Account"),
                TextButton(
                    onPressed: () {
                      Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Loginscreen(),
                        ),
                        (route) => false,
                      );
                    },
                    child: Text(
                      "Sign In",
                      style: TextStyle(color: Colors.blue[700]),
                    )),
              ],
            )
          ],
        ),
      ),
    );
  }
}
