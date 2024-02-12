import '../../../core/app_export.dart';

/// This class is used in the [contentcontainer_item_widget] screen.
class ContentcontainerItemModel {
  ContentcontainerItemModel({
    this.image,
    this.headerText,
    this.subheadText,
    this.id,
  }) {
    image = image ?? Rx(ImageConstant.imgMedia);
    headerText = headerText ?? Rx("Credo Beauty");
    subheadText = subheadText ?? Rx("Beauty");
    id = id ?? Rx("");
  }

  Rx<String>? image;

  Rx<String>? headerText;

  Rx<String>? subheadText;

  Rx<String>? id;
}
