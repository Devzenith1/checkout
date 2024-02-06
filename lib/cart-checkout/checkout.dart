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
                         SizedBox(height: 70,),
                       Text("Order details", style:
                       TextStyle( color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),),
                     SizedBox( height:  10,),
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
                title: Center(child: Text("Checkout",style: GoogleFonts.robotoSerif(
                  color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20,
                ),),),
               ),),
           Positioned(
             left: 0,
               right: 0,
               top: screenheight*0.25,
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
                        const SizedBox(height: 40,),
                        Divider( color: Colors.grey[300],thickness:3,),
                        Text("pick-up outlets", style: GoogleFonts.aBeeZee
                          (fontSize: 15,fontWeight:FontWeight.bold),),
                        const SizedBox(height: 5,),
                        Text("choose the outlet from which you pick the order",style: GoogleFonts.aBeeZee
                          (fontSize: 13,fontWeight:FontWeight.bold, color: Colors.grey[500]),),
                      ],
                    ),
                  ),

           ),),
           Positioned(
              left: (screenwidth-350)/2,
               right: (screenwidth-350)/2,
               top: screenheight*0.22,
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
        // children: [
        //   Positioned(
        //     child: Column(
        //       mainAxisAlignment: MainAxisAlignment.start,
        //       children: [
        //         Container(
        //           height: 300,
        //           decoration: BoxDecoration(
        //             color: Colors.blue[900]
        //           ),
        //            child:  const Column(
        //              mainAxisAlignment: MainAxisAlignment.start,
        //              children: [
        //                 SafeArea(
        //                   child: Padding(
        //                    padding: EdgeInsets.all(10.0),
        //                    child: Row(
        //                      children: [
        //                        Icon(Icons.arrow_back_ios_new_outlined, color: Colors.white,),
        //                        SizedBox( width:100,),
        //                        Row(
        //                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //                          children: [
        //                            Text("Checkout", style:
        //                            TextStyle( color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold) ,),
        //                          ],
        //                        ),
        //
        //
        //                      ],
        //                    ),
        //                  ),
        //                ),
        //                Padding(
        //                  padding: EdgeInsets.symmetric(horizontal: 15),
        //                  child: Text("Order details", style:
        //                  TextStyle( color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),),
        //                ),
        //                Padding(
        //                  padding: EdgeInsets.symmetric(horizontal: 15),
        //                  child: Text("Choose how would you like to take the order",style:
        //                  TextStyle( color: Colors.white, fontSize: 15, ),),
        //                ),
        //              ],
        //            ),
        //
        //
        //         ),
        //       ],
        //     ),
        //   ),
        //   Positioned(
        //     child: Container(
        //       margin: const EdgeInsets.only(top: 200),
        //
        //       decoration: const BoxDecoration(
        //       color: Colors.white,
        //         borderRadius: BorderRadius.only(topLeft: Radius.circular(30), topRight:Radius.circular(30) ,)
        //
        //       ),
        //        child: Column(
        //          children: [
        //            Padding(
        //              padding: const EdgeInsets.symmetric(horizontal: 30),
        //              // child: Container(
        //              //     height: 50,
        //              //     width: double.infinity,
        //              //     decoration: BoxDecoration( color: Colors.grey[300], borderRadius: BorderRadius.circular(30)),
        //              //     child:  Row(
        //              //       mainAxisAlignment: MainAxisAlignment.spaceAround,
        //              //       children: [
        //              //         Text('Delivery' ,style:
        //              //         TextStyle( color: Colors.grey[700], fontSize: 15,fontWeight: FontWeight.bold ),),
        //              //         Text('pick-up',style:
        //              //         TextStyle( color: Colors.grey[700], fontSize: 15,fontWeight: FontWeight.bold ),),
        //              //       ],)
        //              //
        //              // ),
        //            ),
        //          ],
        //        ),
        //     ),
        //   ),
        //   Positioned(child: Container(
        //       height: 50,
        //       width: double.infinity,
        //       decoration: BoxDecoration( color: Colors.grey[300], borderRadius: BorderRadius.circular(30)),
        //       child:  Row(
        //         mainAxisAlignment: MainAxisAlignment.spaceAround,
        //         children: [
        //           Text('Delivery' ,style:
        //           TextStyle( color: Colors.grey[700], fontSize: 15,fontWeight: FontWeight.bold ),),
        //           Text('pick-up',style:
        //           TextStyle( color: Colors.grey[700], fontSize: 15,fontWeight: FontWeight.bold ),),
        //         ],)
        //   ),),


    //     const SafeArea(
    //
    //         child: Padding(
    //           padding: EdgeInsets.all(10.0),
    //           child: Row(
    //
    //             children: [
    //               Icon(Icons.arrow_back_ios_new_outlined, color: Colors.white,),
    //                     SizedBox( width:  100,),
    //                Row(
    //                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //                  children: [
    //                    Text(" Checkout", style:
    //                    TextStyle( color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold) ,),
    //                  ],
    //                ),
    //
    //
    // ],
    //    ),
    //         ),
    //  ),
    //
    //           const Positioned(
    //               top: 100 ,
    //               child: Padding(
    //                 padding: EdgeInsets.symmetric(horizontal: 15),
    //                 child: Text("Order details", style:
    //                 TextStyle( color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),),
    //               ),
    //           ),
    //       const Positioned(
    //         top: 140 ,
    //         child: Padding(
    //           padding: EdgeInsets.symmetric(horizontal: 15),
    //           child: Text("Choose how would you like to take the order",style:
    //           TextStyle( color: Colors.white, fontSize: 15, ),),
    //         ),
    //       ),

          // Padding(
          //   padding: const EdgeInsets.only(top:  175),
          //   child: Positioned(
          //
          //     child: Padding(
          //       padding: const EdgeInsets.symmetric(horizontal: 30),
          //       child: Container(
          //         height: 50,
          //         width: double.infinity,
          //         decoration: BoxDecoration( color: Colors.grey[300], borderRadius: BorderRadius.circular(30)),
          //         child:  Row(
          //           mainAxisAlignment: MainAxisAlignment.spaceAround,
          //           children: [
          //           Text('Delivery' ,style:
          //              TextStyle( color: Colors.grey[700], fontSize: 15,fontWeight: FontWeight.bold ),),
          //           Text('pick-up',style:
          //                TextStyle( color: Colors.grey[700], fontSize: 15,fontWeight: FontWeight.bold ),),
          //         ],)
          //
          //       ),
          //     ),),
          // ),




      )
    );
  }
}
