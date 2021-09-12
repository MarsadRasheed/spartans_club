import 'package:flutter/material.dart';
import 'package:spartansclub/Widgets/ClubMemberWidget.dart';

class ClubMembersScreen extends StatelessWidget {
  var _searchFK = new GlobalKey<FormState>();
  late TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Club Members"),
      ),
      body: Column(
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
                    hintText: "Search",
                    prefixIcon: Icon(
                      Icons.search,
                      color: Colors.grey.shade600,
                    ),
                    errorBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.red.shade300),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    hintStyle: TextStyle(color: Colors.grey.shade600),
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
          ClubMemberWidget(
            imageUrl:
                "https://images.unsplash.com/flagged/photo-1570612861542-284f4c12e75f?ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8cGVyc29ufGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&w=1000&q=80",
            userName: "Antony Jhones",
            duration: "1d ago",
          ),
          ClubMemberWidget(
            imageUrl:
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTUOMhspvJbW2JQRfxXdtr9xllbwly8nDG1N_9VRX4mI1UZCz3zgHC4klZirUE-23vrlqc&usqp=CAU",
            userName: "Gangstashit1",
            duration: "13 ago",
          ),
          ClubMemberWidget(
            imageUrl:
                "https://st3.depositphotos.com/12985790/i/600/depositphotos_157947226-stock-photo-man-looking-at-camera.jpg",
            userName: "Arthem Antonenko",
            duration: "24d ago",
          ),
          ClubMemberWidget(
            imageUrl:
                "https://images.unsplash.com/flagged/photo-1570612861542-284f4c12e75f?ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8cGVyc29ufGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&w=1000&q=80",
            userName: "Mr Larry",
            duration: "1m ago",
          ),
        ],
      ),
    );
  }
}
