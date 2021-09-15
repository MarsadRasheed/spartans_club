import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:spartansclub/Utils/MapStyle.dart';
import 'package:spartansclub/Widgets/AttendingWidget.dart';
import 'package:spartansclub/Widgets/DiscussionMessageWidget.dart';

class ClubEventDetailScreen extends StatefulWidget {
  @override
  _ClubEventDetailScreenState createState() => _ClubEventDetailScreenState();
}

class _ClubEventDetailScreenState extends State<ClubEventDetailScreen> {
  Set<Marker> markers = {};
  var lan = 22.5448131;
  var log = 88.3403691;
  late BitmapDescriptor bitmapDescriptor;
  Color _color = Colors.red.shade900;
  String status = "Attend";
  late TextEditingController commentController = TextEditingController();

  void _setCustomMarker() async {
    bitmapDescriptor = await BitmapDescriptor.fromAssetImage(
        ImageConfiguration(), 'images/marker.png');
  }

  @override
  void initState() {
    super.initState();
    _setCustomMarker();
  }

  void _onMapCreated(GoogleMapController controller) {
    controller.setMapStyle(MapStyle.mapStyle);
    setState(() {
      markers.add(
        Marker(
          markerId: MarkerId("id-1"),
          position: LatLng(lan, log),
//          icon: bitmapDescriptor,
          infoWindow: InfoWindow(
              title: "Victoria Memorial",
              snippet: "Car riders event will he here!"),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(
        length: 3,
        child: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              SliverAppBar(
                expandedHeight: 200.0,
                floating: false,
                pinned: true,
                flexibleSpace: FlexibleSpaceBar(
                    background: Image.network(
                  "https://images.unsplash.com/photo-1492144534655-ae79c964c9d7?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8Y2Fyc3xlbnwwfHwwfHw%3D&w=1000&q=80",
                  fit: BoxFit.cover,
                )),
              ),
              SliverPersistentHeader(
                delegate: _SliverAppBarDelegate(
                  TabBar(
                    labelColor: Colors.white,
                    unselectedLabelColor: Colors.grey.shade700,
                    indicatorColor: Colors.red.shade900,
                    tabs: [
                      Tab(text: "Information"),
                      Tab(text: "Attending"),
                      Tab(text: "Discussion"),
                    ],
                  ),
                ),
                pinned: true,
              ),
            ];
          },
          body: TabBarView(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                      padding: EdgeInsets.only(left: 16, top: 22),
                      child: Text(
                        "Car riders event",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 22,
                        ),
                      )),
                  SizedBox(
                    height: 5,
                  ),
                  Padding(
                      padding: EdgeInsets.only(left: 16, top: 4, bottom: 4),
                      child: Text(
                        "May 30",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w300,
                        ),
                      )),
                  Padding(
                    padding: EdgeInsets.all(16),
                    child: Text(
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. In cursus velit, iaculis eu. Egestas tellus pretium sit faucibus viverra euismod. Libero pellentesque sed eget elit dictum viverra interdum integer orci.",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ),
                  Container(
                    height: 200,
                    margin: EdgeInsets.symmetric(vertical: 8),
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: GoogleMap(
                      onMapCreated: _onMapCreated,
                      markers: markers,
                      initialCameraPosition: CameraPosition(
                        target: LatLng(lan, log),
                        zoom: 15,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(12),
                    child: Row(
                      children: [
                        Expanded(
                            flex: 1,
                            child: Text(
                              "\$50.00",
                              style: TextStyle(
                                  fontSize: 23, fontWeight: FontWeight.bold),
                            )),
                        Expanded(
                          flex: 2,
                          child: Container(
                            margin: EdgeInsets.all(12),
                            height: 35,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  primary: _color,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  )),
                              onPressed: () {
                                setState(() {
                                  status = "Attending";
                                  _color = Colors.grey.shade600;
                                });
                              },
                              child: Text(status),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              Column(
                children: [
                  AttendingWidget(
                    imageUrl:
                        "https://st3.depositphotos.com/12985790/i/600/depositphotos_157947226-stock-photo-man-looking-at-camera.jpg",
                    userName: "Arthem Antonenko",
                  ),
                  AttendingWidget(
                    imageUrl:
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTUOMhspvJbW2JQRfxXdtr9xllbwly8nDG1N_9VRX4mI1UZCz3zgHC4klZirUE-23vrlqc&usqp=CAU",
                    userName: "Gangstashit1",
                  ),
                  AttendingWidget(
                    imageUrl:
                        "https://images.unsplash.com/flagged/photo-1570612861542-284f4c12e75f?ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8cGVyc29ufGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&w=1000&q=80",
                    userName: "Antony Jhones",
                  ),
                ],
              ),
              Stack(
                children: [
                  Column(
                    children: [
                      DiscussionMessageWidget(
                        userName: "Luis Peter",
                        userImgUrl:
                            "https://st3.depositphotos.com/12985790/i/600/depositphotos_157947226-stock-photo-man-looking-at-camera.jpg",
                        message:
                            "Hello everyone, i'm very excited for this event!! Hello everyone, i'm very excited for this event!! Hello everyone, i'm very excited for this event!! Hello everyone, i'm very excited for this event!! Hello everyone, i'm very excited for this event!! Hello everyone, i'm very excited for this event!!",
                        messageTime: "1d ago",
                      ),
                      DiscussionMessageWidget(
                        userImgUrl:
                            "https://images.unsplash.com/flagged/photo-1570612861542-284f4c12e75f?ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8cGVyc29ufGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&w=1000&q=80",
                        message: "Thanks!",
                        messageTime: "5:36 AM",
                        userName: "Alexander",
                      ),
                      DiscussionMessageWidget(
                        userImgUrl:
                            "https://st3.depositphotos.com/12985790/i/600/depositphotos_157947226-stock-photo-man-looking-at-camera.jpg",
                        message: "Are you interested ?",
                        messageTime: "3:00 PM",
                        userName: "George",
                      ),
                    ],
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Color(0xff292929),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      margin: EdgeInsets.all(8),
                      padding: EdgeInsets.only(left: 10, bottom: 8, top: 8),
                      height: 50,
                      width: double.infinity,
                      child: Row(
                        children: <Widget>[
                          Expanded(
                            child: TextField(
                              decoration: InputDecoration(
                                  hintText: "Add Comment",
                                  border: InputBorder.none),
                              controller: commentController,
                            ),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          FloatingActionButton(
                            backgroundColor: Color(0xff292929),
                            elevation: 0,
                            onPressed: () {},
                            child: Icon(FontAwesomeIcons.telegramPlane,
                                color: Colors.white, size: 20),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _SliverAppBarDelegate extends SliverPersistentHeaderDelegate {
  _SliverAppBarDelegate(this._tabBar);

  final TabBar _tabBar;

  @override
  double get minExtent => _tabBar.preferredSize.height;

  @override
  double get maxExtent => _tabBar.preferredSize.height;

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return new Container(
      child: _tabBar,
    );
  }

  @override
  bool shouldRebuild(_SliverAppBarDelegate oldDelegate) {
    return false;
  }
}
