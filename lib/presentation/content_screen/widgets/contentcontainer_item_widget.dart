import 'package:get/get.dart';
import 'package:learn_flutter/core/app_export.dart';

import '../../../theme/theme_helper.dart';
import '../controller/content_controller.dart';
import '../models/contentcontainer_item_model.dart';
import 'package:flutter/material.dart';


// ignore: must_be_immutable
class ContentcontainerItemWidget extends StatelessWidget {
  ContentcontainerItemWidget(
    this.contentcontainerItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ContentcontainerItemModel contentcontainerItemModelObj;

  var controller = Get.find<ContentController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: AppDecoration.outlineGray.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder12,
      ),
      child: Row(
        children: [
          Obx(
            () => Container(

              height: 81.v,
              width: 80.h,
             decoration: BoxDecoration(
               image: DecorationImage(image: AssetImage(contentcontainerItemModelObj.image!.value)),
               borderRadius: BorderRadius.only(
                 topLeft: Radius.circular(12),
                 bottomLeft: Radius.circular(12),
               )
             ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 16.h,
              top: 18.v,
              bottom: 14.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Obx(
                  () => SizedBox(
                    width: 200,
                    child: Text(
                      contentcontainerItemModelObj.headerText!.value.toString(),
                      style: theme.textTheme.bodyLarge,
                      maxLines: 1,

                    ),
                  ),
                ),
                SizedBox(height: 3.v),
                Obx(
                  () => Text(
                    contentcontainerItemModelObj.subheadText!.value,
                    style: CustomTextStyles.bodyMediumGray60001,
                  ),
                ),
              ],
            ),
          ),
          Spacer(),
          CustomImageView(
            imagePath: ImageConstant.imgFavorite,
            height: 16.adaptSize,
            width: 16.adaptSize,
            margin: EdgeInsets.only(
              top: 22.v,
              right: 8.h,
              bottom: 43.v,
            ),
          ),
        ],
      ),
    );
  }
}
