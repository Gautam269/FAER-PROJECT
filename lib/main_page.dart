import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:heartmonitorapp/consulation_page.dart';
import 'package:heartmonitorapp/events_page.dart';
import 'package:heartmonitorapp/smart_calendar.dart';
import 'package:heartmonitorapp/static_page.dart';
import 'package:page_transition/page_transition.dart';
//import 'package:url_launcher/url_launcher.dart';
//import 'package:get_it/get_it.dart';

//class CallsAndMessagesService {
//  void call(String number) => launch("tel:$number");
//}
//
//GetIt locator = GetIt.instance();
//
//void setupLocator() {
//  locator.registerSingleton(CallsAndMessagesService());
//}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData( primarySwatch: Colors.purple),
      home: MainPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {

//  final CallsAndMessagesService _service = locator<CallsAndMessagesService>();
//  final String number = "102";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: <Widget>[
          Positioned(
            left: 0,
            right: 0,
            bottom: 80,
            top: 0,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 24),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(32),
                    bottomRight: Radius.circular(32),
                  )
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      IconButton(
                        icon: Icon(Icons.menu),
                        onPressed: (){},
                      ),
                      CircleAvatar(),
                    ],
                  ),
                  SizedBox(height: 32,),
                  Padding(
                    padding: const EdgeInsets.only(left: 16),
                    child: Text("Health",style: TextStyle(
                    color: Colors.black,
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                  ),),
                  ),
                  SizedBox(height: 24,),
                  Container(
                    margin: EdgeInsets.only(left: 16,right: 16),
                    height: MediaQuery.of(context).size.height/1.65,
                    child: Column(
                      children: <Widget>[
                      Expanded(
                        flex: 1,
                        child: Row(
                          children: <Widget>[
                          Expanded(
                            flex: 1,
                            child: Container(
                              margin: EdgeInsets.only(right: 8,bottom: 8),
                              decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16),
                              border: Border.all(color: Colors.grey[300]),
                              ),
                              padding: EdgeInsets.only(
                              left: 24,
                              top: 24,
                              bottom: 24,
                              ),
                              child: Column(
                                children: <Widget>[
                                Icon(Icons.favorite_border,
                                color: Colors.red,),
                                Spacer(),
                                Text("131",style: TextStyle(
                                  fontSize: 28,
                                  fontWeight: FontWeight.bold,
                                ),),
                                Text("bpm",style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 19,
                                  fontWeight: FontWeight.bold,
                                ),),
                                Spacer(),
                                Text("Heart Rate",style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),),
                              ],
                            ),
                          ),
                          ),
                          Expanded(
                            flex: 1,
                            child: Container(
                              padding: EdgeInsets.only(
                              left: 24,
                              top: 24,
                              bottom: 24,
                              ),
                              margin: EdgeInsets.only(left: 8,bottom: 8),
                              decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16),
                              border: Border.all(color: Colors.grey[300]),
                              ),
                              child:Center(
                                //child: FlatButton(
                                 //onPressed: () => _service.call(number),
                                  child: Column(
                                    children: <Widget>[
                                    Icon(Icons.call, color: Colors.orange[500],),
                                    Spacer(),
                                    Text("Emergency",style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,),),
                                    Text("Services",style: TextStyle(color: Colors.grey, fontSize: 19, fontWeight: FontWeight.bold,),),
                                    Spacer(),
                                    Text("Number: 102",style: TextStyle(fontWeight: FontWeight.bold,),),
                              ],
                            ),
                            //),
                              ),
                          ),
                        ),
                          ],
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Row(
                          children: <Widget>[
                            Expanded(
                              flex: 1,
                              child: Container(
                                margin: EdgeInsets.only(right: 8,top: 8),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(16),
                                  border: Border.all(color: Colors.grey[300]),
                                ),
                                padding: EdgeInsets.only(
                                  left: 24,
                                  top: 24,
                                  bottom: 24,
                                ),
                                child:Center(
                                  child: FlatButton(
                                    padding: EdgeInsets.all(8.0),
                                    onPressed:(){
                                      Navigator.push(context, new MaterialPageRoute(
                                          builder: (context) => Consultation()));},
                                    child: Center(
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: <Widget>[
                                        Icon(Icons.directions_walk, color: Colors.purple,),
                                        //Spacer(),
//                                        Text("Appointment",style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,),),
//                                        Text("Schedule",style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,),),
                                        Text("Next",style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold,),),
                                        Text("Appointment",style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold,),),
                                        //Spacer(),
                                        Text("Dr.Harivind",style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,),),
                                  ],
                                ),
                                    ),
                                ),
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 1,
                              child: Container(
                                margin: EdgeInsets.only(left: 8,top: 8),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(16),
                                  border: Border.all(color: Colors.grey[300]),
                                ),
                                padding: EdgeInsets.only(
                                  left: 24,
                                  top: 24,
                                  bottom: 24,
                                ),
                                 child: Center(
                                   child: FlatButton(
                                       padding: EdgeInsets.all(8.0),
                                       onPressed:(){
                                         Navigator.push(context, new MaterialPageRoute(
                                           builder: (context) => SmartCalendar()));},
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: <Widget>[
                                        Icon(Icons.local_drink, color: Colors.blue,),
                                        //Text("4",style: TextStyle( fontSize: 28, fontWeight: FontWeight.bold,),),
                                        Text("Medicine",style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,),),
                                        //Spacer(),
                                        Text("Schedule",style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,),),
                                  ],
                                )
                                   ),
                                 ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  )
                ],
              ),
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
              height: 80,
              child: Row(
                children: <Widget>[
                  Text("Heart Health",style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),),
                  IconButton(
                    icon: Icon(Icons.keyboard_arrow_up),
                    color: Colors.white,
                    onPressed: (){
                      Navigator.of(context).push(PageTransition(child: StatisticsPage(), type: PageTransitionType.downToUp));
                    },
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
