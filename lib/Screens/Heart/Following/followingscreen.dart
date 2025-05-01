import 'package:flutter/material.dart';
import 'package:instagram_ui/Widgets/uihelper.dart';

class FollowingScreen extends StatelessWidget {
  FollowingScreen({super.key});
  var arrcontent = [
    {
      "img": "Profile Photo.png",
      "txt": "karennne liked 3 posts. 3h",
      "lastimg": "you_trailing.png"
    },
    {
      "img": "Profile Photo (1).png",
      "txt": "kiero_d, zackjohn and craig_love liked joshua_l photo. 3h",
      "lastimg": "you_trailing.png"
    },
    {
      "img": "Profile Photo (2).png",
      "txt": "kiero_d started following craig_love. 3h",
      "lastimg": "you_trailing.png"
    },
    {
      "img": "Profile Photo (3).png",
      "txt": "craig_love liked 8 posts. 3h",
      "lastimg": "you2_trailing.png"
    },
    {
      "img": "Profile Photo (4).png",
      "txt": "maxjacobson and zackjohn liked mis_potter’s post. 3h",
      "lastimg": "you2_trailing.png"
    },
    {
      "img": "Profile Photo (5).png",
      "txt": "maxjacobson and craig_love liked martini_rond’s post. 3h",
      "lastimg": "you2_trailing.png"
    },
    {
      "img": "Profile Photo (6).png",
      "txt": "karennne liked martini_rond’s comment: @martini_rond Nice! 3h",
      "lastimg": "you2_trailing.png"
    },
    {
      "img": "Profile Photo (7).png",
      "txt": "maxjacobson liked 3 posts. 3h",
      "lastimg": "you2_trailing.png"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 20),
        child: ListView.builder(
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.only(top: 15),
              child: ListTile(
                leading: Uihelper.customImage(
                    imgUrl: arrcontent[index]["img"].toString()),
                title: Text(
                  arrcontent[index]["txt"].toString(),
                  style: TextStyle(fontSize: 13, fontWeight: FontWeight.w600),
                ),
                trailing: Uihelper.customImage(
                    imgUrl: arrcontent[index]["lastimg"].toString()),
              ),
            );
          },
          itemCount: arrcontent.length,
        ),
      ),
    );
  }
}
