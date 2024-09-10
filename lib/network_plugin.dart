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

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return MediaQuery.withNoTextScaling(
      child: Container(
        height: MediaQuery.of(context).size.height,
        color: Colors.grey.shade50,
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 30,),
              Center(
                child: Text("Consent Topics", style: TextStyle(fontWeight: FontWeight.bold,
                    fontSize: 35, fontFamily: "Verdana"),),
              ),
              SizedBox(height: 40,),
              Divider(
                color: Colors.grey.shade400,
                thickness: 1, // Optional: Set thickness of the divider
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(child: Text("App Permissions", style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold,fontFamily: "Verdana"),)),
      
                  Row(
                    children: [
                      Transform.scale(
                        scale:0.9,
                        child: CupertinoSwitch(
                          activeColor: Color(0XFF56e359),
                          trackColor: Color(0XFFf6a70a),
                          value: isSwitched1,
                          onChanged: (val) {
                            setState(() {
                              isSwitched1 = val;
                            });
                          },
                        ),
                      ),
                      SizedBox(width: 5,),
                      Text((isSwitched1)?"ON":"OFF",style: TextStyle(color:isSwitched1?Color(0XFF56e359) :Colors.black,fontSize: 16,fontWeight: FontWeight.bold,fontFamily: "Verdana"),)
                    ],
                  ),
                ],
              ),
              Text("Requesting permission to access certain features or data on the user's device, such as the camera, microphone or contacts", style: TextStyle(
                  color: Colors.black, fontSize: 16, fontWeight: FontWeight.w300,fontFamily: "Verdana"
              ),),
              SizedBox(height: 5,),
              Divider(
                color: Colors.grey.shade400,
                thickness: 1, // Optional: Set thickness of the divider
              ),
              SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(child: Text("Device Information", style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold,fontFamily: "Verdana"),)),
                  SizedBox(width: 20,),
                  Row(
                    children: [
                      Transform.scale(
                        scale:0.9,
                        child: CupertinoSwitch(
                          value: isSwitched2,
                          activeColor: Color(0XFF56e359),
                          trackColor: Color(0XFFf6a70a),
                          onChanged: (val) {
                            setState(() {
                              isSwitched2 = val;
                            });
                          },
                        ),
                      ),
                      SizedBox(width: 5,),
                      Text((isSwitched2)?"ON":"OFF",style: TextStyle(color:isSwitched2?Color(0XFF56e359):Colors.black,fontSize: 16,fontWeight: FontWeight.bold,fontFamily: "Verdana"),)
                    ],
                  ),
                ],
              ),
              Text("Collecting information aboutthe user's device, such as device type, operating system and hardware applications.", style: TextStyle(
                  color: Colors.black, fontSize: 16, fontWeight:FontWeight.w300,fontFamily: "Verdana"
              ),),
              SizedBox(height: 5,),
              Divider(
                color: Colors.grey.shade400,
                thickness: 1, // Optional: Set thickness of the divider
              ),
              SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(child: Text("Personal Information", style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold,fontFamily: "Verdana"),)),
                  SizedBox(width: 20,),
                  Row(
                    children: [
                      Transform.scale(
                        scale:0.9,
                        child: CupertinoSwitch(
                          value: isSwitched3,
                          activeColor: Color(0XFF56e359),
                          trackColor: Color(0XFFf6a70a),
                          onChanged: (val) {
                            setState(() {
                              isSwitched3 = val;
                            });
                          },
                        ),
                      ),
                      SizedBox(width: 5,),
                      Text((isSwitched3)?"ON":"OFF",style: TextStyle(color:isSwitched3?Color(0XFF56e359):Colors.black,fontSize: 16,fontWeight: FontWeight.bold,fontFamily: "Verdana"),)
                    ],
                  ),
                ],
              ),
              Text("Seeking consent to collect and process personal inforamtion such as name, email address, and phone number.", style: TextStyle(
                  color: Colors.black, fontSize: 16, fontWeight: FontWeight.w300,fontFamily: "Verdana"
              ),),
              SizedBox(height: 5,),
              Divider(
                color: Colors.grey.shade400,
                thickness: 1, // Optional: Set thickness of the divider
              ),
              SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(child: Text("Analytics and Tracking", style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold,fontFamily: "Verdana"),)),
                  SizedBox(width: 20,),
                  Row(
                    children: [
                      Transform.scale(
                        scale:0.9,
                        child: CupertinoSwitch(
                          value: isSwitched4,
                          activeColor: Color(0XFF56e359),
                          trackColor: Color(0XFFf6a70a),
                          onChanged: (val) {
                            setState(() {
                              isSwitched4 = val;
                            });
                          },
                        ),
                      ),
                      SizedBox(width: 5,),
                      Text((isSwitched4)?"ON":"OFF",style: TextStyle(color:isSwitched4?Color(0XFF56e359):Colors.black,fontSize: 16,fontWeight: FontWeight.bold,fontFamily: "Verdana"),)
                    ],
                  ),
                ],
              ),
              Text("Informing users about the use of analytics tools or tracking technologies to collect data about their app usage.", style: TextStyle(
                  color: Colors.black, fontSize: 16, fontWeight: FontWeight.w300,fontFamily: "Verdana"
              ),),
              SizedBox(height: 5,),
              Divider(
                color: Colors.grey.shade400,
                thickness: 1, // Optional: Set thickness of the divider
              ),
              SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(child: Text("Location Data", style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold,fontFamily: "Verdana"),)),
                  SizedBox(width: 20,),
                  Row(
                    children: [
                      Transform.scale(
                        scale:0.9,
                        child: CupertinoSwitch(
                          value: isSwitched5,
                          activeColor: Color(0XFF56e359),
                          trackColor: Color(0XFFf6a70a),
                          onChanged: (val) {
                            setState(() {
                              isSwitched5 = val;
                            });
                          },
                        ),
                      ),
                      SizedBox(width: 5,),
                      Text((isSwitched5)?"ON":"OFF",style: TextStyle(color:isSwitched5?Color(0XFF56e359):Colors.black,fontSize: 16,fontWeight: FontWeight.bold,fontFamily: "Verdana"),)
                    ],
                  ),
                ],
              ),
              Text("Obtaining consent to collect and process the user's location data, which can be used for location-based services or analytics.3367", style: TextStyle(
                  color: Colors.black, fontSize: 16, fontWeight: FontWeight.w300,fontFamily: "Raleway"
              ),),
      // Text("Lorem ipsum dolor sit amet, consectetur adipisicing elit. A alias amet blanditiis consequuntur, culpa dicta, dolore enim eum illum impedit ipsum iusto minus obcaecati recusandae reprehenderit rerum temporibus tenetur ullam, vel velit. Aperiam, dolores modi! Assumenda error itaque iure molestias nam nemo, nostrum, optio porro quasi qui, quod quos vel.", style: TextStyle(
      //             color: Colors.black, fontSize: 16, fontWeight: FontWeight.w300,fontFamily: 'Verdana',)),
              SizedBox(height: 5,),
              Divider(
                color: Colors.grey.shade400,
                thickness: 1, // Optional: Set thickness of the divider
              ),
              SizedBox(height: 10,),
            ],
          ),
        ),
      ),
    );
  }
}

