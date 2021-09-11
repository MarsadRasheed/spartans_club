import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:spartansclub/Presentations/MessagesScreen.dart';
import '../Widgets/ClubOfferWidget.dart';
import '../Widgets/EventsWidget.dart';
import '../Widgets/NewClubMemberWidget.dart';
import '../Widgets/RoundIconButton.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var scaffoldKey = GlobalKey<ScaffoldState>();
  var _searchFK = new GlobalKey<FormState>();
  late TextEditingController searchController = TextEditingController();
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        title: Text(
          "Hi, Alexey!",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        actions: [
          RoundIconButton(
            // settings
            onPressed: () {},
            iconData: Icons.settings,
          ),
          RoundIconButton(
            // club or location
            onPressed: () {},
            iconData: Icons.location_on,
          ),
          Stack(
            children: [
              RoundIconButton(
                // messages
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => MessagesScreen()));
                },
                iconData: FontAwesomeIcons.telegramPlane,
              ),
              Positioned(
                top: 3,
                right: 3,
                height: 15,
                width: 15,
                child: CircleAvatar(
                  backgroundColor: Colors.red,
                  foregroundColor: Colors.white,
                  child: Text(
                    '1',
                    style: TextStyle(fontSize: 9, fontWeight: FontWeight.w300),
                    textAlign: TextAlign.center,
                  ),
                ), //CircularAvatar
              ),
            ],
          )
        ],
      ),
      endDrawer: Drawer(
        elevation: 20,
        child: ListView(
          children: [
            Padding(
                padding: EdgeInsets.symmetric(vertical: 16),
                child: Text(
                  "Admin Panel",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
                )),
            Divider(
              height: 5,
            ),
            ListTile(
              title: Text("User Management"),
              trailing: Icon(
                Icons.arrow_forward_ios,
                size: 15,
              ),
            ),
            ListTile(
              title: Text("Event Management"),
              trailing: Icon(
                Icons.arrow_forward_ios,
                size: 15,
              ),
            ),
            ListTile(
              title: Text("Offer Management"),
              trailing: Icon(
                Icons.arrow_forward_ios,
                size: 15,
              ),
            ),
            ListTile(
              title: Text("Finance Management"),
              trailing: Icon(
                Icons.arrow_forward_ios,
                size: 15,
              ),
            ),
            ListTile(
              title: Text("Gallary Management"),
              trailing: Icon(
                Icons.arrow_forward_ios,
                size: 15,
              ),
            ),
            ListTile(
              title: Text("Announcement Management"),
              trailing: Icon(
                Icons.arrow_forward_ios,
                size: 15,
              ),
            ),
          ],
        ),
      ),
      onEndDrawerChanged: (bool change) {
        if (!change) {
          setState(() {
            _selectedIndex = 0;
          });
        }
      },
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.all(16),
              child: SizedBox(
                height: 40,
                child: Form(
                  key: _searchFK,
                  child: TextFormField(
                    textAlign: TextAlign.start,
                    keyboardType: TextInputType.number,
                    controller: searchController,
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.only(
                          top: 8.0, bottom: 8.0, left: 10.0, right: 10.0),
                      filled: true,
                      fillColor: Color(0xFF303135),
                      hintText: "Browse your club",
                      prefixIcon: Icon(
                        Icons.search,
                        color: Colors.grey.shade700,
                      ),
                      errorBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.red.shade300),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      hintStyle: TextStyle(color: Colors.grey.shade700),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      focusedErrorBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.red.shade300),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(16),
              child: Text(
                "Club Offers",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 4),
              height: 120,
              width: double.infinity,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  ClubOfferWidget(
                    onTap: () {},
                    color1: Colors.lightBlue.shade600,
                    color2: Colors.lightBlue.shade700,
                    iconData: Icons.star,
                    title: "Special",
                  ),
                  ClubOfferWidget(
                    onTap: () {},
                    color1: Colors.purple.shade600,
                    color2: Colors.purple.shade700,
                    iconData: FontAwesomeIcons.award,
                    title: "Beach Ready",
                  ),
                  ClubOfferWidget(
                    onTap: () {},
                    color1: Colors.pink.shade600,
                    color2: Colors.pink.shade700,
                    iconData: Icons.emoji_events_outlined,
                    title: "Be Chellenge",
                  ),
                ],
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.all(16),
                  child: Text(
                    "Upcoming Events",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Spacer(),
                GestureDetector(
                  onTap: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        "View all",
                        style: TextStyle(color: Colors.red.shade500),
                      ),
                      Padding(
                          padding: EdgeInsets.all(4),
                          child: Icon(
                            Icons.arrow_forward_ios,
                            size: 12,
                            color: Colors.red.shade500,
                          )),
                    ],
                  ),
                )
              ],
            ),
            Container(
              margin: EdgeInsets.only(left: 4),
              height: 230,
              width: double.infinity,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  EventsWidget(
                      eventImageUrl:
                          "https://images.unsplash.com/photo-1492144534655-ae79c964c9d7?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8Y2Fyc3xlbnwwfHwwfHw%3D&w=1000&q=80",
                      eventName: "Car Riders",
                      eventDate: "May 30"),
                  EventsWidget(
                      eventImageUrl:
                          "https://www.globalvillagespace.com/wp-content/uploads/2020/01/Amazing-Affordable-Cars-coming-to-Pakistan-in-2020.jpg",
                      eventName: "Riders meet",
                      eventDate: "Sept 30"),
                  EventsWidget(
                      eventImageUrl:
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT-w0UycKLf02A-ltyqXRc8COeYPkR9Vdtg0w&usqp=CAU",
                      eventName: "Racing Cars",
                      eventDate: "Nov 30"),
                ],
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.all(16),
                  child: Text(
                    "New Club Members",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Spacer(),
                GestureDetector(
                  onTap: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        "View all",
                        style: TextStyle(color: Colors.red.shade500),
                      ),
                      Padding(
                          padding: EdgeInsets.all(4),
                          child: Icon(
                            Icons.arrow_forward_ios,
                            size: 12,
                            color: Colors.red.shade500,
                          )),
                    ],
                  ),
                )
              ],
            ),
            Container(
              margin: EdgeInsets.only(left: 4),
              height: 130,
              width: double.infinity,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  NewClubMemberWidget(
                      memberImageUrl:
                          "https://images.unsplash.com/flagged/photo-1570612861542-284f4c12e75f?ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8cGVyc29ufGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&w=1000&q=80",
                      memberName: "George",
                      date: "1d ago"),
                  NewClubMemberWidget(
                      memberImageUrl:
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTUOMhspvJbW2JQRfxXdtr9xllbwly8nDG1N_9VRX4mI1UZCz3zgHC4klZirUE-23vrlqc&usqp=CAU",
                      memberName: "Antony",
                      date: "1d ago"),
                  NewClubMemberWidget(
                      memberImageUrl:
                          "https://st3.depositphotos.com/12985790/i/600/depositphotos_157947226-stock-photo-man-looking-at-camera.jpg",
                      memberName: "Luis",
                      date: "3d ago"),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        backgroundColor: Colors.black,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.red,
        iconSize: 22,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_filled),
            label: "Home",
            backgroundColor: Colors.black,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.directions_car),
            label: "Cars",
            backgroundColor: Colors.black,
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.add_circle,
              size: 32,
            ),
            label: "Add",
            backgroundColor: Colors.black,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.star),
            label: "Fav",
            backgroundColor: Colors.black,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
//            icon: Container(
//              margin: EdgeInsets.all(20),
//              padding: EdgeInsets.all(10),
//              decoration: BoxDecoration(
//                  borderRadius: BorderRadius.circular(100),
//                  border: Border.all(width: 2, color: Colors.white)),
//              child: Icon(
//                Icons.cancel,
//                color: Colors.white,
//              ),
//            ),
            label: "You",
            backgroundColor: Colors.black,
          ),
        ],
        elevation: 10,
        currentIndex: _selectedIndex,
        onTap: (int index) {
          setState(() {
            _selectedIndex = index;
            if (_selectedIndex == 4) {
              scaffoldKey.currentState!.openEndDrawer();
            }
          });
        },
      ),
    );
  }
}
