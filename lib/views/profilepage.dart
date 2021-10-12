// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    final mediaQueryHeight = MediaQuery.of(context).size.height;

    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: const Text(
            " Profile ",
            style: TextStyle(color: Colors.green),
          ),
          centerTitle: true,
        ),
        backgroundColor: Colors.white,
        body: Column(
          children: [
            Stack(
              // fit: StackFit.passthrough,
              overflow: Overflow.visible,
              children: [
                Column(
                  children: [
                    Container(
                      height: mediaQueryHeight * 0.2,
                      width: MediaQuery.of(context).size.width,
                      color: Colors.white,
                      alignment: Alignment.centerRight,
                    ),
                    Container(
                      height: mediaQueryHeight * 0.6,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              Color(0xff2c274c),
                              Color(0xff46426c),
                            ],
                            begin: Alignment.bottomCenter,
                            end: Alignment.topCenter,
                          ),
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(25.0),
                              topRight: Radius.circular(25.0))),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: 80,
                          ),
                          Text(
                            "Leo Messi",
                            style: TextStyle(fontSize: 24, color: Colors.white),
                          ),
                          SizedBox(
                            height: 50,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 40, left: 40),
                            child: Container(
                              height: 50,
                              width: MediaQuery.of(context).size.width,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10.0)),
                              child: Padding(
                                padding: const EdgeInsets.only(left: 20.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,

                                  // ignore: prefer_const_literals_to_create_immutables
                                  children: [
                                    Icon(
                                      Icons.account_circle,
                                      size: 25,
                                      color: Colors.green,
                                    ),
                                    SizedBox(
                                      width: 30,
                                    ),
                                    Text(
                                      "Leo Messi",
                                      style: TextStyle(
                                          fontSize: 22, color: Colors.green),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 40, left: 40),
                            child: Container(
                              height: 50,
                              width: MediaQuery.of(context).size.width,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10.0)),
                              child: Padding(
                                padding: const EdgeInsets.only(left: 20.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  // ignore: prefer_const_literals_to_create_immutables
                                  children: [
                                    Icon(
                                      Icons.phone_android,
                                      size: 25,
                                      color: Colors.green,
                                    ),
                                    SizedBox(
                                      width: 30,
                                    ),
                                    Text(
                                      "+628117711500",
                                      style: TextStyle(
                                          fontSize: 22, color: Colors.green),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 40, left: 40),
                            child: Container(
                              height: 50,
                              width: MediaQuery.of(context).size.width,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10.0)),
                              child: Padding(
                                padding: const EdgeInsets.only(left: 20.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  // ignore: prefer_const_literals_to_create_immutables
                                  children: [
                                    Icon(
                                      Icons.email,
                                      size: 25,
                                      color: Colors.green,
                                    ),
                                    SizedBox(
                                      width: 30,
                                    ),
                                    Text(
                                      "leomessi@hotmail.com",
                                      style: TextStyle(
                                          fontSize: 22, color: Colors.green),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Positioned(
                  top: 90,
                  left: 120,
                  right: 120,
                  child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(50),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black54,
                            blurRadius: 10.0,
                            spreadRadius: 2.0,
                            offset: Offset(5.0, 5.0),
                          ),
                        ],
                      ),
                      alignment: Alignment.center,
                      width: 150,
                      height: 150,
                      child: Image.asset(
                        'assets/messi.jpg',
                        fit: BoxFit.cover,
                        height: 100,
                        width: 100,
                      )),
                ),
              ],
            ),
            Container()
          ],
        ));
  }
}
