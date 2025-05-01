import 'package:flutter/material.dart';
import 'package:instagram_ui/Widgets/uihelper.dart';

class YouScreen extends StatelessWidget {
  const YouScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Container(
          height: 48,
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.only(top: 15, left: 20),
            child: Text(
              "Follow Request",
              style: TextStyle(fontSize: 15, color: Color(0xFFF9F9F9)),
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          height: 106,
          width: double.infinity,
          child: Column(
            children: [
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    "New",
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 5,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 5),
                child: ListTile(
                  leading: Uihelper.customImage(imgUrl: "you_1.png"),
                  title: Text(
                    "karennne liked your photo. 1h",
                    style: TextStyle(
                      fontSize: 13,
                    ),
                  ),
                  trailing: Uihelper.customImage(imgUrl: "you_trailing.png"),
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 5,
        ),
        Row(
          children: [
            SizedBox(
              width: 20,
            ),
            Text(
              "Today",
              style: TextStyle(
                fontSize: 15,
              ),
            ),
          ],
        ),
        SizedBox(
          height: 5,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 5),
          child: ListTile(
            leading: Uihelper.customImage(imgUrl: "you_2.png"),
            title: Text(
              "kiero_d, zackjohn and 26 others \nliked your photo. 3h",
              style: TextStyle(
                fontSize: 13,
              ),
            ),
            trailing: Uihelper.customImage(imgUrl: "you_trailing.png"),
          ),
        ),
        SizedBox(
          height: 5,
        ),
        Row(
          children: [
            SizedBox(
              width: 20,
            ),
            Text(
              "This week",
              style: TextStyle(
                fontSize: 15,
              ),
            ),
          ],
        ),
        SizedBox(
          height: 5,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 5),
          child: ListTile(
            leading: Uihelper.customImage(imgUrl: "you_3.png"),
            title: Text(
              "craig_love mentioned you in a comment: @jacob_w exactly..",
              style: TextStyle(
                fontSize: 13,
              ),
            ),
            trailing: Uihelper.customImage(imgUrl: "you2_trailing.png"),
          ),
        ),
        SizedBox(
          height: 5,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 5),
          child: ListTile(
            leading: Uihelper.customImage(imgUrl: "you_4.png"),
            title: Text(
              "martini_rond started following you. 3d",
              style: TextStyle(
                fontSize: 13,
              ),
            ),
            trailing: Container(
              height: 28,
              width: 90,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.white),
                  borderRadius: BorderRadius.circular(3)),
              child: Center(child: Text("Message")),
            ),
          ),
        ),
        SizedBox(
          height: 5,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 5),
          child: ListTile(
            leading: Uihelper.customImage(imgUrl: "you_5.png"),
            title: Text(
              "maxjacobson started following you. 3d",
              style: TextStyle(
                fontSize: 13,
              ),
            ),
            trailing: Container(
              height: 28,
              width: 90,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.white),
                  borderRadius: BorderRadius.circular(3)),
              child: Center(child: Text("Message")),
            ),
          ),
        ),
        SizedBox(
          height: 5,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 5),
          child: ListTile(
            leading: Uihelper.customImage(imgUrl: "you_6.png"),
            title: Text(
              "mis_potter started following you. 3d",
              style: TextStyle(
                fontSize: 13,
              ),
            ),
            trailing: Container(
              height: 28,
              width: 90,
              decoration: BoxDecoration(
                  color: Colors.blue,
                  border: Border.all(color: Colors.blue),
                  borderRadius: BorderRadius.circular(3)),
              child: Center(
                  child: Text(
                "Message",
                style: TextStyle(color: Colors.white),
              )),
            ),
          ),
        ),
      ],
    ));
  }
}
