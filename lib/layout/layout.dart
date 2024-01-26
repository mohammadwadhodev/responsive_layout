import 'package:flutter/cupertino.dart';

class ResponsiveLayout extends StatelessWidget {

  final Widget mobileLayout;
  final Widget desktopLayout;

  const ResponsiveLayout({
    required this.desktopLayout,
    required this.mobileLayout,
    super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context,constrains){
        if(constrains.maxWidth < 600){
          return mobileLayout;
        }else{
          return desktopLayout;
        }
      },
    );
  }
}
