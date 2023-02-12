import 'package:flutter/material.dart';

class AppInfo extends StatefulWidget {
  String appName = "", personName = "", time = "",startTime="",endTime="",image1="",image2="";
  int flex = 1;

  AppInfo({appName, personName, time, flex,startTime,endTime,image1,image2}) {
    this.appName = appName;
    this.personName = personName;
    this.time = time;
    this.flex = flex ?? 1;
    this.startTime=startTime;
    this.endTime=endTime;
    this.image1=image1;
    this.image2=image2;

  }

  @override
  State<AppInfo> createState() => _AppInfoState();
}

class _AppInfoState extends State<AppInfo> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.only(top: 25),
              margin: EdgeInsets.only(right: 30),
              child: Column(
                children: [
                  Expanded(
                    child: Container(
                      child: Text(widget.startTime,style: TextStyle(fontSize: 10,fontWeight: FontWeight.bold,color: Color.fromRGBO(144, 160, 187, 1),),),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.only(top: 15),
                      child: Text(widget.endTime,style: TextStyle(fontSize: 10,fontWeight: FontWeight.bold,color: Color.fromRGBO(144, 160, 187, 1),)),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 4,
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
                      widget.appName,
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 3),
                    child: Text(
                      widget.personName,
                      style: TextStyle(
                        fontSize: 12,
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
                                  widget.image1,
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
                              height: 30,
                              width: 30,
                              margin: EdgeInsets.only(top: 10),
                            ),
                            Container(
                              child: ClipOval(
                                child: Image.network(
                                  widget.image2,
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
                              height: 30,
                              width: 30,
                              margin: EdgeInsets.only(top: 10, left: 23),
                            ),
                          ],
                        ),
                        Container(
                          child: Text(
                            widget.time,
                            style: TextStyle(
                              fontSize: 13,
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
              padding: EdgeInsets.only(left: 20, top: 15),
              margin: EdgeInsets.only(top: 10,right: 10),
            ),
          ),
        ],
      ),
      flex: widget.flex,
    );
  }
}
