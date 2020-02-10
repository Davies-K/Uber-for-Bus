import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:latlong/latlong.dart';
import 'package:project_lyd/screens/route_screen.dart';
import 'package:project_lyd/widgets/date_picker.dart';





class HomeScreen extends StatefulWidget {
  
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  List<IconData> _icons = [

    FontAwesomeIcons.bars,
    FontAwesomeIcons.bed,
    FontAwesomeIcons.ravelry,
    FontAwesomeIcons.biking,
    FontAwesomeIcons.clock,
    FontAwesomeIcons.chevronDown

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

                   child: Icon(_icons[0], size: 25.0 , color: Colors.black87)

                ),

                // Container(

                //    height: 50.0,
                //     width: 50.0,
                //     decoration: BoxDecoration (
                //       color: Colors.white,
                //         borderRadius: BorderRadius.circular(30),
                        
                //     ),

                //    child: Icon(_icons[3], size: 25.0 , color: Colors.black87)

                // )
              ],
            ),
          ),

          Padding(
            padding: EdgeInsets.only(top:MediaQuery.of(context).size.width ),
            child:
             Container(
             
              
              height:MediaQuery.of(context).size.height - MediaQuery.of(context).size.width,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration (
                borderRadius: BorderRadius.only(topLeft: Radius.circular(15.0),
                        topRight: Radius.circular(10.0)),
                color: Colors.white,
              ),

              child: Column(

                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(top: 15.0),
                    child: Text("Good evening, Davies", style: TextStyle(
                      fontSize: 17.0,
                      fontWeight: FontWeight.bold,
                      // letterSpacing: 0.6,
                     fontFamily: 'Montserrat'
                      
                    )
                    ),

                    
                  ),
                  SizedBox(height: 20.0,),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 2.0,
                    color: Color(0xFFE7EBEE),
                  ),

                   SizedBox(height: 10.0,),

                   Container(
                    width: MediaQuery.of(context).size.width - 50.0,
                    height: 50.0,
                    color: Color(0xFFE7EBEE),

                    child: 
                      Padding(
                        padding: EdgeInsets.only(left: 10.0, right: 10.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text("Where to ?", style : TextStyle(
                              fontSize: 22.0,
                              fontWeight: FontWeight.bold,
                              // letterSpacing: 0.6,
                              fontFamily: 'Montserrat'

                            ),
                            ),

                            Column(
                              children: <Widget>[
                                Padding(
                                  padding: EdgeInsets.only(top: 8.0, right: 10.0 ),
                                  child: Row(
                                     
                                    children: <Widget>[
                                      Container(
                                        height: 35.0,
                                        width: 2.0,
                                        color: Colors.black45,
                                      ),

                                      SizedBox(width: 10.0,),

                                      GestureDetector(

                                        onTap: () => Navigator.push(context, MaterialPageRoute(
                                         builder: (_) => CupDatePicker (
                                           
                                         )
                                       )),
                                          child: Container(
                                          height : 35.0,
                                          width: 100,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(35.0),
                                            color: Colors.white,

                                          ),

                                          child: Padding(
                                            padding:EdgeInsets.only(left: 5.0, right: 5.0),
                                            child: Row(
                                               mainAxisAlignment: MainAxisAlignment.spaceAround,

                                               children: <Widget>[
                                                  Icon(_icons[4], size: 20.0 , color: Colors.black),
                                                  Text(" Now ", style : TextStyle(
                                                        fontSize: 15.0,
                                                        fontWeight: FontWeight.bold,
                                                        
                                                      // letterSpacing: 0.6,
                                                      fontFamily: 'Montserrat'

                                                      )),

                                                  Icon(_icons[5], size: 16.0,color: Colors.black87 )


                                               ],
                                            ),
                                          )
                                        ),
                                      )



                                      
                                    ],
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      )
                  ),

                  SizedBox(height: 20.0,),
                  
                  Container (
                    
                    height: 134,
                    

                    child: Column(
                      children: <Widget>[
                        
                           Padding(
                             padding: const EdgeInsets.only(right: 50.0),
                             child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              

                              children: <Widget>[
                                  Padding(
                                    padding: EdgeInsets.only(left: 20.0),
                                    child: Container( 
                                      width :40.0,
                                       height: 40.0,
                                       decoration: BoxDecoration(
                                         borderRadius: BorderRadius.circular(20.0),
                                         color: Colors.grey,
                                       ),

                                       child:  Icon(_icons[4], size: 16.0,color: Colors.white )
                                       ),
                                  ),

                                     GestureDetector(

                                       onTap: () => Navigator.push(context, MaterialPageRoute(
                                         builder: (_) => RouteScreen(
                                           
                                         )
                                       )),
                                          child: Container(
                                         child: Column(
                                           crossAxisAlignment: CrossAxisAlignment.start,
                                           children: <Widget>[
                                             Text("American House Bus Terminal", style: TextStyle(
                                               fontFamily: 'Montserrat',
                                               fontSize : 16,
                                               fontWeight: FontWeight.w800
                                             )),
                                             Text("Ayawaso, Accra", style: TextStyle(
                                               fontFamily: 'Montserrat',),
                                             ),
                                             
                                           ],
                                         ),
                                       ),
                                     )
                              ],

                          ),
                           ),
                          SizedBox(height: 10.0),
                          Padding(
                            padding: EdgeInsets.only(left:80.0, top:10.0),
                            child: Container(
                                           height: 2.0,
                                            width: MediaQuery.of(context).size.width,
                                            color: Colors.black12,

                            ),
                          ),
                          SizedBox(height: 10.0),
                          Padding(
                             padding: const EdgeInsets.only(right: 50.0),
                             child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              

                              children: <Widget>[
                                  Padding(
                                    padding: EdgeInsets.only(left: 20.0),
                                    child: Container( 
                                      width :40.0,
                                       height: 40.0,
                                       decoration: BoxDecoration(
                                         borderRadius: BorderRadius.circular(20.0),
                                         color: Colors.grey,
                                       ),

                                       child:  Icon(_icons[4], size: 16.0,color: Colors.white )
                                       ),
                                  ),

                                     Column(
                                       crossAxisAlignment: CrossAxisAlignment.start,
                                       children: <Widget>[
                                         Text("VIP Bus Station - JEOUN circle", style: TextStyle(
                                           fontFamily: 'Montserrat',
                                           fontSize : 16,
                                           fontWeight: FontWeight.w800
                                         )),
                                         Text("Kwame Nkrumah Ave,Accra", style: TextStyle(
                                           fontFamily: 'Montserrat',
                                         ),),
                                         
                                       ],
                                     )
                              ],

                          ),
                           ),
                        
                        
                      ],
                    )


                  )
                  // ListView(

                  // )

                  
                ],

                
                
              ),
            ),
          )

          
        ],
        

        
      )
      
      

      
      
    );
  }
}