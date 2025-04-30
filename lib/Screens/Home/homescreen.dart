import 'package:flutter/material.dart';
import 'package:instagram_ui/Widgets/uihelper.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  var arrContent = [
    {
      "img":
          "https://buffer.com/library/content/images/size/w1200/2023/10/free-images.jpg",
      "name": "Your Story"
    },
    {
      "img":
          "https://plus.unsplash.com/premium_photo-1664474619075-644dd191935f?fm=jpg&q=60&w=3000&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8aW1hZ2V8ZW58MHx8MHx8fDA%3D",
      "name": "karennne"
    },
    {
      "img":
          "https://photoaid.com/en/tools/_next/static/images/young-man-using-face-id-for-unlock-mobile-phone-ou-2021-08-30-06-38-15-utc-photoaidcom-2x-ai-zoom-df16fe69a772e00c82255493e4b5966d.jpg",
      "name": "zackjohn"
    },
    {
      "img":
          "https://tse1.mm.bing.net/th/id/OET.7252da000e8341b2ba1fb61c275c1f30?w=594&h=594&c=7&rs=1&o=5&pid=1.9",
      "name": "kieron_d"
    },
    {
      "img":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT-ANXgeXNaGRsZALaAb9A7ndkbAR3CUQl3nw&s",
      "name": "Art in Aurora"
    },
    {
      "img":
          "https://i.pinimg.com/736x/75/b8/b0/75b8b01589dac97a840f25b96c261e3a.jpg",
      "name": "Ayeza"
    },
    {
      "img":
          "https://i.pinimg.com/236x/50/f2/9b/50f29be0db936d2121d0580fb8685446.jpg",
      "name": "Ali"
    },
    {
      "img":
          "https://cdn.lazyshop.com/files/9c375535-802d-4631-b284-43b398cad259/product/7123fa1f31f5330ff693c7145998d6ac.jpeg?x-oss-process=style%2Fthumb",
      "name": "mr_haider"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 88,
        backgroundColor: Colors.black38,
        leading: Uihelper.customImage(imgUrl: "Camera Icon.png"),
        title: Uihelper.customImage(imgUrl: "Instagram_lightLogo.png"),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {}, icon: Uihelper.customImage(imgUrl: "IGTV.png")),
          IconButton(
              onPressed: () {},
              icon: Uihelper.customImage(imgUrl: "Messanger.png"))
        ],
      ),
      body: Column(
        children: [
          SizedBox(
            height: 80,
            child: Padding(
              padding: const EdgeInsets.only(left: 20),
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(left: 5),
                    child: CircleAvatar(
                      radius: 30,
                      backgroundImage:
                          NetworkImage(arrContent[index]["img"].toString()),
                    ),
                  );
                },
                itemCount: arrContent.length,
                scrollDirection: Axis.horizontal,
              ),
            ),
          ),
          SizedBox(
            height: 30,
            child: Padding(
              padding: const EdgeInsets.only(left: 20),
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      arrContent[index]["name"].toString(),
                      style: TextStyle(fontSize: 12),
                    ),
                  );
                },
                itemCount: arrContent.length,
                scrollDirection: Axis.horizontal,
              ),
            ),
          ),
          SizedBox(
            height: 8,
          ),
          Container(
            height: 54,
            width: double.infinity,
            color: Colors.black38,
            child: ListTile(
              leading: Uihelper.customImage(imgUrl: "Oval.png"),
              title: Text(
                "Joshua_I",
                style: TextStyle(fontSize: 13, color: Color(0xFFF9F9F9)),
              ),
              subtitle: Text(
                "Tokyo, Japan",
                style: TextStyle(fontSize: 11, color: Color(0xFFF9F9F9)),
              ),
              trailing: Uihelper.customImage(imgUrl: "More Icon.png"),
            ),
          ),
          Container(
              height: 375,
              width: double.infinity,
              clipBehavior: Clip.antiAlias,
              decoration: BoxDecoration(),
              child: Image.asset(
                "assets/images/Rectangle.png",
                fit: BoxFit.cover,
              )),
          SizedBox(
            height: 5,
          ),
          Row(
            children: [
              SizedBox(
                width: 20,
              ),
              Uihelper.customImage(imgUrl: "Like.png"),
              SizedBox(
                width: 20,
              ),
              Uihelper.customImage(imgUrl: "Comment.png"),
              SizedBox(
                width: 20,
              ),
              Uihelper.customImage(imgUrl: "Share.png"),
              SizedBox(
                width: 230,
              ),
              Row(
                children: [Uihelper.customImage(imgUrl: "Save.png")],
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
              Uihelper.customImage(imgUrl: "dp.png"),
              SizedBox(
                width: 5,
              ),
              Text(
                "Liked by sujal_dave and 44,686 others",
                style: TextStyle(fontSize: 13, color: Color(0xFFF9F9F9)),
              )
            ],
          ),
          Row(
            children: [
              SizedBox(
                width: 20,
              ),
              Text(
                "Mr_Haider",
                style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFFF9F9F9)),
              ),
              Text(
                " The game in Japan was amazing",
                style: TextStyle(fontSize: 13, color: Color(0xFFF9F9F9)),
              ),
            ],
          )
        ],
      ),
    );
  }
}
