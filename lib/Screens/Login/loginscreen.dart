// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:instagram_ui/Screens/BottomNav/bottomnav.dart';
import 'package:instagram_ui/Screens/SignUp/signup.dart';
import 'package:instagram_ui/Widgets/uihelper.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordControllr = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Uihelper.customImage(imgUrl: "logo.png"),
            SizedBox(
              height: 20,
            ),
            Uihelper.customTextField(
                controller: emailController,
                text: "Enter your email",
                tohide: false,
                textinputtype: TextInputType.name),
            SizedBox(
              height: 15,
            ),
            Uihelper.customTextField(
              controller: passwordControllr,
              text: "Enter your password",
              tohide: true,
              textinputtype: TextInputType.none,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: EdgeInsets.only(right: 15),
                  child: Uihelper.customTextButton(
                      callback: () {}, text: "Forgot pasword?"),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Uihelper.customButton(
                callback: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => BottomNav()));
                },
                buttonname: "Log in"),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Uihelper.customImage(imgUrl: "fb_icon.png"),
                Uihelper.customTextButton(
                    callback: () {}, text: "Log in with Facebook")
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "OR",
              style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Don't have an account?",
                  style: TextStyle(fontSize: 15, color: Colors.white),
                ),
                Uihelper.customTextButton(
                    callback: () {
                      Navigator.pushReplacement(context,
                          MaterialPageRoute(builder: (context) => SignUp()));
                    },
                    text: "Sign Up")
              ],
            )
          ],
        ),
      ),
    );
  }
}
