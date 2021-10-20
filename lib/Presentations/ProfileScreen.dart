import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:spartansclub/Presentations/EditingProfileScreen.dart';
import 'package:spartansclub/Presentations/SettingsScreen.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Spartan #300",
          style: TextStyle(fontWeight: FontWeight.w300),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => SettingsScreen()));
            },
            icon: Icon(Icons.settings),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 10,
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(100),
              child: Image.network(
                "https://images.unsplash.com/flagged/photo-1570612861542-284f4c12e75f?ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8cGVyc29ufGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&w=1000&q=80",
                height: 100,
                width: 100,
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                bottom: 8,
                top: 16,
              ),
              child: Text(
                "Antony Jhones",
                style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Member Since: ",
                  style: TextStyle(
                      color: Colors.grey.shade500, fontWeight: FontWeight.w300),
                ),
                Text(
                  "May 2021",
                  style: TextStyle(
                      color: Colors.grey.shade500, fontWeight: FontWeight.w300),
                ),
              ],
            ),
            Container(
              height: 35,
              margin: EdgeInsets.all(16),
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => EditingProfileScreen()));
                },
                child: Text("Edit Profile"),
                style: ElevatedButton.styleFrom(
                  primary: Colors.grey.shade700,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8)),
                ),
              ),
            ),
            _tabSection(context),
          ],
        ),
      ),
    );
  }
}

Widget _tabSection(BuildContext context) {
  return DefaultTabController(
    length: 2,
    child: Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Container(
          child: TabBar(
            indicatorColor: Colors.grey.shade500,
            unselectedLabelColor: Colors.grey.shade600,
            tabs: [
              Tab(text: "My Gallary"),
              Tab(text: "Public Gallary"),
            ],
          ),
        ),
        Container(
          //Add this to give height
          height: MediaQuery.of(context).size.height,
          child: TabBarView(
            children: [
              GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  mainAxisSpacing: 5,
                  crossAxisSpacing: 5,
                ),
                itemCount: images.length,
                itemBuilder: (BuildContext context, int index) =>
                    GridBox(imageUrl: images[index]),
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
              ),
              GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  mainAxisSpacing: 5,
                  crossAxisSpacing: 5,
                ),
                itemCount: images.length,
                itemBuilder: (BuildContext context, int index) =>
                    GridBox(imageUrl: images[index]),
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
              ),
            ],
          ),
        ),
      ],
    ),
  );
}

class GridBox extends StatelessWidget {
  late String imageUrl;

  GridBox({required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Image.network(
      imageUrl,
      fit: BoxFit.cover,
      height: 100,
      width: 100,
    );
  }
}

List<String> images = [
  "https://cdn.motor1.com/images/mgl/mrz1e/s1/coolest-cars-feature.webp",
  "https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/the-bugatti-chiron-is-shown-to-the-goodwood-festival-of-news-photo-1600106522.jpg?crop=0.641xw:1.00xh;0.127xw,0&resize=640:*",
  "https://cdn.luxe.digital/media/2020/12/16175821/most-expensive-cars-2021-Maserati-MC20-luxe-digital%402x.jpg",
  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQXMyeuAh6LuZMgu9Mz9ndRthIYUS0rAHleG4apdvMcS66zNgiQT1qFZjLdaNszyIddBpc&usqp=CAU",
  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR9TnmCV5XngEASe1B9u3os6rLcvc9rQPEozOdrzEyau0Dn6mc5rjmvZGM3l4A88ERu2K4&usqp=CAU",
  "https://cdn.motor1.com/images/mgl/mrz1e/s1/coolest-cars-feature.webp",
  "https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/the-bugatti-chiron-is-shown-to-the-goodwood-festival-of-news-photo-1600106522.jpg?crop=0.641xw:1.00xh;0.127xw,0&resize=640:*",
  "https://cdn.luxe.digital/media/2020/12/16175821/most-expensive-cars-2021-Maserati-MC20-luxe-digital%402x.jpg",
  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQXMyeuAh6LuZMgu9Mz9ndRthIYUS0rAHleG4apdvMcS66zNgiQT1qFZjLdaNszyIddBpc&usqp=CAU",
  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR9TnmCV5XngEASe1B9u3os6rLcvc9rQPEozOdrzEyau0Dn6mc5rjmvZGM3l4A88ERu2K4&usqp=CAU",
  "https://cdn.motor1.com/images/mgl/mrz1e/s1/coolest-cars-feature.webp",
  "https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/the-bugatti-chiron-is-shown-to-the-goodwood-festival-of-news-photo-1600106522.jpg?crop=0.641xw:1.00xh;0.127xw,0&resize=640:*",
  "https://cdn.luxe.digital/media/2020/12/16175821/most-expensive-cars-2021-Maserati-MC20-luxe-digital%402x.jpg",
  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQXMyeuAh6LuZMgu9Mz9ndRthIYUS0rAHleG4apdvMcS66zNgiQT1qFZjLdaNszyIddBpc&usqp=CAU",
  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR9TnmCV5XngEASe1B9u3os6rLcvc9rQPEozOdrzEyau0Dn6mc5rjmvZGM3l4A88ERu2K4&usqp=CAU",
  "https://cdn.motor1.com/images/mgl/mrz1e/s1/coolest-cars-feature.webp",
  "https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/the-bugatti-chiron-is-shown-to-the-goodwood-festival-of-news-photo-1600106522.jpg?crop=0.641xw:1.00xh;0.127xw,0&resize=640:*",
  "https://cdn.luxe.digital/media/2020/12/16175821/most-expensive-cars-2021-Maserati-MC20-luxe-digital%402x.jpg",
  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQXMyeuAh6LuZMgu9Mz9ndRthIYUS0rAHleG4apdvMcS66zNgiQT1qFZjLdaNszyIddBpc&usqp=CAU",
  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR9TnmCV5XngEASe1B9u3os6rLcvc9rQPEozOdrzEyau0Dn6mc5rjmvZGM3l4A88ERu2K4&usqp=CAU",
];
