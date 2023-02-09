import 'package:flutter/material.dart';
class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        //for below app bar
        padding: const EdgeInsets.only(
            top: 70,
        left: 30,
        right: 30),
        child: Column(
          children: [
            Row(
              children: [
                Text("Training",
                  style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 25,
                      color: Colors.black,
                      fontFamily: 'InterRegular'
                  ),
                ),
                Expanded(child: Container(

                )),
                Icon(Icons.arrow_back_ios,
                size: 20,
                color: Colors.black),
                SizedBox(width: 10,),
                Icon(Icons.calendar_today_outlined,
                    size: 20,
                    color: Colors.black),
                SizedBox(width: 15,),
                Icon(Icons.arrow_forward_ios,
                    size: 20,
                    color: Colors.black),

              ],
            ),
            SizedBox(height: 15,),
            Row(
              children: [
                Text("Your program",
                  style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 15,
                      color: Colors.black54,

                  ),
                ),
                Expanded(child: Container(

                )),
                Text("Details",
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.blueAccent,
                  ),
                ),
                SizedBox(width: 5,),
                Icon(Icons.arrow_forward,size: 15,color: Colors.black,),
              ],
            ),
            SizedBox(height: 20,),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 200,
              decoration: BoxDecoration(
                //color: Colors.blueAccent,
                gradient: LinearGradient(
                  colors: [
                    Colors.blueAccent.withOpacity(0.8),
                    Colors.lightBlueAccent.withOpacity(0.9)
                  ],
                  begin: Alignment.bottomLeft,
                  end: Alignment.centerRight
                ),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                  bottomLeft: Radius.circular(10),
                  topRight: Radius.circular(80)
                ),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(10,10),
                    blurRadius: 20,
                    color: Colors.black38.withOpacity(0.2),
                  ),
                ],
              ),
              child: Container(
                //left space between text
                padding: const EdgeInsets.only(left: 20,top: 15,right: 20),
                child: Column(
                  //for Text begin from Start
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Next workout",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white
                    ),
                    ),
                    SizedBox(height: 5,),
                    Text("Legs Toning",
                      style: TextStyle(
                          fontSize: 25,
                          color: Colors.white
                      ),
                    ),
                    SizedBox(height: 5,),
                    Text("and Glues Workout",
                      style: TextStyle(
                          fontSize: 25,
                          color: Colors.white
                      ),
                    ),
                    SizedBox(height: 25,),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Row(
                          children: [
                            Icon(Icons.timer,
                            size: 20,
                            color: Colors.white,
                                ),
                            SizedBox(height: 10,),
                            Text("60 min",
                              style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white
                              ),
                            ),
                          ],
                        ),
                        Expanded(child: Container(

                        )),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(60),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black54,
                                blurRadius: 10,
                                offset: Offset(4,8),
                              ),
                            ],
                          ),
                          child: Icon(Icons.play_circle_fill,
                            color: Colors.white,
                            size: 60,),
                        ),

                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 10,),
            Container(
              height: 180,
              width: MediaQuery.of(context).size.width,
              //Using Stack widget we can overlap the content
              child: Stack(
             children: [
               Container(
                 width: MediaQuery.of(context).size.width,
                 margin: const EdgeInsets.only(top: 20),
                 height: 120,
                 decoration: BoxDecoration(
                   borderRadius: BorderRadius.circular(20),
                   image: DecorationImage(
                     image: AssetImage(
                       "images/abc.jpg",
                     ),
                     fit: BoxFit.fill
                   ),
                   boxShadow:[
                     BoxShadow(
                       blurRadius: 40,
                       offset: Offset(8,10),
                       color: Colors.black54.withOpacity(0.8)
                     )
                   ]

                 ),
               )
             ],

              ),

            ),

          ],
        ),
      ),
    );
  }
}
