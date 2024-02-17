import 'dart:ui';

import 'package:flutter/material.dart';


void main() {
  runApp(MaterialApp(
      scrollBehavior: MaterialScrollBehavior().copyWith(
        dragDevices: {PointerDeviceKind.mouse, PointerDeviceKind.touch, PointerDeviceKind.stylus, PointerDeviceKind.unknown},
      ),
      debugShowCheckedModeBanner: false,
      home: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text("PASSING DATA",style: TextStyle(color: Colors.white)),
      ),

      body: Center(child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            const Text("HOME SCREEN",style: TextStyle(fontSize: 22)),
            const SizedBox(height: 20),
            ElevatedButton(onPressed: () =>{
              Navigator.push(context, MaterialPageRoute(builder: (context) => SecondScreen("Hello This is Mohammad creations")))
              
            }, child: const Text("GO TO NEXT SCREEN"))

          ])),
    );
  }
}


class SecondScreen extends StatelessWidget {
  String data;
  SecondScreen(this.data, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.blue,
        title: const Text("PASSING DATA",style: TextStyle(color: Colors.white)),
      ),

      body: Center(child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Text(data,style: const TextStyle(fontSize: 22)),
            const SizedBox(height: 20),
            ElevatedButton(onPressed: () =>{}, child: const Text("GO BACK"))

          ])),
    );
  }
}




