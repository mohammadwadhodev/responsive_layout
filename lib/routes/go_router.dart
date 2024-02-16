import 'package:go_router/go_router.dart';
import 'package:learn_flutter/routes/constants.dart';
import '../main.dart';


class MyGoRouter{

  MyGoRouter._();

   static final GoRouter router = GoRouter(
     // errorBuilder: (context, state) => const ErrorScreen(),
     //

     // redirect: (context, error) {
     //  if(1 == 1){
     //    return MyAppRoutes.homeScreenRoute;
     //  }
     //  else{
     //    return MyAppRoutes.myAppRoute;
     //  }
     // },

      routes: [
        // GoRoute(
        //     name:MyAppRoutes.myAppRoute,
        //     path: "/",builder: (context,state) => const MyApp()),
        // GoRoute(
        //     name:MyAppRoutes.homeScreenRoute,
        //     path: "${MyAppRoutes.homeScreenRoute}/:data",
        //     builder: (context,state) =>  HomeScreen(name: state.pathParameters['data'])),
        // GoRoute(
        //     name: MyAppRoutes.thirdScreenRoute,
        //     path: MyAppRoutes.thirdScreenRoute,builder: (context,state) => const ThirdScreen()),
      ]
  );
}



