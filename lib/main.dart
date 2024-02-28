import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'cart-checkout/checkout.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a blue toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // int _counter = 0;
  //
  // void _incrementCounter() {
  //   setState(() {
  //     // This call to setState tells the Flutter framework that something has
  //     // changed in this State, which causes it to rerun the build method below
  //     // so that the display can reflect the updated values. If we changed
  //     // _counter without calling setState(), then the build method would not be
  //     // called again, and so nothing would appear to happen.
  //     _counter++;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return  Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child:  Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            Container(
              margin:  const EdgeInsets.only(left: 50, top: 30),
              child: Image.asset("lib/images/png3.png", color: Colors.lightGreen,width: 120,height: 120,
              ),
            ),
            const SizedBox( height: 10,),
            Container(
              margin: const EdgeInsets.only(left:  200, ),
              child: Image.asset("lib/images/png4.png", color: Colors.orangeAccent,width: 100,height: 100,
              ),
            ),

            const SizedBox(height: 0,),

            Row(
              children: [
                Container(

                  margin: const EdgeInsets.only(left:50, ),
                  child: Image.asset("lib/images/png1.png", color: Colors.purpleAccent,
                  ),

                ),
                  SizedBox( width: 40),
                Container(

                  margin: const EdgeInsets.only(left:50, top: 100 ),
                  child: Image.asset("lib/images/png5.png", color: Colors.lightGreen, height: 70, width: 70,
                  ),

                ),
              ],
            ),
                 SizedBox(height: 5,),

                 Padding(
                   padding: const EdgeInsets.symmetric(horizontal: 25.0),
                   child: Text("Earn Money", style: GoogleFonts.josefinSans(color: Colors.white, fontWeight: FontWeight.bold
                   , fontSize: 10),
                   ),
                 ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Text("Trade Crypto", style: GoogleFonts.josefinSans(color: Colors.white, fontWeight: FontWeight.bold
                  , fontSize: 10),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Text("Spend Cash", style: GoogleFonts.josefinSans(color: Colors.white, fontWeight: FontWeight.bold
                  , fontSize: 10),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Text("Anywhere", style: GoogleFonts.josefinSans(color: Colors.lightGreen, fontWeight: FontWeight.bold
                  , fontSize: 10),
              ),

      ),

                 const SizedBox(
                   height: 10,
                 ),
               GestureDetector(
                 onTap: () {
                   Navigator.push(context,MaterialPageRoute(builder: (context)=>
                       checkout()));
                 },
                 child: Padding(
                   padding: const EdgeInsets.symmetric(horizontal: 25),
                   child: Container(
                     height:  50,
                     width: double.infinity,
                     decoration: BoxDecoration ( color: Colors.lightGreen, borderRadius: BorderRadius.circular(15)),
                     child: Center(
                       child: Padding(
                         padding: const EdgeInsets.all(5.0),
                         child: Text( 'Exchange', style:
                           GoogleFonts.asapCondensed(color: Colors.black87, fontWeight: FontWeight.bold
                             , fontSize: 30),),
                       ),
                     ),
                   ),
                 ),
               )

          ],
        ),
      )

      //   children: [
      //     SizedBox(height:  50,),
      //     Container(
      //       height: 300,
      //          width: 300,
      //       color: Colors.transparent,
      //       child:  Column(
      //         children: [
      //           Image(image: AssetImage("png3.png",),height: 20,
      //             alignment: Alignment.topLeft,color: Colors.lightGreenAccent,
      //           ),
      //
      //           Positioned(
      //             left: 40,
      //             right: 30,
      //
      //             child: Image(image: AssetImage("png5.png",),height: 20,
      //               alignment: Alignment.topLeft,color: Colors.lightGreenAccent,),
      //           ),
      //         ],
      //       ),
      //
      //
      //
      //
      //     ),
      //     const SizedBox(
      //       height:  20,
      //     ),
      //      Container(
      //        height: 400,
      //      color: Colors.white,
      //        child:   Column(
      //          children: [
      //            Image(image: AssetImage("png2.png"),height: 20,
      //              alignment: Alignment.topLeft,
      //              color: Colors.lightGreenAccent,),
      //            Positioned(
      //              left: 40,
      //              right: 30,
      //
      //              child: Image(image: AssetImage("png4.png"),height: 20,
      //                alignment: Alignment.topLeft,color: Colors.lightGreenAccent,),
      //            ),
      //          ],
      //        ),
      //      ),
      //
      //   ],
      // ),
      //



    );
  }
}
