import 'package:flutter/material.dart';
class outlet extends StatefulWidget {
  const outlet({Key? key}) : super(key: key);

  @override
  State<outlet> createState() => _outletState();
}

class _outletState extends State<outlet> {
  @override
  Widget build(BuildContext context) {
    final double screenheight= MediaQuery.of(context).size.height;
    return // 3
      Padding(
        padding: const EdgeInsets.only(top: 8, right: 8,),
        child: Container(
          height: screenheight * 0.16,
          width: 130,
          decoration: const BoxDecoration(

              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(20))
          ),
          child: const Column(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 5, left: 5, right: 5,),
                child: Icon(Icons.breakfast_dining,
                  color: Colors.blue, size:50,),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Padding(
                  padding: EdgeInsets.only(bottom: 0,),
                  child: Row(
                    children: [
                      Text("Outlet 1 -", style: TextStyle(
                          fontWeight: FontWeight.bold),),
                      Text("- 2 km away", style: TextStyle(
                          fontSize: 12, color: Colors.grey),),
                    ],
                  ),
                ),

              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 5,),
                child: Text("Outlet address, street,",
                    style: TextStyle(
                        fontSize: 12, color: Colors.grey)),

              ),
              Text("district, town,", style: TextStyle(fontSize: 12,
                  color: Colors.grey)),

            ],
          ),
        ),

      );
  }
}
