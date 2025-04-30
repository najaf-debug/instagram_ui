// ignore_for_file: must_be_immutable

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instagram_ui/Widgets/uihelper.dart';

class MessageScreen extends StatelessWidget {
  MessageScreen({super.key});
  TextEditingController searchController = TextEditingController();
  var arrContent = [
    {
      "img": "Profile Photo.png",
      "name": "m_humphrey",
      "chats": "Have a nice day, bro!"
    },
    {
      "img": "Profile Photo (1).png",
      "name": "karennne",
      "chats": "I heard this is a good movie"
    },
    {
      "img": "Profile Photo (2).png",
      "name": "martini_rond",
      "chats": "See you on the next meeting!"
    },
    {
      "img": "Profile Photo (3).png",
      "name": "andrewww_",
      "chats": "Sounds good 😂😂😂"
    },
    {
      "img": "Profile Photo (4).png",
      "name": "kiero_d",
      "chats": "The new design looks cool, b…"
    },
    {
      "img": "Profile Photo (5).png",
      "name": "maxjacobson",
      "chats": "Thank you, bro!"
    },
    {
      "img": "Profile Photo (6).png",
      "name": "jamie.franco",
      "chats": "Yeap, I'm going to travel in To…"
    },
    {
      "img": "Profile Photo (7).png",
      "name": "joshua_l",
      "chats": "Instagram UI is pretty good"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 88,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(CupertinoIcons.back)),
        title: Text(
          "Mr_Haider",
          style: TextStyle(
              fontSize: 16,
              color: Color(0xFFF9F9F9),
              fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.add,
                color: Colors.white,
                size: 24,
              )),
        ],
      ),
      body: Column(
        children: [
          Row(
            children: [
              SizedBox(
                width: 10,
              ),
              Container(
                  height: 36,
                  width: 375,
                  decoration: BoxDecoration(
                      color: Color(0xFF262626),
                      borderRadius: BorderRadius.circular(10)),
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 3),
                    child: TextField(
                      controller: searchController,
                      decoration: InputDecoration(
                          hintText: "Search",
                          prefixIcon:
                              Uihelper.customImage(imgUrl: "search.png"),
                          border: InputBorder.none,
                          hintStyle: TextStyle(
                              fontWeight: FontWeight.normal,
                              color: Color(0xFF8E8E93))),
                    ),
                  )),
            ],
          ),
          Expanded(
            child: ListView.builder(
              itemBuilder: (context, index) {
                return ListTile(
                  leading: CircleAvatar(
                    radius: 20,
                    backgroundImage: AssetImage(
                        "assets/images/${arrContent[index]["img"].toString()}"),
                  ),
                  title: Text(
                    arrContent[index]["name"].toString(),
                    style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text(
                    arrContent[index]["chats"].toString(),
                    style: TextStyle(color: Colors.grey, fontSize: 13),
                  ),
                  trailing: Uihelper.customImage(imgUrl: "Camera Icon.png"),
                );
              },
              itemCount: arrContent.length,
            ),
          ),
        ],
      ),
      floatingActionButton: SizedBox(
        height: 60,
        width: double.infinity,
        child: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(backgroundColor: Color(0xFF121212)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Uihelper.customImage(
                  imgUrl: "blue_camera.png",
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  "Camera",
                  style: TextStyle(fontSize: 13, color: Color(0xFF3897F0)),
                )
              ],
            )),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
