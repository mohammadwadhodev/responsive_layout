import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:learn_flutter/routes/constants.dart';
import 'package:learn_flutter/routes/go_router.dart';



void main() {
  runApp(MaterialApp.router(
      scrollBehavior: const MaterialScrollBehavior().copyWith(
        dragDevices: {PointerDeviceKind.mouse, PointerDeviceKind.touch, PointerDeviceKind.stylus, PointerDeviceKind.unknown},
      ),
      debugShowCheckedModeBanner: false,
      routerConfig:MyGoRouter.router
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text("FIRST SCREEN"),
          const SizedBox(height: 10),
          ElevatedButton(onPressed: () async {

            // context.goNamed(MyAppRoutes.homeScreenRoute,pathParameters:{
            //   'data':'/my name is king'
            // });

            //GoRouter.of(context).go(MyAppRoutes.homeScreenRoute + "/asdasd");


            //GoRouter.of(context).push(MyAppRoutes.homeScreenRoute + "/asdasd");


            GoRouter.of(context).pushNamed(MyAppRoutes.homeScreenRoute,
              pathParameters: {
                'data':'/my name is king'
              }
            );



          }, child: const Text("GO TO HOME SCREEN")),
          const SizedBox(height: 10),
          ElevatedButton(onPressed: (){
            GoRouter.of(context).goNamed(MyAppRoutes.homeScreenRoute,);
          }, child: const Text("GO TO THIRD SCREEN"))
        ],
      )),
    );
  }
}


class HomeScreen extends StatelessWidget {

  String? name;

  HomeScreen({
    required this.name,
    super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          automaticallyImplyLeading: true,
          backgroundColor: Colors.blue,
          toolbarHeight: 50,
      ),
      body: Center(child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text("HOME SCREEN"),
          Text("name : $name"),
          const SizedBox(height: 10),
          ElevatedButton(onPressed: (){
            GoRouter.of(context).pushNamed(MyAppRoutes.thirdScreenRoute);

          }, child: const Text("GO TO THIRD SCREEN")),

        ],
      )),
    );
  }
}



class ThirdScreen extends StatelessWidget {
  const ThirdScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          automaticallyImplyLeading: true,
          backgroundColor: Colors.blue),
      body: Center(child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text("THIRD SCREEN "),
          const SizedBox(height: 10),
          ElevatedButton(onPressed: (){
            GoRouter.of(context).pushNamed(MyAppRoutes.myAppRoute);
          }, child: const Text("GO BACK")),

        ],
      )),
    );
  }
}



class ErrorScreen extends StatelessWidget {
  const ErrorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          automaticallyImplyLeading: true,
          backgroundColor: Colors.blue),
      body: Center(child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text("THIRD SCREEN "),
          const SizedBox(height: 10),
          ElevatedButton(onPressed: (){
            GoRouter.of(context).go(MyAppRoutes.myAppRoute);
          }, child: const Text("GO BACK")),

        ],
      )),
    );
  }
}



