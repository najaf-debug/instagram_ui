// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:instagram_ui/Widgets/uihelper.dart';

class SearchScreen extends StatelessWidget {
  SearchScreen({super.key});
  TextEditingController searchController = TextEditingController();
  var arrContent = [
    {
      "img":
          "https://images.unsplash.com/photo-1575936123452-b67c3203c357?fm=jpg&q=60&w=3000&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8aW1hZ2V8ZW58MHx8MHx8fDA%3D"
    },
    {
      "img":
          "https://media.istockphoto.com/id/814423752/photo/eye-of-model-with-colorful-art-make-up-close-up.jpg?s=612x612&w=0&k=20&c=l15OdMWjgCKycMMShP8UK94ELVlEGvt7GmB_esHWPYE="
    },
    {
      "img":
          "https://images.unsplash.com/photo-1593696954577-ab3d39317b97?fm=jpg&q=60&w=3000&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTF8fGZyZWUlMjBpbWFnZXN8ZW58MHx8MHx8fDA%3D"
    },
    {
      "img":
          "https://static.vecteezy.com/system/resources/thumbnails/036/324/708/small/ai-generated-picture-of-a-tiger-walking-in-the-forest-photo.jpg"
    },
    {
      "img":
          "https://images.pexels.com/photos/414612/pexels-photo-414612.jpeg?cs=srgb&dl=pexels-souvenirpixels-414612.jpg&fm=jpg"
    },
    {
      "img":
          "https://media.istockphoto.com/id/1317323736/photo/a-view-up-into-the-trees-direction-sky.jpg?s=612x612&w=0&k=20&c=i4HYO7xhao7CkGy7Zc_8XSNX_iqG0vAwNsrH1ERmw2Q="
    },
    {
      "img":
          "https://static.vecteezy.com/system/resources/thumbnails/035/342/329/small/ai-generated-an-underwater-creature-with-the-ability-to-change-its-appearance-mimicking-its-surroundings-like-a-chameleon-ai-generative-photo.jpg"
    },
    {
      "img":
          "https://t3.ftcdn.net/jpg/02/70/35/00/360_F_270350073_WO6yQAdptEnAhYKM5GuA9035wbRnVJSr.jpg"
    },
    {
      "img":
          "https://iso.500px.com/wp-content/uploads/2018/05/Blog-marketplace-getty500px-48429366-nologo-3000x2000.png"
    },
    {
      "img":
          "https://images.pexels.com/photos/5232463/pexels-photo-5232463.jpeg?auto=compress&cs=tinysrgb&fit=crop&fp-y=0.4000000059604645&h=500&w=1400&dpr=1"
    },
    {
      "img":
          "https://media.istockphoto.com/id/1419410282/photo/silent-forest-in-spring-with-beautiful-bright-sun-rays.jpg?s=612x612&w=0&k=20&c=UHeb1pGOw6ozr6utsenXHhV19vW6oiPIxDqhKCS2Llk="
    },
    {
      "img":
          "https://cdn.imago-images.com/Images/header/hello-we-are-imago_03-2023.jpg"
    },
    {
      "img":
          "https://media.springernature.com/lw703/springer-static/image/art%3A10.1038%2F528452a/MediaObjects/41586_2015_Article_BF528452a_Figg_HTML.jpg"
    },
    {
      "img":
          "https://th-thumbnailer.cdn-si-edu.com/FL1u6Fs5T1tUo1RAuUZmdw5ssXA=/1000x750/filters:no_upscale():focal(518x341:519x342)/https://tf-cmsv2-smithsonianmag-media.s3.amazonaws.com/filer_public/1a/3d/1a3d1353-7317-4f5f-8b89-23cd066a4535/jason_gulley_wildlife_photographer_of_the_year.jpg"
    },
    {
      "img":
          "https://img.freepik.com/free-photo/vertical-shot-river-surrounded-by-mountains-meadows-scotland_181624-27881.jpg?semt=ais_hybrid&w=740"
    },
    {
      "img":
          "https://images.unsplash.com/photo-1594728613852-cac78bd0daba?fm=jpg&q=60&w=3000&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Nnx8YmVhdXRpZnVsJTIwdmlld3xlbnwwfHwwfHx8MA%3D%3D"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          Row(
            children: [
              SizedBox(
                width: 10,
              ),
              Container(
                height: 36,
                width: 340,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0xFF262626)),
                child: TextField(
                  controller: searchController,
                  decoration: InputDecoration(
                    hintText: "Search",
                    prefixIcon: Uihelper.customImage(imgUrl: "search.png"),
                    hintStyle: TextStyle(
                        fontSize: 16,
                        color: Color(0xFF8E8E93),
                        fontWeight: FontWeight.normal),
                    border: InputBorder.none,
                  ),
                ),
              ),
              SizedBox(
                width: 15,
              ),
              Uihelper.customImage(imgUrl: "Live.png"),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              SizedBox(
                width: 15,
              ),
              Container(
                height: 32,
                width: 70,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.white24),
                  borderRadius: BorderRadius.circular(3),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Uihelper.customImage(imgUrl: "Icon (2).png"),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      "IGTV",
                      style: TextStyle(fontSize: 14, color: Color(0xFFF9F9F9)),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 5,
              ),
              Container(
                height: 32,
                width: 70,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.white24),
                  borderRadius: BorderRadius.circular(3),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Uihelper.customImage(imgUrl: "Icon.png"),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      "Shop",
                      style: TextStyle(fontSize: 14, color: Color(0xFFF9F9F9)),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 5,
              ),
              Container(
                height: 32,
                width: 70,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.white24),
                  borderRadius: BorderRadius.circular(3),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Style",
                      style: TextStyle(fontSize: 14, color: Color(0xFFF9F9F9)),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 5,
              ),
              Container(
                height: 32,
                width: 70,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.white24),
                  borderRadius: BorderRadius.circular(3),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Sports",
                      style: TextStyle(fontSize: 14, color: Color(0xFFF9F9F9)),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 5,
              ),
              Container(
                height: 32,
                width: 53,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.white24),
                  borderRadius: BorderRadius.circular(3),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Auto",
                      style: TextStyle(fontSize: 14, color: Color(0xFFF9F9F9)),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Expanded(
            child: GridView.builder(
              gridDelegate:
                  SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
              itemBuilder: (context, index) {
                return Container(
                  clipBehavior: Clip.antiAlias,
                  height: 124,
                  width: 124,
                  decoration: BoxDecoration(),
                  child: Image.network(
                    arrContent[index]["img"].toString(),
                    fit: BoxFit.cover,
                  ),
                );
              },
              itemCount: arrContent.length,
            ),
          ),
        ],
      ),
    );
  }
}
