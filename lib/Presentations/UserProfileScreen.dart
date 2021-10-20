import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:spartansclub/Presentations/EditingProfileScreen.dart';

class UserProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Spartan #400",
          style: TextStyle(fontWeight: FontWeight.w400),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => EditingProfileScreen()),
              );
            },
            icon: Icon(
              FontAwesomeIcons.edit,
              size: 20,
              color: Colors.grey.shade300,
            ),
          ),
          IconButton(
            onPressed: () {
              showAlertDialog(context);
            },
            icon: Icon(
              FontAwesomeIcons.ban,
              size: 20,
              color: Colors.grey.shade300,
            ),
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
                onPressed: () {},
                child: Text("Message"),
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

void showAlertDialog(BuildContext context) {
  Widget cancelButton = FlatButton(
    child: Text("Cancel"),
    onPressed: () {},
  );
  Widget continueButton = FlatButton(
    child: Text("Continue"),
    onPressed: () {},
  );

  AlertDialog alert = AlertDialog(
    title: Text("Suspend user"),
    content: Text("Are you sure you want to suspend Antony Jhones ?"),
    actions: [
      cancelButton,
      continueButton,
    ],
  );

  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
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
              Tab(text: "Gallary"),
              Tab(text: "Cars"),
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
                    GridBox1(imageUrl: images[index]),
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
              ),
              GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 5,
                  crossAxisSpacing: 5,
                ),
                itemCount: details.length,
                itemBuilder: (BuildContext context, int index) =>
                    GridBox2(gridDetails: details[index]),
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

class GridDetails {
  late String imageUrl;
  late String carName;
  late String uploadDate;

  GridDetails(
      {required this.imageUrl,
      required this.carName,
      required this.uploadDate});
}

class GridBox2 extends StatelessWidget {
  late GridDetails gridDetails;

  GridBox2({required this.gridDetails});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Padding(
        padding: EdgeInsets.all(8),
        child: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Color(0xFF222327),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(10.0),
                child: Image.network(
                  this.gridDetails.imageUrl,
                  width: double.infinity,
                  height: 100.0,
                  fit: BoxFit.cover,
                ),
              ),
              Padding(
                padding: EdgeInsets.all(8),
                child: Text(
                  this.gridDetails.carName,
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Colors.white),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 8, bottom: 8),
                child: Text(
                  this.gridDetails.uploadDate,
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w200,
                      color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

List<GridDetails> details = [
  GridDetails(
      imageUrl:
          "https://cdn.motor1.com/images/mgl/mrz1e/s1/coolest-cars-feature.webp",
      carName: "Ford Mustang",
      uploadDate: "2013"),
  GridDetails(
      imageUrl:
          "https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/the-bugatti-chiron-is-shown-to-the-goodwood-festival-of-news-photo-1600106522.jpg?crop=0.641xw:1.00xh;0.127xw,0&resize=640:*",
      carName: "Nissan 350Z",
      uploadDate: "2018"),
  GridDetails(
      imageUrl:
          "https://cdn.luxe.digital/media/2020/12/16175821/most-expensive-cars-2021-Maserati-MC20-luxe-digital%402x.jpg",
      carName: "BMW 3 Series",
      uploadDate: "2015"),
  GridDetails(
      imageUrl:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQXMyeuAh6LuZMgu9Mz9ndRthIYUS0rAHleG4apdvMcS66zNgiQT1qFZjLdaNszyIddBpc&usqp=CAU",
      carName: "Tayota Supra",
      uploadDate: "2016"),
  GridDetails(
      imageUrl:
          "https://cdn.motor1.com/images/mgl/mrz1e/s1/coolest-cars-feature.webp",
      carName: "Marcedes M9",
      uploadDate: "2016"),
];

class GridBox1 extends StatelessWidget {
  late String imageUrl;

  GridBox1({required this.imageUrl});

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
