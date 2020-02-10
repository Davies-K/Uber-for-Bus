import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:intl/intl.dart';

class CupDatePicker extends StatefulWidget {
  @override
  _DatePickerState createState() => _DatePickerState();
}

class _DatePickerState extends State<CupDatePicker> {

  DateTime _dateTime = DateTime.now();


  @override
  Widget build(BuildContext context) {
    var now = new DateTime.now();
    var formatter = new DateFormat('EEE, d MMM');
    String formatted = formatter.format(now);

    var formatter2 = new DateFormat('EEE, d MMM, h:mm a');
    String formatted2 = formatter2.format(_dateTime);
  
    return Scaffold(

      backgroundColor: Colors.white,
      
      body: Column(
        
        
        children: <Widget>[

          SizedBox(height: 40),

          Text("Schedule a trip", style: TextStyle(
            // fontFamily: "Montserrat",
            fontWeight: FontWeight.w400,
            
            fontSize: 22,
            letterSpacing: 1.0,
            color: Colors.black
          ),
          ),
          SizedBox(height: 20),

          Text("$formatted", style: TextStyle(
            
            fontWeight: FontWeight.w300,
            fontSize: 14,
            color: Colors.black,
             fontFamily: "Montserrat",
          ),
          ),

          SizedBox(height: 5),

          Text("$formatted2", style: TextStyle(
            // fontFamily: "Montserrat",
            fontWeight: FontWeight.w400,
            fontSize: 18,
            letterSpacing: 1.0,
            color: Colors.black,
             fontFamily: "Montserrat",
          ),
          ),
          SizedBox(
            
            height: 200,
            child: CupertinoDatePicker(
              initialDateTime: _dateTime,
              onDateTimeChanged: (dateTime) {
                
                setState(() {
                  _dateTime = dateTime;
                });
              },

            )
          ),
          

           Row(
             mainAxisAlignment: MainAxisAlignment.center,

             children: <Widget>[
               GestureDetector (
                     onTap: () => Navigator.pop(context),
                                child: Padding(
                   padding: EdgeInsets.only(right: 15),
                   child: Container(
                     alignment:Alignment.center,
                     height: 55,
                     width : 170,
                     color: Colors.grey[350],

                     
                        child: Text(
                         "Cancel", style: TextStyle(
                           color: Colors.black,
                           fontSize: 18,
                           fontFamily: "Montserrat",
                           letterSpacing: 1.0,
                           fontWeight: FontWeight.bold
                         ),
                       ),
                    
                   ),


                 ),
               ),
               Container(
                alignment:Alignment.center,

                 height: 55,
                 width : 120,
                 color: Colors.black,

                 child: Text(
                     "Set", style: TextStyle(
                       color: Colors.white,
                       fontSize: 18,
                       fontFamily: "Montserrat",
                       letterSpacing: 1.0,
                       fontWeight: FontWeight.bold
                     ),
                   ),
               )
             ],
           )
        ],
      )
    );
  }
}