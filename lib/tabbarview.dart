import 'package:btclord/outlet.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:table_calendar/table_calendar.dart';
class tabview extends StatefulWidget {
  const tabview({Key? key}) : super(key: key);

  @override
  State<tabview> createState() => _tabviewState();
}

class _tabviewState extends State<tabview> {
  @override
  Widget build(BuildContext context) {
    final double screenheight = MediaQuery
        .of(context)
        .size
        .height;
    final double screenwidth = MediaQuery
        .of(context)
        .size
        .width;
    var today = DateTime.now();

    return Column(
      children: [
        Column(
          // mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20,),
            Divider(color: Colors.grey[300], thickness: 3,),
            Text("pick-up outlets", style: GoogleFonts.aBeeZee
              (fontSize: 15, fontWeight: FontWeight.bold),),
            const SizedBox(height: 2,),
            Text("choose the outlet from which you pick the order",
              style: GoogleFonts.aBeeZee
                (fontSize: 12,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey[500]),
            ),
            const SizedBox(height: 3,),
            const SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  //1
                  outlet(),
                  outlet(),
                  outlet(),
                  outlet(),


                ],
              ),
            ),


            Divider(color: Colors.grey[300], thickness: 3, height: 20,),

            Container(
              height: screenheight * 0.36,
              width: screenwidth * 0.9,

              decoration:
              BoxDecoration(borderRadius:
              BorderRadius.circular(20), color: Colors.white,),

              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child:

                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,

                  children: [
                    // text

                    Padding(
                      padding: const EdgeInsets.only(top: 2),
                      child: Text("pick-up Time", style: GoogleFonts.aBeeZee
                        (fontSize: 15, fontWeight: FontWeight.bold),),
                    ),
                    Row(
                      children: [
                        const Icon(Icons.remove_circle_outline_rounded,
                          color: Colors.grey, size: 15,),
                        const SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: Text(
                            "Due to high demand, you can choose the pick-up time to be in 4 days or later"
                            , style: GoogleFonts.aBeeZee
                            (fontSize: 13,
                              fontWeight: FontWeight.bold,
                              color: Colors.grey[500]),
                          ),
                        ),

                      ],
                    ),
                         const SizedBox(width: 10,),

                        Padding(
                          padding: const EdgeInsets.all(3.0),
                          child: Container(
                           // margin: EdgeInsets.only(top: 10),
                            height: screenheight* 0.27 ,

                            decoration: BoxDecoration(
                              color: Colors.grey[200], borderRadius: BorderRadius.circular(10),
                            ),
                            child:  Padding(
                              padding: const EdgeInsets.only( top: 5 ),

                              child: Column(

                                children: [
                                  TableCalendar(
                                    calendarStyle: const CalendarStyle(
                                      cellPadding: EdgeInsets.symmetric(vertical: 2),
                                        cellMargin: EdgeInsets.only(top: 0,),),
                                    focusedDay:today ,
                                    firstDay:DateTime.utc(2010, 10, 16),
                                    lastDay: DateTime.utc(2030, 3, 14),
                                    rowHeight: 20,

                                    headerVisible:true ,
                                    headerStyle: const HeaderStyle(
                                      headerMargin: EdgeInsets.zero,
                                      leftChevronMargin: EdgeInsets.zero,
                                        leftChevronPadding: EdgeInsets.zero,
                                        rightChevronPadding: EdgeInsets.zero,
                                        headerPadding: EdgeInsets.zero,
                                        formatButtonVisible: false,),
                                  ),

                                  const SizedBox(height: 3,),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 20, right: 20, top: 5),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text("Time", style: GoogleFonts.robotoSerif(
                                          color: Colors.black87, fontWeight: FontWeight.bold, fontSize: 15,
                                        ),),
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [


                                            Padding(
                                              padding: const EdgeInsets.only(right:  20,),
                                              child: Container(
                                                decoration: BoxDecoration(
                                                  color: Colors.white, borderRadius: BorderRadius.circular(5)
                                                ),
                                                child: Padding(
                                                  padding: const EdgeInsets.only(right: 5, left: 3, top: 4,bottom: 3,),
                                                  child: Center(
                                                    child: Text(
                                                        '09 : 41', style: GoogleFonts.robotoSerif(
                                                      color: Colors.black87, fontWeight: FontWeight.bold,
                                                    ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),

                                            const SizedBox( width: 10,),
                                            Container(
                                              decoration:  BoxDecoration(
                                                color: Colors.white, borderRadius: BorderRadius.circular(5),
                                              ),
                                              child: Row(
                                                children: [
                                                  Padding(
                                                    padding: const EdgeInsets.only(top: 2, bottom: 2, left: 2, right: 2,),
                                                    child: Container(decoration:  BoxDecoration( color: Colors.grey[300],
                                                        borderRadius: BorderRadius.circular(2)),
                                                      child: Padding(
                                                      padding:  const EdgeInsets.only(right: 5, left: 5, top: 2,bottom: 2,),
                                                      child: Text("AM", style: GoogleFonts.robotoSerif(
                                                        color: Colors.black87, fontWeight: FontWeight.bold,
                                                      ),
                                                      ),
                                                    ),
                                                    ),
                                                  ),
                                                  const SizedBox(width: 5 ,),


                                                  const Padding(
                                                  padding: EdgeInsets.only(right: 5, left: 5, top: 2,bottom: 2,),
                                                  child: Text("PM"),
                                                  ),
                                                ],
                                              ),
                                            )
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),


                            ),
                          ),
                        ),






                  ],
                ),
              ),
            ),
          ],


        ),
        const SizedBox(height:10,),
        Container(
          width: double.infinity,
          height: 40,
          decoration: BoxDecoration( color:  Colors.blue[800], borderRadius: BorderRadius.circular(20),),
          child:  Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: Text(
                  'Next >', style: GoogleFonts.robotoSerif(
    color: Colors.white, fontWeight: FontWeight.bold,
    ),
              ),
            ),
          ),
        )


      ],);
  }
  }
