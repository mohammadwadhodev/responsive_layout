import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:learn_flutter/layout/layout.dart';
import 'package:learn_flutter/screens/desktop_layout.dart';
import 'package:learn_flutter/screens/mobile_layout.dart';


void main() {
  runApp(MaterialApp(
      scrollBehavior: MaterialScrollBehavior().copyWith(
        dragDevices: {PointerDeviceKind.mouse, PointerDeviceKind.touch, PointerDeviceKind.stylus, PointerDeviceKind.unknown},
      ),
      debugShowCheckedModeBanner: false,
      home: MyApp()));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
        desktopLayout: DesktopLayout(),
        mobileLayout: MobileLayout());
  }

}


