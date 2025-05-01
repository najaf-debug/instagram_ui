import 'package:flutter/material.dart';

class PostsScreen extends StatelessWidget {
  PostsScreen({super.key});
  var arrContent = [
    {
      "img":
          "https://images.pexels.com/photos/674010/pexels-photo-674010.jpeg?cs=srgb&dl=pexels-anjana-c-169994-674010.jpg&fm=jpg"
    },
    {
      "img":
          "https://imgv3.fotor.com/images/slider-image/A-clear-image-of-a-woman-wearing-red-sharpened-by-Fotors-image-sharpener.jpg"
    },
    {
      "img":
          "https://images.unsplash.com/photo-1607992922515-7e38329e65d4?fm=jpg&q=60&w=3000&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8bmF0dXJlJTIwaW1hZ2VzfGVufDB8fDB8fHww",
    },
    {
      "img":
          "https://media.istockphoto.com/id/1419410282/photo/silent-forest-in-spring-with-beautiful-bright-sun-rays.jpg?s=612x612&w=0&k=20&c=UHeb1pGOw6ozr6utsenXHhV19vW6oiPIxDqhKCS2Llk="
    },
    {
      "img":
          "https://thumbs.dreamstime.com/b/autumn-forest-meerdaal-belgium-63020645.jpg"
    },
    {
      "img":
          "https://burst.shopifycdn.com/photos/fallen-trees-over-river.jpg?width=1000&format=pjpg&exif=0&iptc=0"
    },
    {
      "img":
          "https://images.unsplash.com/photo-1512100356356-de1b84283e18?fm=jpg&q=60&w=3000&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8bWFsZGl2ZXN8ZW58MHx8MHx8fDA%3D"
    },
    {
      "img":
          "https://hips.hearstapps.com/hmg-prod/images/maldives-girls-holiday-1-66b5d876941be.jpg"
    },
    {
      "img":
          "https://res.cloudinary.com/enchanting/q_70,f_auto,c_fill,g_face/enchanting-web/2023/09/Enchanting-Travels-Maldives-3.jpg"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
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
    );
  }
}
