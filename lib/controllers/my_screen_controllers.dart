import 'package:get/get.dart';

class MyScreenController extends GetxController{

  RxInt counter = 0.obs;

  void increament(){
    counter++;
    print("counter : $counter");
  }

  String name = '';


@override
  void onReady() {
  print("Heloo onrEady");
    super.onReady();
  }

  @override
  void onInit() {
    print("Heloo oninit");
    super.onInit();
  }


  @override
  void onClose() {
    // TODO: implement onClose
    super.onClose();
  }




}