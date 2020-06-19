import 'package:badges/badges.dart';
import 'package:flutter/material.dart';

class SmartCalendar extends StatefulWidget {
  @override
  _SmartCalendarState createState() => _SmartCalendarState();
}

class _SmartCalendarState extends State<SmartCalendar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SizedBox(height: 50,),
            Padding(
              padding: const EdgeInsets.only(left: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Text("Tue,",style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                      ),),
                      Text(" 5th May", style: TextStyle(
                        fontSize: 32
                      ),),
                    ],
                  ),
                  SizedBox(height: 9,),
                  Text("3 Events", style: TextStyle(
                    fontSize: 18,
                  ),),
                ],
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height,
              child: ListView(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.only(left: 20),
                    height: 200,
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          flex: 3,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text("11:00am",style: TextStyle(
                                  color: Colors.black54,
                                ),),
                                Container(
                                  height: 2,
                                  width: 18,
                                  decoration: BoxDecoration(
                                    color: Colors.grey[300],
                                  ),
                                ),
                                Container(
                                  height: 2,
                                  width: 32,
                                  decoration: BoxDecoration(
                                    color: Colors.grey[300],
                                  ),
                                ),
                                Container(
                                  height: 2,
                                  width: 18,
                                  decoration: BoxDecoration(
                                    color: Colors.grey[300],
                                  ),
                                ),
                                Text("12:00pm",style: TextStyle(
                                  color: Colors.black54,
                                ),),
                              ],
                            ),
                        ),
                        Expanded(
                            flex: 7,
                            child: Container(
                              padding: EdgeInsets.only(left: 24, top: 32, bottom: 32),
                              margin: EdgeInsets.only(top: 7),
                              decoration: BoxDecoration(
                                color: Colors.blue[100],
                                borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(12)
                                ),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Text("Take Medicine (7)",
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text("2 Tablets after food",
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                    ),),
                                  Text("Recommended by Dr. Hegde",
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                    ),),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: <Widget>[
                                      _iconBuilder(Icons.check_circle,'Complete'),
                                      _iconBuilder(Icons.clear,'Cancel'),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 24,bottom: 24,right: 24,left: 24),
                    height: 80,
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          flex: 3,
                          child: Stack(
                            children: <Widget>[
                              Positioned(
                                top: 40,
                                left: 0,
                                right: 24,
                                child: Container(
                                  height: 2,
                                  color: Color(0xff1849EC),
                                ),
                              ),
                              Positioned(
                                  top: 36,
                                  right: 24,
                                  child: Container(
                                    height: 12,
                                    width: 12,
                                    decoration: BoxDecoration(
                                      color: Color(0xff1849EC),
                                      shape: BoxShape.circle,
                                    ),
                                  ),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          flex:7,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Text("12:29pm", style: TextStyle(
                                color: Colors.grey,
                                fontSize: 24,
                              ),),
                              SizedBox(width: 8,),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text("Next Event in", style: TextStyle(
                                    color: Colors.grey,
                                  )),
                                  //SizedBox(height: 4,),
                                  Text("2 Hours", style: TextStyle(
                                    color: Colors.orange,
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                  ),)
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 20),
                    height: 200,
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          flex: 3,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text("2:30pm",style: TextStyle(
                                color: Colors.black54,
                              ),),
                              Container(
                                height: 2,
                                width: 18,
                                decoration: BoxDecoration(
                                  color: Colors.grey[300],
                                ),
                              ),
                              Container(
                                height: 2,
                                width: 32,
                                decoration: BoxDecoration(
                                  color: Colors.grey[300],
                                ),
                              ),
                              Container(
                                height: 2,
                                width: 18,
                                decoration: BoxDecoration(
                                  color: Colors.grey[300],
                                ),
                              ),
                              Text("3:30pm",style: TextStyle(
                                color: Colors.black54,
                              ),),
                            ],
                          ),
                        ),
                        Expanded(
                          flex: 7,
                          child: Container(
                            padding: EdgeInsets.only(left: 24, top: 32, bottom: 32),
                            margin: EdgeInsets.only(top: 7),
                            decoration: BoxDecoration(
                              color: Colors.blue[100],
                              borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(12)
                              ),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text("Take Medicine (23)",
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text("1 Tablets before food",
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),),
                                Text("Recommended by Dr. Hegde",
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: <Widget>[
                                    _iconBuilder(Icons.check_circle,'Complete'),
                                    _iconBuilder(Icons.clear,'Cancel'),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 24,bottom: 24,right: 24,left: 24),
                    height: 80,
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          flex: 3,
                          child: Stack(
                            children: <Widget>[
                              Positioned(
                                top: 40,
                                left: 0,
                                right: 24,
                                child: Container(
                                  height: 2,
                                  color: Color(0xff1849EC),
                                ),
                              ),
                              Positioned(
                                top: 36,
                                right: 24,
                                child: Container(
                                  height: 12,
                                  width: 12,
                                  decoration: BoxDecoration(
                                    color: Color(0xff1849EC),
                                    shape: BoxShape.circle,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          flex:7,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Text("3:45pm", style: TextStyle(
                                color: Colors.grey,
                                fontSize: 24,
                              ),),
                              SizedBox(width: 8,),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text("Next Event in", style: TextStyle(
                                    color: Colors.grey,
                                  )),
                                  //SizedBox(height: 4,),
                                  Text("3 Hours and 15 Minutes", style: TextStyle(
                                    color: Colors.orange,
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                  ),)
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 20),
                    height: 200,
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          flex: 3,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text("7:00pm",style: TextStyle(
                                color: Colors.black54,
                              ),),
                              Container(
                                height: 2,
                                width: 18,
                                decoration: BoxDecoration(
                                  color: Colors.grey[300],
                                ),
                              ),
                              Container(
                                height: 2,
                                width: 32,
                                decoration: BoxDecoration(
                                  color: Colors.grey[300],
                                ),
                              ),
                              Container(
                                height: 2,
                                width: 18,
                                decoration: BoxDecoration(
                                  color: Colors.grey[300],
                                ),
                              ),
                              Text("8:00pm",style: TextStyle(
                                color: Colors.black54,
                              ),),
                            ],
                          ),
                        ),
                        Expanded(
                          flex: 7,
                          child: Container(
                            padding: EdgeInsets.only(left: 24, top: 32, bottom: 32),
                            margin: EdgeInsets.only(top: 7),
                            decoration: BoxDecoration(
                              color: Colors.blue[100],
                              borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(12)
                              ),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text("Doctor's Appointment",
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text("Consulatation Visit with Dr.Harivind",
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),),
                                SizedBox(height: 16,),
                                Divider(
                                  color: Colors.white,
                                  thickness: 0.5,
                                  height: 0,
                                ),
                                Container(
                                  height: 42,
                                  child: Row(
                                    children: <Widget>[
                                      Expanded(
                                        flex: 1,
                                        child: Center(
                                          child: Text("Running Late",),
                                        ),
                                      ),
                                      Expanded(
                                        flex: 1,
                                        child: Container(
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius: BorderRadius.only(
                                              bottomLeft: Radius.circular(16),
                                            ),
                                            ),
                                          child: Center(
                                            child: Text("Navigation",style: TextStyle(
                                              color: Colors.blue,
                                            ),),
                                          ),
                                        ),
                                        ),
                                ],
                                  ),
                                      ),
                                      ],
                                  ),
                                  ),
    ),
                                ],
                            ),
                            ),
                          ],
    ),
            ),
    ],
    ),
                ),
                );
  }

  _iconBuilder(icon,title) {
    return Column(
      children: <Widget>[
        Icon(
          icon,
          size: 28,
          color: Colors.black,
        ),
        SizedBox(height: 8.0,),
        Text(
          title,
          style: TextStyle(
            fontSize: 13,
            fontWeight: FontWeight.w300,
            color:  Colors.black,
          ),
        )
      ],
    );
  }
}
