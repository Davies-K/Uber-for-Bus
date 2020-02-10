import 'package:flutter/material.dart';

import 'package:flutter_map/flutter_map.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:latlong/latlong.dart';
import 'package:project_lyd/widgets/date_picker.dart';


class RouteScreen extends StatefulWidget {
  @override
  _RouteScreenState createState() => _RouteScreenState();
}

class _RouteScreenState extends State<RouteScreen> {

   List<IconData> _icons = [

    FontAwesomeIcons.arrowLeft,
    FontAwesomeIcons.bed,
    FontAwesomeIcons.ravelry,
    FontAwesomeIcons.moneyBill,
    FontAwesomeIcons.bus,
    FontAwesomeIcons.chevronRight

  ];

  @override
  Widget build(BuildContext context) {
    return new Scaffold(

      body: Stack(
        children: <Widget>[

          Container(
                height: MediaQuery.of(context).size.height ,
                child:  new FlutterMap(
                  options: new MapOptions(
                  center: new LatLng(35.22, -80.83), zoom: 15.0
                  ),
                  layers: [
                  new TileLayerOptions(
                  urlTemplate:
                      "https://api.mapbox.com/styles/v1/davies123/ck5mo6pr21jae1impdelwxin0/tiles/256/{z}/{x}/{y}@2x?access_token=pk.eyJ1IjoiZGF2aWVzMTIzIiwiYSI6ImNqcjJxbDE1NzA4cGUzeHAxYWN6ejN2ZTIifQ.tGawju8OGcPb7aGCr7gJJg",
                  additionalOptions: {
                    'accessToken':
                        'pk.eyJ1IjoiZGF2aWVzMTIzIiwiYSI6ImNqcjJxbDE1NzA4cGUzeHAxYWN6ejN2ZTIifQ.tGawju8OGcPb7aGCr7gJJg',
                    'id': 'mapbox://styles/davies123/ck5mo6pr21jae1impdelwxin0'
                  },
                  )]
           
                ),
  
          ),

          Padding(
            padding: EdgeInsets.only(top: 30.0 , left:20.0, right: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                 Container(

                   height: 50.0,
                    width: 50.0,
                    decoration: BoxDecoration (
                      color: Colors.white,
                        borderRadius: BorderRadius.circular(30),
                        
                    ),

                   child: IconButton (
                     icon: Icon(_icons[0], size: 25.0 , color: Colors.black87),
                     onPressed: () => Navigator.pop(context),
                   )
                   

                ),

              ],
            ),
          ),

          Padding(
            padding: EdgeInsets.only(top:MediaQuery.of(context).size.height/2 ),
            child: 
            Container(
              height:MediaQuery.of(context).size.height/2,
              width: MediaQuery.of(context).size.width,

              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(topLeft: Radius.circular(15.0),
                        topRight: Radius.circular(10.0)),
                color: Colors.white,

              ), 

              child: Column(
                children: <Widget>[

                  SizedBox(height: 7),

                  Container(
                    width: 50,
                    height: 5.0,
                    
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Color(0xFFE7EBEE),
                    ),
                  ),

                  SizedBox(height: 7),

                  Text("Choose a trip or swipe up for more", style : TextStyle(
                    fontSize : 11,
                    fontFamily: "Montserrat",


                  ),
                  ),
                  SizedBox(height: 15),

                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 1.0,
                    color: Color(0xFFE7EBEE),
                  ),

                  
                  


                  Container(

                    
                    child: Column(
                      children: <Widget>[

                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,

                          children: <Widget>[

                            Padding(
                              padding: EdgeInsets.only(right: 5),
                              child: Container(

                                height: 80,
                                width: 90,

                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  
                                ),

                                child:  Image(
                                  image: AssetImage('assets/images/bus2.jpg',),
                                  fit : BoxFit.cover,
                                  )
                              ),
                            ),

                            Container(
                              width: 220,
                              
                              child: Column(
                                
                                children: <Widget>[
                                  Text("UberX", style:  TextStyle(
                                    fontFamily: "Montserrat",
                                    fontSize: 16,
                                    fontWeight: FontWeight.w700,

                                  ),
                                  ),

                                  Text("3:33am", style:  TextStyle(
                                    fontFamily: "Montserrat",
                                    fontSize: 11,
                      
                                  ),
                                  ),
                                ],
                              ),
                            ),

                            Padding(
                              padding: EdgeInsets.only(right: 5),
                              child: Text("GHC50.00", style : TextStyle(
                                      fontFamily: "Montserrat",
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,

                                    ),
                              ),
                            ),
                            

                          ],
                        ),
                        Container(
                    width: MediaQuery.of(context).size.width,
                    height: 1.0,
                    color: Color(0xFFE7EBEE),
                  ),

                  Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,

                          children: <Widget>[

                            Padding(
                              padding: EdgeInsets.only(right: 5),
                              child: Container(

                                height: 80,
                                width: 90,

                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  
                                ),

                                child:  Image(
                                  image: AssetImage('assets/images/bus.jpg',),
                                  fit : BoxFit.contain,
                                  )
                              ),
                            ),

                            Container(
                              width: 220,
                              
                              child: Column(
                               
                                
                                children: <Widget>[
                                  Text("Uber", style:  TextStyle(
                                    fontFamily: "Montserrat",
                                    fontSize: 16,
                                    fontWeight: FontWeight.w700,

                                  ),
                                  ),

                                  Text("3:27am drop-off", style:  TextStyle(
                                    fontFamily: "Montserrat",
                                    fontSize: 11,
                      
                                  ),
                                  ),
                                ],
                              ),
                            ),

                            Padding(
                              padding: EdgeInsets.only(right: 5),
                              child: Text("GHC45.00", style : TextStyle(
                                      fontFamily: "Montserrat",
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,

                                    ),
                              ),
                            ),
                            

                          ],
                        ),

                        Container(
                    width: MediaQuery.of(context).size.width,
                    height: 1.0,
                    color: Color(0xFFE7EBEE),
                  ),

                      ],
                    ),
                  ),

