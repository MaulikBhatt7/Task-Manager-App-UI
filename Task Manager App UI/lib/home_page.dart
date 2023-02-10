import 'package:flutter/material.dart';

import 'information_page.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void setState(VoidCallback fn) {}

  @override
  Widget build(BuildContext context) {
    bool isHover = false;
    return Scaffold(

      backgroundColor: Color.fromRGBO(219, 233, 246, 1),
      body: Column(
        children: [
          Expanded(
            child: Center(
              child: Container(
                margin: EdgeInsets.only(top: 70),
                child: Image.asset("assets/images/logo.jpg"),
                // color: Colors.yellow,
              ),
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  child: Text(
                    "Manage your\n daily tasks",
                    style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  margin: EdgeInsets.only(top: 70),
                  padding: EdgeInsets.only(left: 30, top: 10, right: 30),
                ),
                Container(
                  child: Text(
                    "Team and Project management with solution providing App",
                    style: TextStyle(
                      fontSize: 20,
                    ),
                    // textDirection: TextDirection.ltr,
                  ),
                  margin: EdgeInsets.only(top: 20),
                  padding: EdgeInsets.only(left: 30, right: 30, bottom: 10),
                ),
                InkWell(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) {
                          return InformationPage();
                        },
                      ),
                    );
                  },
                  onHover: (value) {
                    setState(() {
                      isHover = value;
                    });
                  },
                  child: Container(
                      decoration: BoxDecoration(
                          color: Color.fromRGBO(69, 48, 179, 1),
                          border: Border.all(
                            color: Color.fromRGBO(69, 48, 179, 1),
                          ),
                          borderRadius: BorderRadius.all(
                            Radius.circular(20),
                          )),
                      // color: Color.fromRGBO(69, 48, 179, 1),
                      height: 50,
                      width: 150,
                      margin: EdgeInsets.all(30),
                      child: Center(
                          child: Text(
                        "Get Started",
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ))),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
