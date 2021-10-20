import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:spartansclub/Widgets/ClubOfferWidget.dart';

class ClubOfferDetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(
              pinned: true,
              floating: true,
              expandedHeight: 250,
              flexibleSpace: FlexibleSpaceBar(
                centerTitle: true,
                title: Text(
                  "Beach Ready",
                  style: TextStyle(
                    fontWeight: FontWeight.w300,
                  ),
                ),
                stretchModes: [StretchMode.zoomBackground],
                background: Image.network(
                  "https://thumbs.dreamstime.com/b/car-event-car-event-sm-mall-pampanga-super-nice-137498651.jpg",
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ];
        },
        body: Padding(
          padding: EdgeInsets.all(8),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.all(8),
                child: Text(
                  "Beach Ready",
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(8),
                child: Text(
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit. In cursus velit, iaculis eu. Egestas tellus pretium sit faucibus viverra euismod. Libero pellentesque sed eget elit dictum viverra interdum integer orci.",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 8,right: 8,top: 24,bottom: 12),
                child: Row(
                  children: [
                    Text(
                      "Promocode :",
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "DHFSDHS2362",
                      style: TextStyle(fontSize: 17),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 8,right: 8,top: 25,bottom: 8),
                child: Text(
                  "Other club offers",
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 2),
                height: 120,
                width: double.infinity,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    ClubOfferWidget(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ClubOfferDetailScreen()));
                      },
                      color1: Colors.lightBlue.shade600,
                      color2: Colors.lightBlue.shade700,
                      iconData: Icons.star,
                      title: "Special",
                    ),
                    ClubOfferWidget(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ClubOfferDetailScreen()));
                      },
                      color1: Colors.purple.shade600,
                      color2: Colors.purple.shade700,
                      iconData: FontAwesomeIcons.award,
                      title: "Beach Ready",
                    ),
                    ClubOfferWidget(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ClubOfferDetailScreen()));
                      },
                      color1: Colors.pink.shade600,
                      color2: Colors.pink.shade700,
                      iconData: Icons.emoji_events_outlined,
                      title: "Be Chellenge",
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
