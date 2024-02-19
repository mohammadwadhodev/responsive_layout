import 'package:flutter/material.dart' hide BoxDecoration, BoxShadow;
import 'package:flutter_inset_box_shadow/flutter_inset_box_shadow.dart';

class ConcaveWidget extends StatelessWidget {
  double? height;
  double? width;
  Widget child;
  bool inset;
  double? profileRadius;

  void Function()? onTap;

  ConcaveWidget(
      {this.height,
        this.width,
        required this.child,
        this.onTap,
        this.inset = false,
        this.profileRadius,
        super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 100),
        height:height,
        width: width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(profileRadius ?? 15),
          color: const Color(0xFFE7ECEF),
          boxShadow: [
            BoxShadow(
                blurRadius: 5.0,
                offset: const Offset(-7, -7),
                color: Colors.white,
                inset: inset),
            BoxShadow(
                blurRadius: 5.0,
                offset: const Offset(10, 10),
                color: const Color(0xFFA7A9AF),
                inset: inset),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: child,
        ),
      ),
    );
  }
}