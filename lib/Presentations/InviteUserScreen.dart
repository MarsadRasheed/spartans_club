import 'package:flutter/material.dart';

class InviteUserScreen extends StatelessWidget {
  var _creatingIdFK = new GlobalKey<FormState>();
  late TextEditingController creatingIdController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Creating ID",
          style: TextStyle(fontWeight: FontWeight.w400),
        ),
      ),
      body: Stack(
        children: [
          Align(
            alignment: Alignment.center,
            child: Padding(
              padding: EdgeInsets.all(16),
              child: SizedBox(
                height: 40,
                child: Form(
                  key: _creatingIdFK,
                  child: TextFormField(
                    textAlign: TextAlign.start,
                    keyboardType: TextInputType.number,
                    controller: creatingIdController,
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.only(
                          top: 8.0, bottom: 8.0, left: 10.0, right: 10.0),
                      filled: true,
                      fillColor: Color(0xFF303135),
                      hintText: "Some id",
                      errorBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.red.shade300),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      hintStyle: TextStyle(color: Colors.grey.shade500),
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
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
                margin: EdgeInsets.all(12),
                width: double.infinity,
                height: 45,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: Colors.red.shade900,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      )),
                  onPressed: () {},
                  child: Text("Copy"),
                )),
          ),
        ],
      ),
    );
  }
}
