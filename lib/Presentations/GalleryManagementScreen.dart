import 'package:flutter/material.dart';

class GalleryManagementScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Gallery Management",
        ),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.add)),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            GalleryManagementWidget(
              imageUrl:
                  "https://images.unsplash.com/photo-1492144534655-ae79c964c9d7?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8Y2Fyc3xlbnwwfHwwfHw%3D&w=1000&q=80",
            ),
            GalleryManagementWidget(
              imageUrl:
                  "https://www.globalvillagespace.com/wp-content/uploads/2020/01/Amazing-Affordable-Cars-coming-to-Pakistan-in-2020.jpg",
            ),
            GalleryManagementWidget(
              imageUrl:
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT-w0UycKLf02A-ltyqXRc8COeYPkR9Vdtg0w&usqp=CAU",
            ),
          ],
        ),
      ),
    );
  }
}

class GalleryManagementWidget extends StatelessWidget {
  late final String imageUrl;

  GalleryManagementWidget({required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16),
      child: Container(
        width: double.infinity,
        height: 200,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Color(0xFF222327),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.network(
                imageUrl,
                height: 150.0,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            IntrinsicHeight(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    child: TextButton(
                      onPressed: () {},
                      style: TextButton.styleFrom(
                        primary: Colors.blueAccent,
                      ),
                      child: Text("Publish in gallery"),
                    ),
                  ),
                  VerticalDivider(),
                  Expanded(
                    child: TextButton(
                      onPressed: () {},
                      style: TextButton.styleFrom(
                        primary: Colors.red,
                      ),
                      child: Text("Decline"),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
