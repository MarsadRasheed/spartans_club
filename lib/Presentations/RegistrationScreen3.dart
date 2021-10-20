import 'package:flutter/material.dart';

import 'LoginScreen.dart';
import 'RegistrationScreen4.dart';

class RegistrationScreen3 extends StatefulWidget {
  @override
  _RegistrationScreen3State createState() => _RegistrationScreen3State();
}

class _RegistrationScreen3State extends State<RegistrationScreen3> {
  var refCodeFK = new GlobalKey<FormState>();
  TextEditingController refCodeController = TextEditingController();

  var dayFK = new GlobalKey<FormState>();
  TextEditingController dayController = TextEditingController();
  var monthFK = new GlobalKey<FormState>();
  TextEditingController monthController = TextEditingController();
  var yearFK = new GlobalKey<FormState>();
  TextEditingController yearController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => RegistrationScreen4(),
                ),
              );
            },
            icon: Icon(Icons.arrow_forward),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height - 50,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 16),
                child: Text(
                  "Let's register your account",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40),
                ),
              ),
              Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 16,right: 16,bottom: 16),
                    width: double.infinity,
                    height: 150,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xFF303135),
                    ),
                    alignment: Alignment.center,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.camera_alt,
                          size: 30,
                          color: Colors.red,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Upload Profile Picture",
                          style: TextStyle(
                              fontWeight: FontWeight.w300,
                              color: Colors.grey.shade700,
                              fontSize: 10),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 16, right: 16, bottom: 16, top: 8),
                    child: Form(
                      key: refCodeFK,
                      child: TextFormField(
                        textAlign: TextAlign.start,
                        keyboardType: TextInputType.text,
                        controller: refCodeController,
                        decoration: InputDecoration(
                          contentPadding: const EdgeInsets.only(
                              top: 8.0, bottom: 8.0, left: 10.0, right: 10.0),
                          filled: true,
                          fillColor: Color(0xFF303135),
                          hintText: "Refrence Code",
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
                    padding: EdgeInsets.only(left: 8,right: 8),
                    child: Row(
                      children: [
                        Expanded(
                          child: Padding(
                            padding:
                            EdgeInsets.all(8),
                            child: Form(
                              key: dayFK,
                              child: TextFormField(
                                textAlign: TextAlign.start,
                                keyboardType: TextInputType.number,
                                controller: dayController,
                                decoration: InputDecoration(
                                  contentPadding: const EdgeInsets.all(8),
                                  filled: true,
                                  fillColor: Color(0xFF303135),
                                  hintText: "Day",
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
                        Expanded(
                          child: Padding(
                            padding:
                            EdgeInsets.all(8),
                            child: Form(
                              key: monthFK,
                              child: TextFormField(
                                textAlign: TextAlign.start,
                                keyboardType: TextInputType.number,
                                controller: monthController,
                                decoration: InputDecoration(
                                  contentPadding: const EdgeInsets.all(8),
                                  filled: true,
                                  fillColor: Color(0xFF303135),
                                  hintText: "Email",
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
                        Expanded(
                          child: Padding(
                            padding:
                            EdgeInsets.all(8),
                            child: Form(
                              key: yearFK,
                              child: TextFormField(
                                textAlign: TextAlign.start,
                                keyboardType: TextInputType.number,
                                obscureText: false,
                                controller: yearController,
                                decoration: InputDecoration(
                                  contentPadding: const EdgeInsets.all(8),
                                  filled: true,
                                  fillColor: Color(0xFF303135),
                                  hintText: "Year",
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
                      ],
                    ),
                  ),
                ],
              ),

              Column(
                children: [
                  Padding(
                    padding: EdgeInsets.all(16),
                    child: LinearProgressIndicator(
                      backgroundColor: Colors.grey,
                      valueColor: new AlwaysStoppedAnimation<Color>(Colors.red),
                      value: 75 / 100,
                    ),
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Already have an account?",
                        style: TextStyle(
                            color: Colors.grey, fontWeight: FontWeight.w300),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => LoginScreen(),
                              ));
                        },
                        child: Text(
                          " Sign In",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
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
