import 'package:flutter/material.dart';
import 'package:network_plugin/network_plugin.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(

        child:SingleChildScrollView(


          child:Column(
            children: [
              SizedBox(height: 30,),
              Text("flutter example", style: TextStyle(fontSize: 25),),
              SizedBox(height: 30,),
              Text("example of network plugin.", style: TextStyle(
                fontSize: 30
              ),),
              NetworkPlugin()
            ],
          ),
        )


      ),
    );
  }
}

