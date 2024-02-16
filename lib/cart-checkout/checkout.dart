import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class checkout extends StatefulWidget {
  const checkout({Key? key}) : super(key: key);

  @override
  State<checkout> createState() => _checkoutState();
}

class _checkoutState extends State<checkout> {
  @override
  Widget build(BuildContext context) {
    final double screenheight= MediaQuery.of(context).size.height;
    final double screenwidth= MediaQuery.of(context).size.width;
    return  Scaffold(
      body: Stack(
         children: [
           Positioned(
             left: 0,
             top: 0,
             right: 0,
               height: screenheight/3,
               child: Container(
                 decoration: BoxDecoration(
                   color: Colors.blue[800],
                 ),
                 child: const SafeArea(
                   child: Padding(
                     padding: EdgeInsets.symmetric(horizontal: 20),
                     child: Column(
                       //mainAxisAlignment: MainAxisAlignment.center,
                       crossAxisAlignment: CrossAxisAlignment.start,
                       children: [
                         SizedBox(height: 60,),
                       Text("Order details", style:
                       TextStyle( color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),),
                     SizedBox( height:  5,),
                     Text("Choose how would you like to take the order",style:
                     TextStyle( color: Colors.white, fontSize: 15, ),),
                       ],
                     ),
                   ),
                 )
                 ,
                 //color: Colors.blue[800],
               ),),
           Positioned(
             top: 0,
               right: 0,
               left: 0,
               child: AppBar(
                 elevation: 0,
                 backgroundColor: Colors.transparent,
                 leading: IconButton(
                   icon: const Icon( Icons.arrow_back_ios_new_outlined, color: Colors.white,size: 20),
                   onPressed: () {},
                 ),
                title: Text("Checkout",style: GoogleFonts.robotoSerif(
                  color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20,
                ),),
                  centerTitle: true,
               ),),
           Positioned(
             left: 0,
               right: 0,
               top: screenheight*0.22,
               height: screenheight,
               child: Container(
                 decoration: BoxDecoration(
                   color: Colors.grey[200],
                   borderRadius: const BorderRadius.only
                     ( topLeft:Radius.circular(30),topRight:Radius.circular(30), ),
                 ),

                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child:  Column(
                      // mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 30,),
                        Divider( color: Colors.grey[300],thickness:3,),
                        Text("pick-up outlets", style: GoogleFonts.aBeeZee
                          (fontSize: 15,fontWeight:FontWeight.bold),),
                        const SizedBox(height: 5,),
                        Text("choose the outlet from which you pick the order",style: GoogleFonts.aBeeZee
                          (fontSize: 13,fontWeight:FontWeight.bold, color: Colors.grey[500]),
                        ),
                          const SizedBox( height: 5,),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(right: 8),
                                child: Container(
                                  height: 150,
                                  width: 150,
                                  decoration:  const BoxDecoration(
                                      color: Colors.white, borderRadius:BorderRadius.all(Radius.circular(20))
                                  ),
                                  child: const Column(
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.all(10.0),
                                        child: Icon(Icons.breakfast_dining, color: Colors.blue, size: 60,),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.symmetric(horizontal: 10),
                                        child: Padding(
                                          padding: EdgeInsets.only(bottom: 5),
                                          child: Row(
                                            children: [
                                              Text("Outlet 1 -", style: TextStyle( fontWeight: FontWeight.bold),),
                                              Text("- 2 km away", style: TextStyle( fontSize: 12, color: Colors.grey),),
                                            ],
                                          ),
                                        ),

                                      ),
                                      Padding(
                                        padding: EdgeInsets.symmetric( horizontal: 10),
                                        child: Text("Outlet address, street,",style: TextStyle( fontSize: 12, color: Colors.grey)),

                                      ),
                                      Text("district, town,",style: TextStyle( fontSize: 12,color: Colors.grey)),

                                    ],
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  height: 150,
                                  width: 150,
                                  decoration:  BoxDecoration(

                                      color: Colors.white, borderRadius:BorderRadius.all(Radius.circular(20))
                                  ),
                                  child: const Column(
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.all(10.0),
                                        child: Icon(Icons.breakfast_dining, color: Colors.blue, size: 60,),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.symmetric(horizontal: 10),
                                        child: Padding(
                                          padding: EdgeInsets.only(bottom: 5),
                                          child: Row(
                                            children: [
                                              Text("Outlet 1 -", style: TextStyle( fontWeight: FontWeight.bold),),
                                              Text("- 2 km away", style: TextStyle( fontSize: 12, color: Colors.grey),),
                                            ],
                                          ),
                                        ),

                                      ),
                                      Padding(
                                        padding: EdgeInsets.symmetric( horizontal: 10),
                                        child: Text("Outlet address, street,",style: TextStyle( fontSize: 12, color: Colors.grey)),

                                      ),
                                      Text("district, town,",style: TextStyle( fontSize: 12,color: Colors.grey)),

                                    ],
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  height: 150,
                                  width: 150,
                                  decoration:  BoxDecoration(

                                      color: Colors.white, borderRadius:BorderRadius.all(Radius.circular(20))
                                  ),
                                  child: const Column(
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.all(10.0),
                                        child: Icon(Icons.breakfast_dining, color: Colors.blue, size: 60,),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.symmetric(horizontal: 10),
                                        child: Padding(
                                          padding: EdgeInsets.only(bottom: 5),
                                          child: Row(
                                            children: [
                                              Text("Outlet 1 -", style: TextStyle( fontWeight: FontWeight.bold),),
                                              Text("- 2 km away", style: TextStyle( fontSize: 12, color: Colors.grey),),
                                            ],
                                          ),
                                        ),

                                      ),
                                      Padding(
                                        padding: EdgeInsets.symmetric( horizontal: 10),
                                        child: Text("Outlet address, street,",style: TextStyle( fontSize: 12, color: Colors.grey)),

                                      ),
                                      Text("district, town,",style: TextStyle( fontSize: 12,color: Colors.grey)),

                                    ],
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  height: 150,
                                  width: 150,
                                  decoration:  BoxDecoration(

                                      color: Colors.white, borderRadius:BorderRadius.all(Radius.circular(20))
                                  ),
                                  child: const Column(
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.all(10.0),
                                        child: Icon(Icons.breakfast_dining, color: Colors.blue, size: 60,),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.symmetric(horizontal: 10),
                                        child: Padding(
                                          padding: EdgeInsets.only(bottom: 5),
                                          child: Row(
                                            children: [
                                              Text("Outlet 1 -", style: TextStyle( fontWeight: FontWeight.bold),),
                                              Text("- 2 km away", style: TextStyle( fontSize: 12, color: Colors.grey),),
                                            ],
                                          ),
                                        ),

                                      ),
                                      Padding(
                                        padding: EdgeInsets.symmetric( horizontal: 10),
                                        child: Text("Outlet address, street,",style: TextStyle( fontSize: 12, color: Colors.grey)),

                                      ),
                                      Text("district, town,",style: TextStyle( fontSize: 12,color: Colors.grey)),

                                    ],
                                  ),
                                ),
                              ),

                            ],
                          ),
                        ),
                        Divider( color: Colors.grey[300],thickness:3, height: 20,),

                          Container(
                            height: screenheight*0.35,
                            width: screenwidth*0.9,

                            decoration:
                            BoxDecoration( borderRadius:
                            BorderRadius.circular(20),color: Colors.white,),

                              child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,

                                children: [
                                  Text("pick-up Time", style: GoogleFonts.aBeeZee
                                    (fontSize: 15,fontWeight:FontWeight.bold),),
                                  Row(
                                    children: [
                                      Icon(Icons.remove_circle_outline_rounded,color: Colors.grey, size: 15,),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Expanded(
                                        child: Text("Due to high demand, you can choose the pick-up time to be in 4 days or later"
                                            ,style: GoogleFonts.aBeeZee 
                                          (fontSize: 13,fontWeight:FontWeight.bold, color: Colors.grey[500]),
                                        ),
                                      ),
                                    ],
                                  ),
                                   SizedBox(height: 10,),
                                   Expanded(
                                     child: Container(
                                      // margin: EdgeInsets.only( bottom: 10, left: 10, right: 10),
                                       decoration: BoxDecoration( color: Colors.grey[200],
                                         borderRadius: BorderRadius.circular(20),),

                                       child: Column(

                                         children: [
                                           Expanded(

                                             child: CalendarDatePicker(

                                               initialDate:DateTime.now(),
                                               firstDate: DateTime.now(),
                                               lastDate: DateTime.now(),
                                               onDateChanged: (value) {

                                               },),
                                           ),
                                           SizedBox( height: 2,),
                                           Padding(
                                             padding: const EdgeInsets.only(top: 10, bottom: 10,left: 20),
                                             child: Row(
                                               mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                               children: [
                                                 Text("Time"),
                                                 Container(
                                                   height: 20,
                                                   width: 50,
                                                   child: Text("09:41"),

                                                 ),
                                                 Container(
                                                   height: 20,
                                                   width: 50,
                                                   child: Text("09:41"),),

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
                          ),
                      ],
                    ),
                  ),


           ),),
           Positioned(
              left: (screenwidth-350)/2,
               right: (screenwidth-350)/2,
               top: screenheight*0.19,
               //height: screenheight,
               child: Container(
                 height: 50,
                 decoration: BoxDecoration(
                   borderRadius: BorderRadius.circular(30), color: Colors.grey[350],

                 ),
                 child: Container(
                   child: Row(
                     mainAxisAlignment: MainAxisAlignment.spaceAround,
                     children: [
                     Text('Delivery' ,style:
                                   TextStyle( color: Colors.grey[700], fontSize: 15,fontWeight: FontWeight.bold ),),
                               Text('pick-up',style:
                                     TextStyle( color: Colors.grey[700], fontSize: 15,fontWeight: FontWeight.bold ),),
                     ],
                   ),

                 ),
               ),),
         ],

      ),
    );
  }
}
