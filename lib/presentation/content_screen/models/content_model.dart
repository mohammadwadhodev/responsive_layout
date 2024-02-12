import '../../../core/app_export.dart';
import 'userprofile_item_model.dart';
import 'contentcontainer_item_model.dart';

/// This class defines the variables used in the [content_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class ContentModel {
  Rx<List<UserprofileItemModel>> userprofileItemList = Rx([
    UserprofileItemModel(
        badgeIconImage: ImageConstant.imgIconAchievementBadgeLegal.obs,
        progressDescriptionText: "3/5 completed".obs,
        badgeLabelText: "Justice League".obs,
        descriptionText: "Recommend 5 'Legal' places".obs),
    UserprofileItemModel(
        badgeIconImage: ImageConstant.imgThumbsUp.obs,
        progressDescriptionText: "3/5 completed".obs,
        badgeLabelText: "Doctor Spotter".obs,
        descriptionText: "Recommend 5 'Healthcare' places".obs),
    UserprofileItemModel(
        badgeIconImage: ImageConstant.imgThumbsUpOrange300.obs,
        progressDescriptionText: "Badge earned".obs,
        badgeLabelText: "Queens, NY".obs,
        descriptionText: "First check-in in Queens, New York".obs),
    UserprofileItemModel(
        badgeIconImage: ImageConstant.imgClose.obs,
        progressDescriptionText: "Badge earned".obs,
        badgeLabelText: "Guardian".obs,
        descriptionText: "You've reached Guardian level".obs),
    UserprofileItemModel(
        badgeIconImage: ImageConstant.imgThumbsUpAmberA100.obs,
        progressDescriptionText: "Badge earned".obs,
        badgeLabelText: "Beginner".obs,
        descriptionText: "Thank YOU for joining us".obs)
  ]);

  Rx<List<ContentcontainerItemModel>> contentcontainerItemList = Rx([
    ContentcontainerItemModel(
        image: ImageConstant.imgMedia.obs,
        headerText: "Credo Beauty".obs,
        subheadText: "Beauty".obs),
    ContentcontainerItemModel(
        image: ImageConstant.imgMedia81x80.obs,
        headerText: "Prince Street Pizza".obs,
        subheadText: "Food".obs),
    ContentcontainerItemModel(
        image: ImageConstant.imgMedia1.obs,
        headerText: "Great Oaks Charter School".obs,
        subheadText: "Education and Childcare".obs),
    ContentcontainerItemModel(
        image: ImageConstant.imgMedia2.obs,
        headerText: "PUBLIC Hotel".obs,
        subheadText: "Accommodation".obs)
  ]);
}
