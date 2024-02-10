import 'package:get/get.dart';
import 'package:learn_flutter/main.dart';
import 'package:learn_flutter/routes/bindings.dart';
import 'package:learn_flutter/routes/routes.dart';

class AppPages{
  AppPages._();

  static List<GetPage> getPages(){

    return [
      GetPage(
          name: kInitialScreenRoute,
          page: () =>  MyApp(),
          binding: InitialBindings()),

      GetPage(
          name: kHomeScreenRoute,
          page: () => const HomeScreen(),
          binding: InitialBindings()),

      GetPage(
          name: kThirdScreenRoute,
          page: () => const ThirdScreen(),
          binding: InitialBindings()),


    ];

  }

}