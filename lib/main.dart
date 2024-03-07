import 'dart:ui';

import 'package:flutter/material.dart';

import 'my_resume.dart';


void main() {
  runApp(MaterialApp(
      scrollBehavior: const MaterialScrollBehavior().copyWith(
        dragDevices: {PointerDeviceKind.mouse, PointerDeviceKind.touch, PointerDeviceKind.stylus, PointerDeviceKind.unknown},
      ),
      debugShowCheckedModeBanner: false,
      home: const MyResume()));
}








