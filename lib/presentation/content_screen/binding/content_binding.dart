import '../controller/content_controller.dart';
import 'package:get/get.dart';

/// A binding class for the ContentScreen.
///
/// This class ensures that the ContentController is created when the
/// ContentScreen is first loaded.
class ContentBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ContentController());
  }
}
