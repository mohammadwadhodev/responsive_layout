import 'package:get/get.dart';

import '../controllers/home_screen_controllers.dart';
import '../controllers/my_screen_controllers.dart';

class InitialBindings extends Bindings{


  @override
  void dependencies() {
    Get.lazyPut(() => MyScreenController());
    Get.lazyPut(() => HomeScreenController());

  }

}