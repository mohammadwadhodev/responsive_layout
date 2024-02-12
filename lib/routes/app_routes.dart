import '../../presentation/content_screen/content_screen.dart';
import '../../presentation/content_screen/binding/content_binding.dart';
import 'package:get/get.dart';

class AppRoutes {
  static const String contentScreen = '/content_screen';

  static const String initialRoute = '/initialRoute';

  static List<GetPage> pages = [
    GetPage(
      name: contentScreen,
      page: () => ContentScreen(),
      bindings: [
        ContentBinding(),
      ],
    ),
    GetPage(
      name: initialRoute,
      page: () => ContentScreen(),
      bindings: [
        ContentBinding(),
      ],
    )
  ];
}
