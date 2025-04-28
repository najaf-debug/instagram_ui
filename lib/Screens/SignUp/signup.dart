// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:instagram_ui/Screens/Login/loginscreen.dart';
import 'package:instagram_ui/Widgets/uihelper.dart';

class SignUp extends StatelessWidget {
  SignUp({super.key});
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController usernameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Uihelper.customImage(imgUrl: "logo.png"),
            SizedBox(
              height: 10,
            ),
            Uihelper.customTextField(
                controller: emailController,
                text: "Enter your email",
                tohide: false,
                textinputtype: TextInputType.emailAddress),
            SizedBox(
              height: 10,
            ),
            Uihelper.customTextField(
                controller: passwordController,
                text: "Enter your password",
                tohide: true,
                textinputtype: TextInputType.text),
            SizedBox(
              height: 10,
            ),
            Uihelper.customTextField(
                controller: usernameController,
                text: "Enter username",
                tohide: false,
                textinputtype: TextInputType.name),
            SizedBox(
              height: 30,
            ),
            Uihelper.customButton(callback: () {}, buttonname: "Sign Up"),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Already have an account?",
                  style: TextStyle(color: Colors.grey, fontSize: 15),
                ),
                Uihelper.customTextButton(
                    callback: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => LoginScreen()));
                    },
                    text: "Log In")
              ],
            )
          ],
        ),
      ),
    );
  }
}