                 Column(
                   children: <Widget>[
                      Row(

                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                         children: <Widget>[
                           Padding(
                             padding: EdgeInsets.only(left : 15.0),
                             child: Container(
                               width: 200, 
                               height: 60,

                               decoration: BoxDecoration(
                                 color: Colors.white,
                               ),

                                child: Row (
                                  
                                  children: <Widget> [

                                    Padding(
                                      padding: EdgeInsets.only(right: 30.0),
                                      child: Icon(_icons[3], size: 30.0,color: Colors.green ),
                                    ),

                                    Text("Cash ", style : TextStyle(
                                                        fontSize: 15.0,
                                                        fontWeight: FontWeight.w600,
                                                        
                                                      // letterSpacing: 0.6,
                                                      fontFamily: 'Montserrat'

                                                      )
                                                      ),

                                  ]
                                  
                                )

                             ),
                           ),
                           Padding(
                             padding: EdgeInsets.only(right: 10.0),
                             child: Icon(_icons[5], size: 18.0,color: Colors.black54 ),
                           ),
                         ],
                       ),

                       Row(

                         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                         children: <Widget> [
                           Container(

                             width: 320, 
                             height: 60,
                             decoration: BoxDecoration (
                               color : Colors.black
                             ), 
                             child: Row(
                               mainAxisAlignment: MainAxisAlignment.center,
                               children: <Widget>[
                                 Text(
                                   "Confirm UberX", style: TextStyle(
                                     color: Colors.white, 
                                     fontSize: 19.0,
                                      fontWeight: FontWeight.bold,
                      // letterSpacing: 0.6,
                                        fontFamily: 'Montserrat'
                                     
                                   ),
                                 ),
                               ],
                             ),
                           ), 

                           
                                      GestureDetector(

                                        onTap: () => Navigator.push(context, MaterialPageRoute(
                                         builder: (_) => CupDatePicker (
                                           
                                         )
                                       )),
                                                        child: Container(
                               width: 60, 
                               height: 60,
                               decoration: BoxDecoration (
                                  color : Colors.grey[200]
                               ),

                               child : Icon(
                                 _icons[4], 
                                 size: 25.0,
                                 color: Colors.black,
                               )
                             ),
                           )
                         ]
                       )
                    
                   ]
                 )


              ],
              ),
            )
          ),



        ],
      )

    );
  }
}