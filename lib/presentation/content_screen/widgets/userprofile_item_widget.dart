import 'package:get/get.dart';
import 'package:learn_flutter/core/app_export.dart';

import '../controller/content_controller.dart';
import '../models/userprofile_item_model.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class UserprofileItemWidget extends StatelessWidget {
  UserprofileItemWidget(
    this.userprofileItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  UserprofileItemModel userprofileItemModelObj;

  var controller = Get.find<ContentController>();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 120.h,
      child: Column(
        children: [
          Container(
            height: 80.adaptSize,
            width: 80.adaptSize,
            padding: EdgeInsets.all(15.h),
            decoration: AppDecoration.outlineBlueGrayF.copyWith(
              borderRadius: BorderRadiusStyle.circleBorder40,
            ),
            child: Obx(
              () => CustomImageView(
                imagePath: userprofileItemModelObj.badgeIconImage!.value,
                height: 50.adaptSize,
                width: 50.adaptSize,
                alignment: Alignment.center,
              ),
            ),
          ),
          SizedBox(height: 16.v),
          Container(
            height: 4.v,
            width: 120.h,
            decoration: BoxDecoration(
              color: appTheme.deepOrange50,
            ),
            child: ClipRRect(
              child: LinearProgressIndicator(
                value: 0.8,
                backgroundColor: appTheme.deepOrange50,
                valueColor: AlwaysStoppedAnimation<Color>(
                  appTheme.orange30001,
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Obx(
              () => Text(
                userprofileItemModelObj.progressDescriptionText!.value,
                style: CustomTextStyles.bodySmallGray700,
              ),
            ),
          ),
          SizedBox(height: 18.v),
          Obx(
            () => Text(
              userprofileItemModelObj.badgeLabelText!.value,
              textAlign: TextAlign.center,
              style: theme.textTheme.bodyMedium,
            ),
          ),
          SizedBox(height: 4.v),
          SizedBox(
            width: 116.h,
            child: Obx(
              () => Text(
                userprofileItemModelObj.descriptionText!.value,
                maxLines: null,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.center,
                style: theme.textTheme.bodySmall,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
