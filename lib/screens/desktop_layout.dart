import 'package:flutter/material.dart';

class DesktopLayout extends StatelessWidget {
  const DesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[200],
      appBar: AppBar(
        toolbarHeight: 80,
        backgroundColor: Colors.blue[400],
        title: const Text("D E S K T O P   M O D E",style: TextStyle(color: Colors.white)),
      ),
      body: Row(
        children: [

          Padding(
            padding: const EdgeInsets.only(top: 20,left: 15,bottom: 10),
            child: Container(
              width: 200,
              decoration: BoxDecoration(
                  color: Colors.blue[300],
                  borderRadius: BorderRadius.circular(20)),

            ),
          ),

          Expanded(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.6,
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
          ),
        ],
      ),
    );
  }
}
