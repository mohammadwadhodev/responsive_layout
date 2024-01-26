import 'package:flutter/material.dart';

class MobileLayout extends StatelessWidget {
  const MobileLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[200],
      appBar: AppBar(
        backgroundColor: Colors.blue[400],
        title: const Text("M O B I L E   M O D E",style: TextStyle(color: Colors.white)),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              height: MediaQuery.of(context).size.height * 0.25,
              decoration: BoxDecoration(
                  color: Colors.blue[400],
                  borderRadius: BorderRadius.circular(20),
              ),
            ),
          ),

         Expanded(
           child: ListView.builder(
             itemCount: 10,
             itemBuilder: (context,index){
               return  Padding(
                 padding: const EdgeInsets.only(left: 20,right: 20,bottom: 15),
                 child: Container(
                   height: MediaQuery.of(context).size.height / 6,
                   width: MediaQuery.of(context).size.width,

                   decoration: BoxDecoration(
                     color: Colors.blue[300],
                     borderRadius: BorderRadius.circular(20),
                   ),
                 ),
               );
             },
           ),
         )
        ],
      ),
    );
  }
}
