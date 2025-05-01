import 'package:flutter/material.dart';
import 'package:instagram_ui/Screens/Post/postscreen.dart';
import 'package:instagram_ui/Screens/Profile/postscreen.dart';
import 'package:instagram_ui/Screens/Profile/tabsscreen.dart';
import 'package:instagram_ui/Widgets/uihelper.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Uihelper.customImage(imgUrl: "profile icon.png"),
              SizedBox(
                width: 5,
              ),
              Text(
                "jacob-w",
                style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                    fontWeight: FontWeight.w500),
              ),
            ],
          ),
          actions: [
            IconButton(
                onPressed: () {},
                icon: Uihelper.customImage(imgUrl: "Menu.png"))
          ],
        ),
        body: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                SizedBox(
                  width: 20,
                ),
                Uihelper.customImage(imgUrl: "my_profile.png"),
                SizedBox(
                  width: 30,
                ),
                Row(
                  children: [
                    Column(
                      children: [
                        Text(
                          "54",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w500),
                        ),
                        Text(
                          "Post",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w500),
                        )
                      ],
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    Column(
                      children: [
                        Text(
                          "834",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w500),
                        ),
                        Text(
                          "Followers",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w500),
                        )
                      ],
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    Column(
                      children: [
                        Text(
                          "162",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w500),
                        ),
                        Text(
                          "Following",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w500),
                        )
                      ],
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              children: [
                SizedBox(
                  width: 20,
                ),
                Text(
                  "Mr_Haider",
                  style: TextStyle(fontSize: 13, fontWeight: FontWeight.w500),
                ),
              ],
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
                  "Digital goodies designer @pixsellz",
                  style: TextStyle(fontSize: 13, fontWeight: FontWeight.w500),
                ),
              ],
            ),
            Row(
              children: [
                SizedBox(
                  width: 20,
                ),
                Text(
                  "Everything is designed.",
                  style: TextStyle(fontSize: 13, fontWeight: FontWeight.w500),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            SizedBox(
              height: 40,
              width: 360,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(6))),
                  onPressed: () {},
                  child: Text(
                    "Edit Profile",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                    ),
                  )),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                SizedBox(
                  width: 10,
                ),
                Column(
                  children: [
                    Container(
                      height: 64,
                      width: 64,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.black,
                          border: Border.all(color: Colors.grey.shade700)),
                      child: Center(
                        child: Icon(
                          Icons.add,
                          size: 40,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "New",
                      style: TextStyle(
                        fontSize: 12,
                      ),
                    )
                  ],
                ),
                SizedBox(
                  width: 10,
                ),
                Column(
                  children: [
                    Container(
                      clipBehavior: Clip.antiAlias,
                      height: 64,
                      width: 64,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.black,
                          border: Border.all(color: Colors.grey.shade700)),
                      child: Uihelper.customImage(imgUrl: "highlight.png"),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "Friends",
                      style: TextStyle(
                        fontSize: 12,
                      ),
                    )
                  ],
                ),
                SizedBox(
                  width: 10,
                ),
                Column(
                  children: [
                    Container(
                      clipBehavior: Clip.antiAlias,
                      height: 64,
                      width: 64,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.black,
                          border: Border.all(color: Colors.grey.shade700)),
                      child: Uihelper.customImage(imgUrl: "highlight (1).png"),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "Sport",
                      style: TextStyle(
                        fontSize: 12,
                      ),
                    )
                  ],
                ),
                SizedBox(
                  width: 10,
                ),
                Column(
                  children: [
                    Container(
                      clipBehavior: Clip.antiAlias,
                      height: 64,
                      width: 64,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.black,
                          border: Border.all(color: Colors.grey.shade700)),
                      child: Uihelper.customImage(imgUrl: "highlight (2).png"),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "Design",
                      style: TextStyle(
                        fontSize: 12,
                      ),
                    )
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 50,
              child: AppBar(
                bottom: TabBar(
                    indicatorColor: Colors.white,
                    indicatorSize: TabBarIndicatorSize.tab,
                    tabs: [
                      Tab(
                        icon: Uihelper.customImage(imgUrl: "Grid Icon.png"),
                      ),
                      Tab(
                        icon: Uihelper.customImage(imgUrl: "Tags Icon.png"),
                      ),
                    ]),
              ),
            ),
            Expanded(
              child: TabBarView(children: [
                PostsScreen(),
                TabsScreen(),
              ]),
            )
          ],
        ),
      ),
    );
  }
}
