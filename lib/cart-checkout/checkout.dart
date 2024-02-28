import 'package:btclord/tabbarview.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:table_calendar/table_calendar.dart';

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
    return  DefaultTabController(
      length: 2,
      child: Scaffold(
        body: Stack(
           children: [

             //FISRT CONTAINTER

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
                           SizedBox(height: 45,),
                         Text("Order details", style:
                         TextStyle( color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),),
                       SizedBox( height:  5,),
                       Text("Choose how would you like to take the order",style:
                       TextStyle( color: Colors.white, fontSize: 15,),),
                         ],
                       ),
                     ),
                   )
                   ,
                   //color: Colors.blue[800],
                 ),),






             //APP BAR FOR CHCECKOUT

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


             // TAB BAR BUTTON FOR TABVIEW

             Positioned(
               left: 0,
                 right: 0,
                 top: screenheight*0.21,
                 height: screenheight,
                 child: Container(
                   decoration: BoxDecoration(
                     color: Colors.grey[200],
                     borderRadius: const BorderRadius.only
                       ( topLeft:Radius.circular(30),topRight:Radius.circular(30), ),
                   ),

                    child: const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: TabBarView(
                        children: [

                          tabview(),
                          Padding(
                            padding: EdgeInsets.only(left: 2),
                            child: tabview(),
                          ),


                          // first tab view





                        ],


                      ),

                    ),


             ),),








              // TAB BAR VIEW BUTTON

             Positioned(
                left: (screenwidth-300)/2,
                 right: (screenwidth-300)/2,
                 top: screenheight*0.18,
                 //height: screenheight,
                 child: Container(
                   //margin: EdgeInsets.zero, padding: EdgeInsets.zero,
                  //// margin: EdgeInsets.only( top:  10, bbo),
                   height: 45,
                   decoration: BoxDecoration(
                     borderRadius: BorderRadius.circular(30), color: Colors.grey[350],

                   ),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 4, bottom: 4, right: 4, left: 4,),
                      child: TabBar(
                               indicatorSize: TabBarIndicatorSize.tab ,
                        indicator:  BoxDecoration(

                          color: Colors.white, borderRadius: BorderRadius.circular(30),
                        ),
                        labelColor: Colors.blue,
                        unselectedLabelColor: Colors.grey,
                        tabs:  const [
                          Tab( text: "Delivery",),
                          Tab( text: "Pick- up",),

                        ],
                      ),
                    )
                   //   child: Row(
                   //     mainAxisAlignment: MainAxisAlignment.spaceAround,
                   //     children: [
                   //     Text('Delivery' ,style:
                   //                   TextStyle( color: Colors.grey[700], fontSize: 15,fontWeight: FontWeight.bold ),),
                   //               Text('pick-up',style:
                   //                     TextStyle( color: Colors.grey[700], fontSize: 15,fontWeight: FontWeight.bold ),),
                   //     ],
                   //   ),
                   //
                   // ),
                 ),),
           ],

        ),
      ),
    );
  }
}
