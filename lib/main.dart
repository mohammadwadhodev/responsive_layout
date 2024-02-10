import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learn_flutter/controllers/home_screen_controllers.dart';
import 'package:learn_flutter/controllers/my_screen_controllers.dart';
import 'package:learn_flutter/routes/app_pages.dart';
import 'package:learn_flutter/routes/bindings.dart';
import 'package:learn_flutter/routes/routes.dart';


void main() {
  runApp(
      GetMaterialApp(
      debugShowCheckedModeBanner: false,
    initialRoute: kInitialScreenRoute,
    getPages: AppPages.getPages(),
    initialBinding: InitialBindings(),


  ));
}

class MyApp extends GetView<MyScreenController> {
   MyApp({super.key});






   @override
  Widget build(BuildContext context) {

     print("build methofd run :${controller.name}");

    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          controller.increament();
        },
      ),
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Center(child: Obx(() => Text("counter :- ${controller.counter}",style: const TextStyle(fontSize: 25)))),
      ),
    );
  }
}


class HomeScreen extends GetView<HomeScreenController> {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    controller.name;
    return Scaffold(body: Center(child: Text("HomeScreen")));
  }
}

class ThirdScreen extends StatelessWidget {
  const ThirdScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: Center(child: Text("ThirdScreen")));
  }
}



// class MyApp extends StatelessWidget {
//    MyApp({super.key});
//
//   String channelName = 'Mohammad Creation';
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//             backgroundColor: Colors.blue,
//             title: const Text("Navigation",
//                 style: TextStyle(color: Colors.white))),
//         body: Center(
//             child: Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   Text("channel name ${channelName}", style: TextStyle(fontSize: 30)),
//                   const SizedBox(height: 20),
//                   ElevatedButton(onPressed: () {
//                     Navigator.push(context, MaterialPageRoute(builder: (context) => SecondScreen(channelName:"xyz" ,)));
//
//                   }, child:const Text("Go to Second Screen",style: TextStyle(fontSize: 17))),
//
//
//                 ],
//               ),
//             )));
//   }
//  
// }
//
//
// class SecondScreen extends StatelessWidget {
//
//   String channelName;
//
//   SecondScreen({
//      required this.channelName,
//      super.key});
//
//
//
//
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           automaticallyImplyLeading: false,
//             backgroundColor: Colors.blue,
//             title: const Text("Navigation",
//                 style: TextStyle(color: Colors.white))),
//         body: Center(
//             child: Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   Text("Hello ${channelName}", style: TextStyle(fontSize: 30)),
//                   const SizedBox(height: 20),
//                   ElevatedButton(onPressed: () {
//                     Navigator.pop(context);
//
//                   }, child:const Text("Back",style: TextStyle(fontSize: 17))),
//
//
//                 ],
//               ),
//             )));
//   }
// }
