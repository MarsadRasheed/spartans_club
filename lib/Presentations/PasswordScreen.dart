import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PasswordScreen extends StatefulWidget {
  @override
  _PasswordScreenState createState() => _PasswordScreenState();
}

class _PasswordScreenState extends State<PasswordScreen> {
  TextEditingController currentPasswordController = TextEditingController();
  var currentPasswordFK = new GlobalKey<FormState>();
  bool cVisibility = true;

  TextEditingController newPasswordController = TextEditingController();
  var newPasswordFK = new GlobalKey<FormState>();
  bool nVisibility = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Change Password"),
        centerTitle: true,
      ),
      body: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.all(16),
                child: Text("Current Password"),
              ),
              Padding(
                padding:
                    EdgeInsets.only(left: 16, right: 16, bottom: 16, top: 8),
                child: Form(
                  key: currentPasswordFK,
                  child: TextFormField(
                    textAlign: TextAlign.start,
                    keyboardType: TextInputType.text,
                    controller: currentPasswordController,
                    obscureText: cVisibility,
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.only(
                          top: 8.0, bottom: 8.0, left: 10.0, right: 10.0),
                      filled: true,
                      fillColor: Color(0xFF303135),
                      hintText: "Your current password",
                      suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            cVisibility = !cVisibility;
                          });
                        },
                        icon: Icon(!cVisibility
                            ? Icons.visibility
                            : Icons.visibility_off),
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
              Padding(
                padding: EdgeInsets.all(16),
                child: Text("New Password"),
              ),
              Padding(
                padding:
                    EdgeInsets.only(left: 16, right: 16, bottom: 16, top: 8),
                child: Form(
                  key: newPasswordFK,
                  child: TextFormField(
                    textAlign: TextAlign.start,
                    keyboardType: TextInputType.text,
                    controller: newPasswordController,
                    obscureText: nVisibility,
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.only(
                          top: 8.0, bottom: 8.0, left: 10.0, right: 10.0),
                      filled: true,
                      fillColor: Color(0xFF303135),
                      hintText: "Your new password",
                      suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            nVisibility = !nVisibility;
                          });
                        },
                        icon: Icon(!nVisibility
                            ? Icons.visibility
                            : Icons.visibility_off),
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
              SizedBox(
                height: 50,
              ),
            ],
          ),
          Align(
            alignment: Alignment.center,
            child: Container(
              margin: EdgeInsets.all(12),
              height: 35,
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: Colors.red.shade900,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    )),
                onPressed: () {
                  setState(() {});
                },
                child: Text("Continue"),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
