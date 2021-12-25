// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.blue[600],
            title: Text("Login"),
          ),
          body: Container(
            color: Colors.blue[200],
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.all(8),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                // crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: 40),
                  CircleAvatar(
                      radius: 65,
                      backgroundImage: AssetImage("images/thumb_user.png")),
                  SizedBox(height: 15),
                  Text("Login",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.w500,
                      )),
                  SizedBox(height: 20),
                  TextField(
                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.account_circle),
                        labelText: "Username",
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white, width: 2),
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        labelStyle: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                          decoration: TextDecoration.underline,
                        ),
                        hintText: "Phone or email",
                        hintStyle:
                            TextStyle(fontSize: 16, color: Colors.white)),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextField(
                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.lock),
                        labelText: "Password",
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white, width: 2),
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        labelStyle: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                          decoration: TextDecoration.underline,
                        ),
                        hintText: "Password",
                        hintStyle:
                            TextStyle(fontSize: 16, color: Colors.white)),
                  ),
                  SizedBox(height: 15),
                  Material(
                    borderRadius: BorderRadius.circular(30.0),
                    //elevation: 5.0,
                    child: MaterialButton(
                      onPressed: () => {},
                      minWidth: 140,
                      height: 50,
                      color: Colors.blue[600],
                      child: Text(
                        "LOGIN",
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            width: double.infinity,
            height: double.infinity,
          ),
          drawer: Drawer(
            child: Column(
              children: [
                UserAccountsDrawerHeader(
                  accountName: Text(
                    "Nour Elden Alaa",
                    style: TextStyle(fontSize: 18),
                  ),
                  accountEmail: Text(
                    "nourelden515@gmail.com",
                    style: TextStyle(fontSize: 16),
                  ),
                  currentAccountPicture: CircleAvatar(
                    backgroundImage: AssetImage("images/myImage.jfif"),
                  ),
                ),
                ListTile(
                  leading: Icon(Icons.home),
                  title: Text(
                    "Home",
                    style: TextStyle(fontSize: 16),
                  ),
                  subtitle: Text("Home page, Account"),
                  onTap: () {},
                ),
                ListTile(
                  leading: Icon(Icons.account_box_sharp),
                  title: Text(
                    "About me",
                    style: TextStyle(fontSize: 16),
                  ),
                  subtitle: Text("My resume, Latest projects"),
                  onTap: () {},
                ),
                ListTile(
                  leading: Icon(Icons.people_alt),
                  title: Text(
                    "My team",
                    style: TextStyle(fontSize: 16),
                  ),
                  subtitle: Text("Team members, Member`s roles"),
                  onTap: () {},
                ),
                ListTile(
                  leading: Icon(Icons.share),
                  title: Text(
                    "Share",
                    style: TextStyle(fontSize: 16),
                  ),
                  subtitle: Text("Share with your friends"),
                  onTap: () {},
                ),
                ListTile(
                  leading: Icon(Icons.help_rounded),
                  title: Text(
                    "Help",
                    style: TextStyle(fontSize: 16),
                  ),
                  subtitle: Text("Help center, Contact us"),
                  onTap: () {},
                )
              ],
            ),
          ),
        ));
  }
}
