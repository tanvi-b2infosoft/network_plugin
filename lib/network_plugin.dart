library network_plugin;

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NetworkPlugin extends StatefulWidget {
  const NetworkPlugin({super.key});

  @override
  State<NetworkPlugin> createState() => _NetworkPluginState();
}

class _NetworkPluginState extends State<NetworkPlugin> {
  bool isSwitched1 = false;
  bool isSwitched2 = false;
  bool isSwitched3 = false;
  bool isSwitched4 = false;
  bool isSwitched5 = false;
  bool isSwitched6 = false;
  bool isSwitched7 = false;
  bool isSwitched8 = false;
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Stack(
      children: [
        Container(
          color: Colors.grey.shade50,
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 30,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(Icons.network_check_sharp,color: Colors.orangeAccent,),
                    SizedBox(width: 10,),
                    Column(
                      children: [
                        Container(
                          width:2,
                          decoration: BoxDecoration(
                              color: Colors.black
                          ),
                          child: Text(" "),
                        ),
                        Container(
                          width:2,
                          decoration: BoxDecoration(
                              color: Colors.black
                          ),
                          child: Text(" "),
                        ),
                      ],
                    ),
                    SizedBox(width: 10,),
                    Text("network", style: TextStyle(fontWeight: FontWeight.bold,
                        fontSize: 40),)
                  ],
                ),
                SizedBox(height: 50,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Transform.scale(
                      scale:1.17,
                      child: Container(
                        child: CupertinoSwitch(
                          value: isSwitched1,
                          onChanged: (val) {
                            setState(() {
                              isSwitched1 = val;
                            });
                          },
                        ),
                      ),
                    ),
                    SizedBox(width: 20,),
                    Expanded(
                      child: Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Location Data", style: TextStyle(color: Colors.black, fontSize: 23, fontWeight: FontWeight.bold),),
                            Text("The collection and the use of location data used for naviation purpoise", style: TextStyle(
                                color: Colors.grey.shade500, fontSize: 16
                            ),)
                          ],
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(height: 30,),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Transform.scale(
                      scale: 1.17,
                      child: Container(
                        child: CupertinoSwitch(
                          value: isSwitched2,
                          onChanged: (val) {
                            setState(() {
                              isSwitched2 = val;
                            });
                          },
                        ),
                      ),
                    ),
                    SizedBox(width: 20,),
                    Expanded(
                      child: Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Measurement", style: TextStyle(color: Colors.black, fontSize: 23, fontWeight: FontWeight.bold),),
                            Text("The srorage of information or access to information that is already stored,on user device"
                                "such as accessing advertising identifers and/or other identifiers and/or using"
                                "cookies or other similar technology", style: TextStyle(
                                color: Colors.grey.shade500, fontSize: 16
                            ),)
                          ],
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(height: 30,),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Transform.scale(
                      scale: 1.17,
                      child: Container(
                        child: CupertinoSwitch(
                          value: isSwitched3,
                          onChanged: (val) {
                            setState(() {
                              isSwitched3 = val;
                            });
                          },
                        ),
                      ),
                    ),
                    SizedBox(width: 20,),
                    Expanded(
                      child: Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Content Delivery", style: TextStyle(color: Colors.black, fontSize: 23, fontWeight: FontWeight.bold),),
                            Text("The collection of information about the user of a site to subsequently personalize"
                                "advertising for them or other contents. i.e., on ohter site or apps. Typically the content or the site or the app", style: TextStyle(
                                color: Colors.grey.shade500, fontSize: 16
                            ),)
                          ],
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(height: 30,),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Transform.scale(
                      scale: 1.17,
                      child: Container(
                        child: CupertinoSwitch(
                          value: isSwitched4,
                          onChanged: (val) {
                            setState(() {
                              isSwitched4 = val;
                            });
                          },
                        ),
                      ),
                    ),
                    SizedBox(width: 20,),
                    Expanded(
                      child: Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Location Data", style: TextStyle(color: Colors.black, fontSize: 23, fontWeight: FontWeight.bold),),
                            Text("The collection and the use of location data used for naviation purpoise", style: TextStyle(
                                color: Colors.grey.shade500, fontSize: 16
                            ),)
                          ],
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(height: 30,),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Transform.scale(
                      scale: 1.17,
                      child: Container(
                        child: CupertinoSwitch(
                          value: isSwitched5,
                          onChanged: (val) {
                            setState(() {
                              isSwitched5 = val;
                            });
                          },
                        ),
                      ),
                    ),
                    SizedBox(width: 20,),
                    Expanded(
                      child: Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Location Data", style: TextStyle(color: Colors.black, fontSize: 23, fontWeight: FontWeight.bold),),
                            Text("The collection and the use of location data used for naviation purpoise", style: TextStyle(
                                color: Colors.grey.shade500, fontSize: 16
                            ),)
                          ],
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(height: 30,),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Transform.scale(
                      scale: 1.17,
                      child: Container(
                        child: CupertinoSwitch(
                          value: isSwitched6,
                          onChanged: (val) {
                            setState(() {
                              isSwitched6 = val;
                            });
                          },
                        ),
                      ),
                    ),
                    SizedBox(width: 20,),
                    Expanded(
                      child: Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Location Data", style: TextStyle(color: Colors.black, fontSize: 23, fontWeight: FontWeight.bold),),
                            Text("The collection and the use of location data used for naviation purpoise", style: TextStyle(
                                color: Colors.grey.shade500, fontSize: 16
                            ),)
                          ],
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(height: 30,),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Transform.scale(
                      scale: 1.17,
                      child: Container(
                        child: CupertinoSwitch(
                          value: isSwitched7,
                          onChanged: (val) {
                            setState(() {
                              isSwitched7 = val;
                            });
                          },
                        ),
                      ),
                    ),
                    SizedBox(width: 20,),
                    Expanded(
                      child: Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Content Delivery", style: TextStyle(color: Colors.black, fontSize: 23, fontWeight: FontWeight.bold),),
                            Text("The collection of information about the user of a site to subsequently personalize"
                                "advertising for them or other contents. i.e., on ohter site or apps. Typically the content or the site or the app", style: TextStyle(
                                color: Colors.grey.shade500, fontSize: 16
                            ),)
                          ],
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(height: 30,),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Transform.scale(
                      scale: 1.17,
                      child: Container(
                        child: CupertinoSwitch(
                          value: isSwitched8,
                          onChanged: (val) {
                            setState(() {
                              isSwitched8 = val;
                            });
                          },
                        ),
                      ),
                    ),
                    SizedBox(width: 20,),
                    Expanded(
                      child: Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Location Data", style: TextStyle(color: Colors.black, fontSize: 23, fontWeight: FontWeight.bold),),
                            Text("The collection and the use of location data used for naviation purpoise", style: TextStyle(
                                color: Colors.grey.shade500, fontSize: 16
                            ),)
                          ],
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(height: 250,),
              ],
            ),
          ),
        ),
        Positioned(
            bottom: 0,
            child: Container(
              color: Colors.white,
              width: width,
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 50),
              child: Row(
                mainAxisAlignment:MainAxisAlignment.center,
                children: [
                  Container(
                    width: width*0.35,
                    height: 50,
                    child: TextButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white,
                            side: BorderSide(
                                color: Colors.black
                            )
                        ),
                        onPressed: (){
                          setState(() {
                            if(isSwitched1== true&&isSwitched2== true&&isSwitched3== true&&isSwitched4== true&&
                                isSwitched5== true&&isSwitched6== true&&isSwitched7== true&&isSwitched8== true){
                              isSwitched1= false;
                              isSwitched2 = false;
                              isSwitched3 = false;
                              isSwitched4 = false;
                              isSwitched5 = false;
                              isSwitched6 = false;
                              isSwitched7 = false;
                              isSwitched8 = false;

                            }else{
                            if(isSwitched1 == false){
                              isSwitched1 = !isSwitched1;
                            }
                            if(isSwitched2 == false){
                              isSwitched2 = !isSwitched2;
                            }
                            if(isSwitched3 == false){
                              isSwitched3 = !isSwitched3;
                            }
                           if(isSwitched4 == false){
                             isSwitched4 = !isSwitched4;
                           }
                            if(isSwitched5 == false){
                              isSwitched5 = !isSwitched5;
                            }
                           if(isSwitched6 == false){
                             isSwitched6 = !isSwitched6;
                           }
                          if(isSwitched7 == false){
                            isSwitched7 = !isSwitched7;
                          }
                           if(isSwitched8 == false){
                             isSwitched8 = !isSwitched8;
                           }}


                          });

                        }, child: Text("TOGGLE ALL",
                      style: TextStyle(fontSize: 17,color: Colors.black),)),
                  ),
                  SizedBox(width: 30,),
                  Container(
                    width: width*0.35,
                    height: 50,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(backgroundColor: Colors.blue.shade100),
                        onPressed: (){}, child: const Text("UPDATE",style: TextStyle(
                        fontSize: 17,
                        color: Colors.white
                    ),)),
                  )
                ],
              ),
            ) )
      ],
    );
  }
}

