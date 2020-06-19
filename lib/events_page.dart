import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
//import 'dart:math';
//import 'package:shared_preferences/shared_preferences.dart';

//final Map<DateTime,List> _holidays = {
//  DateTime(2020,1,1) : ['New Year\'s Day'],
//  DateTime(2020,5,4) : ['Star War\'s Day']
//};

class Events extends StatefulWidget {
  //final String title;
  //Events({Key key, this.title}) : super(key:key);

  @override
  _EventsState createState() => _EventsState();
}

class _EventsState extends State<Events>  {
  CalendarController _controller;
  Map<DateTime, List> _events;
  List<dynamic> _selectedEvents;
  //List _selectedEvents;
  //TextEditingController _eventController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    //final _selectedDay = DateTime.now();
    _selectedEvents = [];
    _controller = CalendarController();
    _events = {
      DateTime.utc(2020, 5, 5, 12): ['Medicine 1','Medicine 14','Medicine 7'],
      DateTime.utc(2020, 5, 6, 12): ['Medicine 2','Medicine 26','Medicine 8'],
      DateTime.utc(2020, 5, 4, 12): ['Medicine 3'],
    };
    //_eventController = TextEditingController();
//    _events = {
//      _selectedDay.subtract(Duration(days: 30)): ['Event A0', 'Event B0', 'Event C0'],
//      _selectedDay.subtract(Duration(days: 27)): ['Event A1'],
//      _selectedDay.subtract(Duration(days: 20)): ['Event A2', 'Event B2', 'Event C2', 'Event D2'],
//      _selectedDay.subtract(Duration(days: 16)): ['Event A3', 'Event B3'],
//      _selectedDay.subtract(Duration(days: 10)): ['Event A4', 'Event B4', 'Event C4'],
//      _selectedDay.subtract(Duration(days: 4)): ['Event A5', 'Event B5', 'Event C5'],
//      _selectedDay.subtract(Duration(days: 2)): ['Event A6', 'Event B6'],
//      _selectedDay: ['Event A7', 'Event B7', 'Event C7', 'Event D7'],
//      _selectedDay.add(Duration(days: 1)): ['Event A8', 'Event B8', 'Event C8', 'Event D8'],
//      _selectedDay.add(Duration(days: 3)): Set.from(['Event A9', 'Event A9', 'Event B9']).toList(),
//      _selectedDay.add(Duration(days: 7)): ['Event A10', 'Event B10', 'Event C10'],
//      _selectedDay.add(Duration(days: 11)): ['Event A11', 'Event B11'],
//      _selectedDay.add(Duration(days: 17)): ['Event A12', 'Event B12', 'Event C12', 'Event D12'],
//      _selectedDay.add(Duration(days: 22)): ['Event A13', 'Event B13'],
//      _selectedDay.add(Duration(days: 26)): ['Event A14', 'Event B14', 'Event C14'],
//    };

    //_selectedEvents = _events[_selectedDay] ?? [];
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

//  void _addEvent() {
//    final random = Random();
//    final randomValue = random.nextInt(99) + 1;
//
//    final day = _controller.selectedDay;
//    final event = 'Random event $randomValue';
//
//    setState(() {
//      _events.update(
//        day,
//            (previousEvents) => previousEvents..add(event),
//        ifAbsent: () => [event],
//      );
//    });
//  }



//  void _onDaySelected(DateTime day, List events) {
//    print('CALLBACK: _onDaySelected');
//    setState(() {
//      _selectedEvents = events;
//    });
//  }
//
//  void _onVisibleDaysChanged(DateTime first, DateTime last, CalendarFormat format) {
//    print('CALLBACK: _onVisibleDaysChanged');
//  }
//
//  void _onCalendarCreated(DateTime first, DateTime last, CalendarFormat format) {
//    print('CALLBACK: _onCalendarCreated');
//  }

//  Map<String,dynamic> encodeMap(Map<DateTime,dynamic> map) {
//    Map<String,dynamic> newMap = {};
//    map.forEach((key, value) {
//      newMap[key.toString()] = map[key];
//    });
//    return newMap;
//  }
//
//  Map<DateTime,dynamic> decodeMap(Map<String,dynamic> map) {
//    Map<DateTime,dynamic> newMap = {};
//    map.forEach((key, value) {
//      newMap[DateTime.parse(key)] = map[key];
//    });
//    return newMap;
//  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Medicine Schedule'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            TableCalendar(
              events: _events,
              calendarController: _controller,
//              holidays: _holidays,
//              onDaySelected: _onDaySelected,
//              onVisibleDaysChanged: _onVisibleDaysChanged,
//              onCalendarCreated: _onCalendarCreated,
              initialCalendarFormat: CalendarFormat.week,
              calendarStyle: CalendarStyle(
                  todayColor: Colors.blue,
                  selectedColor: Colors.grey,
                  todayStyle: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  )
              ),
              headerStyle: HeaderStyle(
                centerHeaderTitle: true,
              ),
              startingDayOfWeek: StartingDayOfWeek.monday,
              onDaySelected: (date,events){
                setState(() {
                  _selectedEvents = events;
                });
              },
            ),
            ..._selectedEvents.map((event) => ListTile(
              title: Text(event),
            )),
//            RaisedButton(
//              onPressed: _addEvent,
//              child: Text('Add event'),
//            ),
//            RaisedButton(
//              onPressed: () => print(_controller.visibleEvents[_controller.selectedDay]),
//              child: Text('Print selected events'),
//            ),
//            RaisedButton(
//              onPressed: () => print(_events),
//              child: Text('Print all events'),
//            ),
          ],
        ),
      ),
//      floatingActionButton: FloatingActionButton(
//        child: Icon(Icons.add),
//        onPressed: _showAddDialog,
//      ),
    );
  }

//  _showAddDialog() {
//    showDialog(
//        context: context,
//        builder: (context) => AlertDialog(
//              content: TextField(
//                controller: _eventController,
//              ),
//              actions: <Widget>[
//                FlatButton(
//                  child: Text("Save"),
//                  onPressed: () {
//                    if( _eventController.text.isEmpty) return;
//                    if( _events[_controller.selectedDay] != null) {
//                        _events[_controller.selectedDay].add(_eventController.text);
//                      }
//                      else {
//                        _events[_controller.selectedDay] = [_eventController.text];
//                      }
//                      _eventController.clear();
//                      Navigator.pop(context);
//                  },
//                )
//              ],
//            )
//    );
//  }
}
