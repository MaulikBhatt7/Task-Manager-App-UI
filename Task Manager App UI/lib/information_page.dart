import 'package:flutter/material.dart';
import 'package:taskmanager/app_info.dart';
import 'package:taskmanager/detail_page.dart';

import 'home_page.dart';

class InformationPage extends StatefulWidget {
  @override
  State<InformationPage> createState() => _InformationPageState();
}

class _InformationPageState extends State<InformationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(69, 48, 179, 1),
      body: Column(
        children: [
          Expanded(
            child: Container(
              margin: EdgeInsets.only(top: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // InkWell(
                  //   onTap: () {
                  //     Navigator.of(context).pop();
                  //   },
                  //   child: Container(
                  //     decoration:
                  //         BoxDecoration(border: Border.all(color: Colors.white)),
                  //     child: Icon(
                  //       Icons.arrow_back_rounded,
                  //       color: Color.fromRGBO(41, 180, 240, 1),
                  //       size: 30,
                  //     ),
                  //     margin: EdgeInsets.only(left: 30),
                  //   ),
                  // ),
                  Container(),
                  Container(
                    child: ClipOval(
                      child: Image.network(
                        "https://tse1.mm.bing.net/th?id=OIP.leRaZskYpTKA55a0St0tZgHaJa&pid=Api&P=0",
                        fit: BoxFit.fill,
                      ),
                    ),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.white,
                        width: 2,
                      ),
                      borderRadius: BorderRadius.all(
                        Radius.circular(50),
                      ),
                    ),
                    height: 40,
                    width: 40,
                    margin: EdgeInsets.only(right: 30),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  child: Text(
                    "Hi Ghulam",
                    style: TextStyle(
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  padding: EdgeInsets.only(left: 30),
                ),
                Container(
                  child: Text(
                    "6 Tasks are pending",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                  padding: EdgeInsets.only(left: 30),
                ),
              ],
            ),
          ),
          Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Color.fromRGBO(84, 81, 214, 1),
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Container(
                      child: Text(
                        "Mobile and Design",
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Container(
                      child: Text(
                        "Mike and Anita",
                        style: TextStyle(
                          fontSize: 17,
                          color: Color.fromRGBO(
                            125,
                            134,
                            225,
                            1,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Stack(
                            children: [
                              Container(
                                child: ClipOval(
                                  child: Image.network(
                                    "https://tse3.mm.bing.net/th?id=OIP.homuOP1z53mtKn51QsFsNwHaLH&pid=Api&P=0",
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Colors.white,
                                    width: 2,
                                  ),
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(50),
                                  ),
                                ),
                                height: 40,
                                width: 40,
                                margin: EdgeInsets.only(top: 15),
                              ),
                              Container(
                                child: ClipOval(
                                  child: Image.network(
                                    "https://tse2.mm.bing.net/th?id=OIP.2DV77Sp8tNBq1CMVaGyG2AHaEu&pid=Api&P=0",
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Colors.white,
                                    width: 2,
                                  ),
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(50),
                                  ),
                                ),
                                height: 40,
                                width: 40,
                                margin: EdgeInsets.only(top: 15, left: 30),
                              ),
                            ],
                          ),
                          Container(
                            child: Text(
                              "now",
                              style: TextStyle(
                                fontSize: 15,
                                color: Color.fromRGBO(
                                  125,
                                  134,
                                  225,
                                  1,
                                ),
                              ),
                            ),
                            margin: EdgeInsets.only(top: 10, right: 30),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                padding: EdgeInsets.only(left: 25, top: 20),
                margin: EdgeInsets.only(
                  left: 25,
                  top: 10,
                  right: 25,
                  bottom: 40,
                ),
              ),
              flex: 2),
          Expanded(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 30),
                      child: Text(
                        "Monthly Review",
                        style: TextStyle(
                            fontSize: 23,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 30),
                      child: ClipOval(
                        child: Container(
                          height: 35,
                          width: 35,
                          color: Color.fromRGBO(33, 209, 255, 1),
                          child: Icon(
                            Icons.calendar_month,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Expanded(
                  child: Column(
                    children: [
                      Expanded(
                        child: Row(
                          children: [
                            Expanded(
                              child: Column(
                                children: [
                                  Expanded(
                                    child: Container(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.stretch,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Center(
                                            child: Container(
                                              child: Text(
                                                "22",
                                                style: TextStyle(
                                                  fontSize: 30,
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ),
                                          ),
                                          Center(
                                            child: Container(
                                              margin: EdgeInsets.only(top: 10),
                                              child: Text(
                                                "Done",
                                                style: TextStyle(
                                                  color: Colors.white,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      decoration: BoxDecoration(
                                          color: Color.fromRGBO(84, 81, 214, 1),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(15))),
                                      margin: EdgeInsets.only(
                                          left: 20,
                                          top: 13,
                                          bottom: 13,
                                          right: 20),
                                    ),
                                    flex: 6,
                                  ),
                                  Expanded(
                                    child: Container(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.stretch,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Center(
                                            child: Container(
                                              child: Text(
                                                "10",
                                                style: TextStyle(
                                                  fontSize: 30,
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ),
                                          ),
                                          Center(
                                            child: Container(
                                              margin: EdgeInsets.only(top: 10),
                                              child: Text(
                                                "Ongoing",
                                                style: TextStyle(
                                                  color: Colors.white,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      decoration: BoxDecoration(
                                        color: Color.fromRGBO(84, 81, 214, 1),
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(15),
                                        ),
                                      ),
                                      margin: EdgeInsets.only(
                                          left: 20,
                                          top: 13,
                                          bottom: 13,
                                          right: 20),
                                    ),
                                    flex: 5,
                                  ),
                                ],
                              ),
                            ),
                            Expanded(
                              child: Column(
                                children: [
                                  Expanded(
                                    child: Container(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.stretch,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Center(
                                            child: Container(
                                              child: Text(
                                                "7",
                                                style: TextStyle(
                                                  fontSize: 30,
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ),
                                          ),
                                          Center(
                                            child: Container(
                                              margin: EdgeInsets.only(top: 10),
                                              child: Text(
                                                "In progress",
                                                style: TextStyle(
                                                  color: Colors.white,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      decoration: BoxDecoration(
                                          color: Color.fromRGBO(84, 81, 214, 1),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(15))),
                                      margin: EdgeInsets.only(
                                          left: 20,
                                          top: 13,
                                          bottom: 13,
                                          right: 20),
                                    ),
                                    flex: 5,
                                  ),
                                  Expanded(
                                    child: Container(
                                      child: Column(
                                        // crossAxisAlignment:
                                        //     CrossAxisAlignment.stretch,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Center(
                                            child: Container(
                                              child: Text(
                                                "12",
                                                style: TextStyle(
                                                  fontSize: 30,
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ),
                                          ),
                                          Center(
                                            child: Container(
                                              margin: EdgeInsets.only(top: 10),
                                              child: Text(
                                                "Waiting for review",
                                                style: TextStyle(
                                                  color: Colors.white,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      decoration: BoxDecoration(
                                          color: Color.fromRGBO(84, 81, 214, 1),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(15))),
                                      margin: EdgeInsets.only(
                                          left: 20,
                                          top: 13,
                                          bottom: 13,
                                          right: 20),
                                    ),
                                    flex: 6,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
            flex: 4,
          ),
        ],
      ),
      bottomNavigationBar: Container(
        height: 40,
        child: Row(
          children: [
            Expanded(
              child: InkWell(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                    return HomePage();
                  },));
                },
                child: Container(
                  child: Icon(
                    Icons.home,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            Expanded(
              child: InkWell(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) {
                      return InformationPage();
                    },
                  ));
                },
                child: Container(
                  child: Icon(
                    Icons.file_open,
                    color: Color.fromRGBO(41, 180, 240, 1),
                  ),
                ),
              ),
            ),
            Expanded(
              child: InkWell(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) {
                      return DetailPage();
                    },
                  ));
                },
                child: Container(
                  child: Icon(
                    Icons.person_outline,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            Expanded(
              child: Container(
                child: Icon(
                  Icons.add_alert,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
