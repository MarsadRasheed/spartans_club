import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class EditingProfileScreen extends StatefulWidget {
  @override
  _EditingProfileScreenState createState() => _EditingProfileScreenState();
}

class _EditingProfileScreenState extends State<EditingProfileScreen> {
  bool visibility = true;
  var userNameFK = new GlobalKey<FormState>();
  TextEditingController userNameController = TextEditingController();
  var emailFK = new GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  var mobilePhoneFK = new GlobalKey<FormState>();
  TextEditingController mobilePhoneController = TextEditingController();
  var passwordFK = new GlobalKey<FormState>();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    userNameController.text = "Antony Jhones";
    emailController.text = "antonyjhones123@gmail.com";
    mobilePhoneController.text = "+971252346234";
    passwordController.text = "123456";

    return Scaffold(
      appBar: AppBar(
        title: Text("Editing Profile"),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.arrow_forward,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Align(
              alignment: Alignment.center,
              child: Padding(
                padding: EdgeInsets.all(16),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(100),
                  child: Image.network(
                    "https://images.unsplash.com/flagged/photo-1570612861542-284f4c12e75f?ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8cGVyc29ufGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&w=1000&q=80",
                    height: 100,
                    width: 100,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.only(left: 16),
              child: Text(
                "Username",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 16, right: 16, bottom: 16, top: 8),
              child: Form(
                key: userNameFK,
                child: TextFormField(
                  textAlign: TextAlign.start,
                  keyboardType: TextInputType.text,
                  controller: userNameController,
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.only(
                        top: 8.0, bottom: 8.0, left: 10.0, right: 10.0),
                    filled: true,
                    fillColor: Color(0xFF303135),
                    hintText: "Enter your user name",
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
              height: 10,
            ),
            Padding(
              padding: EdgeInsets.only(left: 16),
              child: Text(
                "Email",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 16, right: 16, bottom: 16, top: 8),
              child: Form(
                key: emailFK,
                child: TextFormField(
                  textAlign: TextAlign.start,
                  keyboardType: TextInputType.emailAddress,
                  controller: emailController,
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.only(
                        top: 8.0, bottom: 8.0, left: 10.0, right: 10.0),
                    filled: true,
                    fillColor: Color(0xFF303135),
                    hintText: "Enter your email",
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
              height: 10,
            ),
            Padding(
              padding: EdgeInsets.only(left: 16),
              child: Text(
                "Mobile Phone",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 16, right: 16, bottom: 16, top: 8),
              child: Form(
                key: mobilePhoneFK,
                child: TextFormField(
                  textAlign: TextAlign.start,
                  keyboardType: TextInputType.number,
                  obscureText: false,
                  controller: mobilePhoneController,
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.only(
                        top: 8.0, bottom: 8.0, left: 10.0, right: 10.0),
                    filled: true,
                    fillColor: Color(0xFF303135),
                    hintText: "Enter your mobile phone",
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
              height: 10,
            ),
            Padding(
              padding: EdgeInsets.only(left: 16),
              child: Text(
                "Password",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 16, right: 16, bottom: 16, top: 8),
              child: Form(
                key: passwordFK,
                child: TextFormField(
                  textAlign: TextAlign.start,
                  keyboardType: TextInputType.text,
                  controller: passwordController,
                  obscureText: visibility,
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.only(
                        top: 8.0, bottom: 8.0, left: 10.0, right: 10.0),
                    filled: true,
                    fillColor: Color(0xFF303135),
                    hintText: "Enter your password",
                    suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          visibility = !visibility;
                        });
                      },
                      icon: Icon(!visibility
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
          ],
        ),
      ),
    );
  }
}
