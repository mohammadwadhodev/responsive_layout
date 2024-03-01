import 'dart:ui';

import 'package:flutter/material.dart';


void main() {
  runApp( const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FirstScreen()));
}

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.blue,
        title: const Text("Navigation's",style: TextStyle(color: Colors.white)),
      ),

      body: Center(child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            const Text("First Screen",style: TextStyle(fontSize: 22)),
            const SizedBox(height: 20),
            ElevatedButton(onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) { return const SecondScreen(); }));

            }, child: const Text("NEXT"))

          ])),
    );
  }
}
class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.blue,
        title: const Text("Navigation's",style: TextStyle(color: Colors.white)),
      ),

      body: Center(child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            const Text("Second Screen",style: TextStyle(fontSize: 22)),
            const SizedBox(height: 20),

            const SizedBox(height: 20),
            ElevatedButton(onPressed: () {
              Navigator.of(context).pop();

            }, child: const Text("GO BACK"))

          ])),
    );
  }
}





class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String data = '';

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

            Text(data,style: const TextStyle(fontSize: 22)),
            const SizedBox(height: 20),
            ElevatedButton(onPressed: () async =>{
              data =  await Navigator.push(context, MaterialPageRoute(builder: (context) => SecondScreens("Hello This is Mohammad creations"))),
              setState(() =>{}),

            }, child: const Text("GO TO NEXT SCREEN"))

          ])),
    );
  }

}



class SecondScreens extends StatelessWidget {
  String data;
  SecondScreens(this.data, {super.key});

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
            ElevatedButton(onPressed: () =>{
              Navigator.pop(context,"Hello this is me"),
            }, child: const Text("GO BACK"))

          ])),
    );
  }
}




