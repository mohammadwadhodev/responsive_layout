import 'package:get/get.dart';

class HomeScreenController extends GetxController{
String name = '';
  @override
  void onClose() {
    print("HomeScreenController has been closed");
    super.onClose();
  }


}