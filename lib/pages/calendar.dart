import 'package:flutter/material.dart';
import 'package:flutter_calendar/flutter_calendar.dart';



class CalendarViewApp extends StatefulWidget {
  @override
  _CalendarViewAppState createState() => _CalendarViewAppState();
}

class _CalendarViewAppState extends State<CalendarViewApp> {
  void handleNewDate(date) {
    print("handleNewDate ${date}");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text("Programme"),
        backgroundColor: Colors.purple,
      ),
      backgroundColor: Colors.grey[200],

        body: new Container(
          margin: new EdgeInsets.symmetric(
            horizontal: 10.0,
            vertical: 10.0,
          ),
          child: new ListView(
            shrinkWrap: true,
            children: <Widget>[
               Text(
                 'Evènements à venir',
                 textAlign:TextAlign.center ,
                 style: TextStyle(
                   color:Colors.purple,
                   fontWeight: FontWeight.w500,
                   fontSize: 25,

                 ),
                 ),
                 SizedBox(height:30),
               Card(
                 elevation: 5,
                    child: Calendar(
                  onSelectedRangeChange: (range) =>
                      print("Range is ${range.item1}, ${range.item2}"),
                  isExpandable: true,
              ),
               ),

            ],
          ),
        ),
      );
    
  }
}