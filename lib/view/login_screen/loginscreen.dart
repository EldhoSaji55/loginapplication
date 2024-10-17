import 'package:flutter/material.dart';
import 'package:loginapplication/controller/homeScreenController.dart';
import 'package:loginapplication/view/home_screen/home_screen.dart';
import 'package:loginapplication/view/registration_screen/registrationscreen.dart';

class Loginscreen extends StatefulWidget {
  const Loginscreen({super.key});

  @override
  State<Loginscreen> createState() => _LoginscreenState();
}

class _LoginscreenState extends State<Loginscreen> {
  // Email and Password Objects
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  //formKey
  final _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback(
      (timeStamp) async {
        await Homescreencontroller.initsharedprefs();
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    bool? isChecked = true;

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
                    "Sign in to Your Account",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 40,
                  ),

                  // Email Field.
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
                          border: OutlineInputBorder(),
                          hintText: "Your Password",
                          suffixIcon: GestureDetector(
                              onTap: () {},
                              child: Icon(Icons.remove_red_eye_outlined)),
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
                        } else if (!regUsers.any((user) =>
                            user[emailController.text] ==
                            passwordController.text)) {
                          return "Incorrect Email and Password";
                        }
                        return null;
                      }),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Checkbox(
                            tristate: true,
                            value: isChecked,
                            onChanged: (bool? value) {},
                          ),
                          Text("Remember Me")
                        ],
                      ),
                      TextButton(
                          onPressed: () {},
                          child: Text(
                            "Forgot Password",
                            style: TextStyle(color: Colors.blue[900]),
                          ))
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      var email = emailController.text.toString();
                      var password = passwordController.text.toString();
                      Homescreencontroller.getvalue(email);
                      if (password == Homescreencontroller.password) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => HomeScreen(),
                            ));
                      } else {
                        print(Homescreencontroller.password);
                      }
                    },
                    child: Text("Sign in"),
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
                Text("Don't have an account?"),
                TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Registrationscreen(),
                          ));
                    },
                    child: Text(
                      "Sign Up",
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
