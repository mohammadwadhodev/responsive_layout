

import 'package:get/get.dart';

import '../models/content_model.dart';

/// A controller class for the ContentScreen.
///
/// This class manages the state of the ContentScreen, including the
/// current contentModelObj
class ContentController extends GetxController {
  Rx<ContentModel> contentModelObj = ContentModel().obs;
}
