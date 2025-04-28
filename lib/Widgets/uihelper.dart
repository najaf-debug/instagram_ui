import 'package:flutter/material.dart';

class Uihelper {
  static customTextField({
    required TextEditingController controller,
    required String text,
    required bool tohide,
    required TextInputType textinputtype,
  }) {
    return Container(
      height: 50,
      width: 343,
      decoration: BoxDecoration(
          color: Color(0xFF121212),
          borderRadius: BorderRadius.circular(5),
          border: Border.all(color: Colors.grey.shade700)),
      child: Padding(
        padding: const EdgeInsets.only(left: 15),
        child: TextField(
          controller: controller,
          obscureText: tohide,
          keyboardType: textinputtype,
          decoration: InputDecoration(
              hintText: text,
              hintStyle: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.normal,
                  color: Colors.white54),
              border: InputBorder.none),
        ),
      ),
    );
  }

  static customTextButton(
      {required VoidCallback callback, required String text}) {
    return TextButton(
        onPressed: () {
          callback();
        },
        child: Text(
          text,
          style: TextStyle(color: Color(0xFF3797EF), fontSize: 12),
        ));
  }

  static customImage({required String imgUrl}) {
    return Image.asset("assets/images/$imgUrl");
  }

  static customButton(
      {required VoidCallback callback, required String buttonname}) {
    return SizedBox(
      height: 45,
      width: 343,
      child: ElevatedButton(
          onPressed: () {
            callback();
          },
          style: ElevatedButton.styleFrom(
              backgroundColor: Color(0xFF3797EF),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5))),
          child: Center(
              child: Text(
            buttonname,
            style: TextStyle(fontSize: 14, color: Colors.white),
          ))),
    );
  }
}
