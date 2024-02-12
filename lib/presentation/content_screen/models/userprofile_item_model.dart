import '../../../core/app_export.dart';

/// This class is used in the [userprofile_item_widget] screen.
class UserprofileItemModel {
  UserprofileItemModel({
    this.badgeIconImage,
    this.progressDescriptionText,
    this.badgeLabelText,
    this.descriptionText,
    this.id,
  }) {
    badgeIconImage =
        badgeIconImage ?? Rx(ImageConstant.imgIconAchievementBadgeLegal);
    progressDescriptionText = progressDescriptionText ?? Rx("3/5 completed");
    badgeLabelText = badgeLabelText ?? Rx("Justice League");
    descriptionText = descriptionText ?? Rx("Recommend 5 'Legal' places");
    id = id ?? Rx("");
  }

  Rx<String>? badgeIconImage;

  Rx<String>? progressDescriptionText;

  Rx<String>? badgeLabelText;

  Rx<String>? descriptionText;

  Rx<String>? id;
}
