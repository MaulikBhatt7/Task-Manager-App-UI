import 'package:flutter/material.dart';
import 'package:taskmanager/app_info.dart';
import 'package:taskmanager/home_page.dart';
import 'package:scroll_snap_list/scroll_snap_list.dart';
import 'information_page.dart';

class DetailPage extends StatefulWidget {
  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  int clicked=0;
  List<dynamic> li1 = [Colors.red, Colors.amber, Colors.green];
  List<String> listOfMonth = [
    "Jan",
    "Feb",
    "Mar",
    "April",
    "May",
    "Jun",
    "July",
    "Aug",
    "Sept",
    "Oct",
    "Nov",
    "Dec"
  ];
  List<int> listOfDates = [
    1,
    2,
    3,
    4,
    5,
    6,
    7,
    8,
    9,
    10,
    11,
    12,
    13,
    14,
    15,
    16,
    17,
    18,
    19,
    20,
    21,
    22,
    23,
    24,
    25,
    26,
    27,
    28,
    29,
    30
  ];
  List<String> listOfDays = [
    "Mon",
    "Tue",
    "Wed",
    "Thu",
    "Fri",
    "Sat",
    "Sun",
    "Mon",
    "Tue",
    "Wed",
    "Thu",
    "Fri",
    "Sat",
    "Sun",
    "Mon",
    "Tue",
    "Wed",
    "Thu",
    "Fri",
    "Sat",
    "Sun",
    "Mon",
    "Tue",
    "Wed",
    "Thu",
    "Fri",
    "Sat",
    "Sun",
    "Mon",
    "Tue"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(219, 233, 246, 1),
      body: Container(
        child: Column(
          children: [
            Expanded(
              child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.of(context).pop();
                      },
                      child: Container(
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.black),
                          borderRadius: BorderRadius.circular(8)),
                        child: Icon(
                          Icons.arrow_back_rounded,
                          color: Color.fromRGBO(41, 180, 240, 1),
                          size: 20,
                        ),
                        margin: EdgeInsets.only(left: 20),
                      ),
                    ),
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
              child: Container(
                child: Row(
                  children: [
                    Expanded(
                        child: Container(
                      child: Icon(
                        Icons.arrow_forward_outlined,
                        size: 20,
                      ),
                      alignment: Alignment.topLeft,
                    )),
                    Expanded(
                      child: ScrollSnapList(
                        focusToItem: (p0) => p0,
                        itemBuilder: (context, index) {
                          return Container(
                            width: MediaQuery.of(context).size.width - 45,
                            child: Column(
                              // crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                Expanded(
                                  child: Container(
                                    child: Text(
                                      listOfMonth[index],
                                      style: TextStyle(
                                          fontSize: 25,
                                          fontWeight: FontWeight.bold),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                  flex: 2,
                                ),
                                Expanded(
                                  child: Container(
                                    child: ListView.builder(
                                      itemBuilder: (context, index) {
                                        return InkWell(
                                          onTap: () {
                                            setState(() {
                                              clicked=index;
                                            });
                                          },
                                          child: Container(
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(35)),
                                              color: index == clicked
                                                  ? Color.fromRGBO(65, 45, 168, 1)
                                                  : Color.fromRGBO(
                                                      240, 245, 249, 1),
                                            ),
                                            margin: EdgeInsets.all(8),
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width /
                                                5.5,
                                            padding: EdgeInsets.only(
                                                top: 20, left: 10, right: 10),
                                            child: Column(
                                              children: [
                                                Expanded(
                                                  child: Container(
                                                    alignment: Alignment.center,
                                                    child: Text(
                                                      listOfDates[index]
                                                          .toString(),
                                                      style: TextStyle(
                                                        fontSize: 25,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        color: index == clicked
                                                            ? Colors.white
                                                            : Color.fromRGBO(
                                                                87, 84, 215, 1),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Expanded(
                                                  child: Container(
                                                    child: Text(
                                                      listOfDays[index],
                                                      style: TextStyle(
                                                        fontSize: 14,
                                                        color: index == clicked
                                                            ? Colors.white
                                                            : Color.fromRGBO(
                                                                87, 84, 215, 1),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        );
                                      },
                                      itemCount: 30,
                                      scrollDirection: Axis.horizontal,
                                    ),
                                  ),
                                  flex: 5,
                                ),
                                Expanded(
                                  child: Container(
                                    margin: EdgeInsets.only(top: 20),
                                    alignment: Alignment.topLeft,
                                    child: Text(
                                      "Ongoing",
                                      style: TextStyle(
                                          fontSize: 25,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  flex: 3,
                                ),
                                AppInfo(
                                  appName: "Mobile And Design",
                                  personName: "Mike and Anita",
                                  time: "9:00 AM - 10:00 AM",
                                  startTime: "9 AM",
                                  endTime: "10 AM",
                                  image1: "https://tse3.mm.bing.net/th?id=OIP.homuOP1z53mtKn51QsFsNwHaLH&pid=Api&P=0",
                                  image2: "https://tse2.mm.bing.net/th?id=OIP.2DV77Sp8tNBq1CMVaGyG2AHaEu&pid=Api&P=0",
                                  flex: 6,
                                ),
                                Expanded(
                                  child: Container(
                                    margin: EdgeInsets.only(top: 10),
                                    child: Row(
                                      children: [
                                        Expanded(
                                          child: Container(
                                            child: Text(
                                              "10 AM",
                                              style: TextStyle(
                                                fontSize: 12,
                                                fontWeight: FontWeight.bold,
                                                color: Color.fromRGBO(
                                                    144, 160, 187, 1),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                          child: Container(
                                            margin: EdgeInsets.only(
                                                left: 15, right: 10),
                                            height: 15,
                                            width: 15,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(50),
                                              color: Colors.white,

                                            ),
                                            child: Expanded(
                                              child: Container(
                                                margin: EdgeInsets.all(4),
                                                height: 10,
                                                width: 10,
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                  BorderRadius.circular(50),
                                                  color: Colors.red,

                                                ),

                                              ),
                                            ),

                                          ),
                                        ),
                                        Expanded(
                                          child: Container(
                                              height: 2,
                                              margin: EdgeInsets.only(left: 10),
                                              color: Colors.red,
                                              ),
                                          flex: 7,
                                        ),
                                      ],
                                    ),
                                  ),
                                  flex: 2,
                                ),
                                AppInfo(
                                  appName: "Software Testing",
                                  personName: "Anita and David",
                                  time: "10:00 AM - 11:20 AM",
                                  startTime: "11 AM",
                                  endTime: "12 PM",
                                  image1: "https://tse4.mm.bing.net/th?id=OIP.jpvjvLMuRffsYVDL4mSPpwHaI2&pid=Api&P=0",
                                  image2: "https://tse3.mm.bing.net/th?id=OIP.homuOP1z53mtKn51QsFsNwHaLH&pid=Api&P=0",

                                  flex: 6,
                                ),
                                AppInfo(
                                  appName: "Mobile And Design",
                                  personName: "Mike and Anita",
                                  time: "1:00 PM - 2:00 PM",
                                  startTime: "1 PM",
                                  endTime: "12 AM",
                                  image1: "https://tse3.mm.bing.net/th?id=OIP.homuOP1z53mtKn51QsFsNwHaLH&pid=Api&P=0",
                                  image2: "https://tse2.mm.bing.net/th?id=OIP.2DV77Sp8tNBq1CMVaGyG2AHaEu&pid=Api&P=0",
                                  flex: 6,
                                ),
                              ],
                            ),
                          );
                        },
                        itemCount: 12,
                        scrollDirection: Axis.horizontal, itemSize: MediaQuery.of(context).size.width-45, onItemFocus: (int ) {   },
                      ),
                      flex: 15,
                    ),
                    Expanded(
                        child: Container(
                      child: Icon(
                        Icons.arrow_back_outlined,
                        size: 20,
                      ),
                      alignment: Alignment.topLeft,
                    ))
                  ],
                ),
              ),
              flex: 6,
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        color: Color.fromRGBO(69, 48, 179, 1),
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
                    color: Colors.white
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
                    color: Color.fromRGBO(41, 180, 240, 1),
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
