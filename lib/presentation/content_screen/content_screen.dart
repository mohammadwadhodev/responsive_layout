import '../content_screen/widgets/contentcontainer_item_widget.dart';
import '../content_screen/widgets/userprofile_item_widget.dart';
import 'controller/content_controller.dart';
import 'models/contentcontainer_item_model.dart';
import 'models/userprofile_item_model.dart';
import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_outlined_button.dart';
import 'package:qr_flutter/qr_flutter.dart';

// ignore_for_file: must_be_immutable
class ContentScreen extends GetWidget<ContentController> {
  const ContentScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              SizedBox(height: 20.v),
              Expanded(
                child: SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsets.only(bottom: 111.v),
                    child: Column(
                      children: [
                        _buildWalletCard(),
                         SizedBox(height: 15.v),
                         _buildHeader(),
                         SizedBox(height: 16.v),
                        _buildRank(),
                        SizedBox(height: 33.v),
                        _buildButtons(),
                        SizedBox(height: 27.v),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 20.h,
                            right: 32.h,
                          ),
                          child: _buildSectionTitle(
                            titleText: "lbl_my_achievements".tr,
                            showAllText: "lbl_show_all".tr,
                          ),
                        ),
                        SizedBox(height: 22.v),
                        _buildBadgeRow(),
                        SizedBox(height: 28.v),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 20.h,
                            right: 32.h,
                          ),
                          child: _buildSectionTitle(
                            titleText: "msg_my_recommendations".tr,
                            showAllText: "lbl_show_all".tr,
                          ),
                        ),
                         SizedBox(height: 22.v),
                         _buildContentContainer(),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildWalletCard() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 15.h),
      padding: EdgeInsets.symmetric(
        horizontal: 8.h,
        vertical: 7.v,
      ),
      decoration: AppDecoration.outlineBlueGray.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder16,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 4.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(bottom: 15.v),
                  child: Text(
                    "msg_i_black_people".tr,
                    style: theme.textTheme.labelLarge,
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      "Membership card".tr.toUpperCase(),
                      style: CustomTextStyles.labelMediumSFProText,
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Text(
                        "Guardian".tr,
                        style: CustomTextStyles.titleMediumOrange30001,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 3.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 4.h),
              child:   SizedBox(
                width: 167.h,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgImage1,
                      height: 64.adaptSize,
                      width: 64.adaptSize,
                      radius: BorderRadius.circular(
                        32.h,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        top: 4.v,
                        bottom: 2.v,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Name".tr.toUpperCase(),
                            style:
                            CustomTextStyles.labelMediumSFProText,
                          ),
                          Text(
                            "John Doe".tr,
                            style: theme.textTheme.titleLarge,
                          ),
                          Text(
                            "New York, NY".tr,
                            style: CustomTextStyles.bodyMediumGray50001,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(bottom: 5.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [

                Container(

                  padding: EdgeInsets.all(4.h),
                  decoration: AppDecoration.fillBlueGray.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder8,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 2.0),
                    child: Text(
                      "msg_member_since_2022".tr,
                      style: CustomTextStyles.labelLargeSFProText,
                    ),
                  ),
                ),

                Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15)),
                  child: QrImageView(
                    data: 'https://www.google.com',
                    size: 64.adaptSize,
                    embeddedImage: AssetImage('assets/images/logo2.png')
                  ),
                ),

              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildHeader() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 45.adaptSize,
            width: 45.adaptSize,
            // decoration: BoxDecoration(
            //     color: Colors.white,
            //     shape: BoxShape.circle),
            margin: EdgeInsets.only(
              top: 9.v,
              bottom: 2.v,
            ),
            child: Container(

              child: CustomImageView(
                imagePath: ImageConstant.imgClose,
                height: 45.adaptSize,
                width: 45.adaptSize,
                alignment: Alignment.center,
                radius: BorderRadius.circular(30),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(left: 16.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Guardian".tr,
                    style: CustomTextStyles.bodyLargeWhiteA700,
                  ),
                  SizedBox(height: 8.v),
                  Container(
                    height: 4.v,
                    width: 279.h,
                    decoration: BoxDecoration(
                      color: appTheme.gray800,
                    ),
                    child: ClipRRect(
                      child: LinearProgressIndicator(
                        value: 0.25,
                        backgroundColor: appTheme.gray800,
                        valueColor: AlwaysStoppedAnimation<Color>(
                          appTheme.orange30001,
                        ),
                      ),
                    ),
                  ),
                  Text(
                    "370 points away from next level".tr,
                    style: CustomTextStyles.bodySmallGray300,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildRank() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Rank".tr,
                style: CustomTextStyles.bodySmallWhiteA700,
              ),
              Text(
                "# 18".tr,
                style: theme.textTheme.titleMedium,
              ),
              Align(
                alignment: Alignment.topCenter,
                child: Container(

                  decoration: BoxDecoration(
                    color: appTheme.lime800,
                    borderRadius: BorderRadius.circular(
                      20.h,
                    ),
                  ),
                  child:  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0,vertical: 2),
                    child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        "1,728 pts".tr,
                        style: theme.textTheme.labelLarge,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          CustomOutlinedButton(
            width: 157.h,
            text: "Leaderboard".tr,

            leftIcon: Container(
              margin: EdgeInsets.only(right: 8.h),
              child: CustomImageView(
                imagePath: ImageConstant.imgIcon,
                height: 18.adaptSize,
                width: 18.adaptSize,
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildButtons() {
    return Align(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: EdgeInsets.only(
          left: 20.h,
          right: 38.h,
        ),
        child: Row(
          children: [
            CustomElevatedButton(
              width: 131.h,
              text: "lbl_settings".tr,
              leftIcon: Container(
                margin: EdgeInsets.only(right: 8.h),
                child: CustomImageView(
                  imagePath: ImageConstant.imgSetting,
                  height: 18.adaptSize,
                  width: 18.adaptSize,
                ),
              ),
            ),
            CustomOutlinedButton(
              height: 44.v,
              width: 166.h,
              text: "lbl_share_profile".tr,
              margin: EdgeInsets.only(left: 20.h),
              leftIcon: Container(
                margin: EdgeInsets.only(right: 8.h),
                child: CustomImageView(
                  imagePath: ImageConstant.shareIcon,
                  height: 18.adaptSize,
                  width: 18.adaptSize,
                ),
              ),
              buttonStyle: CustomButtonStyles.outlineGray,
              buttonTextStyle: CustomTextStyles.bodyLargeAmber200,
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildBadgeRow() {
    return Align(
      alignment: Alignment.centerRight,
      child: Padding(
        padding: EdgeInsets.only(left: 20.h),
        child: Container(
          height: 260,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            // scrollDirection: Axis.horizontal,


            children: [
              Column(
                children: [
                  Container(
                    width: Get.width * 0.25,
                    child: Column(
                      children: [
                        Container(
                          width: Get.width * 0.2,
                          decoration:
                          AppDecoration.outlineBlueGrayF.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder3,
                          ),
                          child: Container(
                            decoration: AppDecoration
                                .gradientGreenAToOrangeAC
                                .copyWith(
                              borderRadius:
                              BorderRadiusStyle.roundedBorder3,
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,

                              children: [
                                SizedBox(
                                  child: Text(
                                    "msg_black_women_lead".tr,
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.center,
                                    style:
                                    CustomTextStyles.labelSmallBlack900,
                                  ),
                                ),
                                SizedBox(height: 1.v),
                                CustomImageView(
                                  imagePath:
                                  ImageConstant.imgWomenPowerGathering,
                                  height: 48.v,
                                  width: 64.h,
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 16.v),
                        SizedBox(
                          width: 120.h,
                          child: Divider(),
                        ),
                        SizedBox(height: 1.v),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "lbl_badge_earned".tr,
                            style: CustomTextStyles.bodySmallGray30001,
                          ),
                        ),
                        SizedBox(height: 17.v),
                        SizedBox(
                          width: 107.h,
                          child: Text(
                            "msg_attended_event".tr,
                            maxLines: 3,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.center,
                            style: CustomTextStyles.bodyMediumGray400,
                          ),
                        ),
                        SizedBox(height: 4.v),
                        SizedBox(
                          width: 93.h,
                          child: Text(
                            "msg_feb_15th_2023_washington".tr,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.center,
                            style: CustomTextStyles.bodySmallGray300_1,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Container(
                    width: Get.width * 0.25,
                    child: Column(
                      children: [
                        Container(
                          width: Get.width * 0.2,
                          decoration:
                          AppDecoration.outlineBlueGrayF.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder3,
                          ),
                          child: Container(
                            decoration: AppDecoration
                                .gradientGreenAToOrangeAC
                                .copyWith(
                              borderRadius:
                              BorderRadiusStyle.roundedBorder3,
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,

                              children: [
                                SizedBox(
                                  child: Text(
                                    "msg_black_women_lead".tr,
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.center,
                                    style:
                                    CustomTextStyles.labelSmallBlack900,
                                  ),
                                ),
                                SizedBox(height: 1.v),
                                CustomImageView(
                                  imagePath:
                                  ImageConstant.imgWomenPowerGathering,
                                  height: 48.v,
                                  width: 64.h,
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 16.v),
                        SizedBox(
                          width: 120.h,
                          child: Divider(),
                        ),
                        SizedBox(height: 1.v),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "lbl_badge_earned".tr,
                            style: CustomTextStyles.bodySmallGray30001,
                          ),
                        ),
                        SizedBox(height: 17.v),
                        SizedBox(
                          width: 107.h,
                          child: Text(
                            "msg_attended_event".tr,
                            maxLines: 3,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.center,
                            style: CustomTextStyles.bodyMediumGray400,
                          ),
                        ),
                        SizedBox(height: 4.v),
                        SizedBox(
                          width: 93.h,
                          child: Text(
                            "msg_feb_15th_2023_washington".tr,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.center,
                            style: CustomTextStyles.bodySmallGray300_1,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Container(
                    width: Get.width * 0.25,
                    child: Column(
                      children: [
                        Container(
                          width: Get.width * 0.2,
                          decoration:
                          AppDecoration.outlineBlueGrayF.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder3,
                          ),
                          child: Container(
                            decoration: AppDecoration
                                .gradientGreenAToOrangeAC
                                .copyWith(
                              borderRadius:
                              BorderRadiusStyle.roundedBorder3,
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,

                              children: [
                                SizedBox(
                                  child: Text(
                                    "msg_black_women_lead".tr,
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.center,
                                    style:
                                    CustomTextStyles.labelSmallBlack900,
                                  ),
                                ),
                                SizedBox(height: 1.v),
                                CustomImageView(
                                  imagePath:
                                  ImageConstant.imgWomenPowerGathering,
                                  height: 48.v,
                                  width: 64.h,
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 16.v),
                        SizedBox(
                          width: 120.h,
                          child: Divider(),
                        ),
                        SizedBox(height: 1.v),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "lbl_badge_earned".tr,
                            style: CustomTextStyles.bodySmallGray30001,
                          ),
                        ),
                        SizedBox(height: 17.v),
                        SizedBox(
                          width: 107.h,
                          child: Text(
                            "msg_attended_event".tr,
                            maxLines: 3,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.center,
                            style: CustomTextStyles.bodyMediumGray400,
                          ),
                        ),
                        SizedBox(height: 4.v),
                        SizedBox(
                          width: 93.h,
                          child: Text(
                            "msg_feb_15th_2023_washington".tr,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.center,
                            style: CustomTextStyles.bodySmallGray300_1,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }


  // Widget _buildBadgeRow2() {
  //   return Align(
  //     alignment: Alignment.centerRight,
  //     child: Padding(
  //       padding: EdgeInsets.only(left: 20.h),
  //       child: Row(
  //         mainAxisAlignment: MainAxisAlignment.end,
  //         crossAxisAlignment: CrossAxisAlignment.start,
  //         children: [
  //           SizedBox(
  //             height: 237.v,
  //             width: 355.h,
  //             child: Stack(
  //               alignment: Alignment.topRight,
  //               children: [
  //                 Align(
  //                   alignment: Alignment.center,
  //                   child: Row(
  //                     mainAxisAlignment: MainAxisAlignment.center,
  //                     crossAxisAlignment: CrossAxisAlignment.start,
  //                     children: [
  //                       Column(
  //                         children: [
  //                           Container(
  //                             margin: EdgeInsets.symmetric(horizontal: 20.h),
  //                             decoration:
  //                             AppDecoration.outlineBlueGrayF.copyWith(
  //                               borderRadius: BorderRadiusStyle.roundedBorder3,
  //                             ),
  //                             child: Container(
  //                               padding: EdgeInsets.symmetric(
  //                                 horizontal: 7.h,
  //                                 vertical: 5.v,
  //                               ),
  //                               decoration: AppDecoration
  //                                   .gradientGreenAToOrangeAC
  //                                   .copyWith(
  //                                 borderRadius:
  //                                 BorderRadiusStyle.roundedBorder3,
  //                               ),
  //                               child: Column(
  //                                 mainAxisSize: MainAxisSize.min,
  //                                 children: [
  //                                   SizedBox(
  //                                     width: 64.h,
  //                                     child: Text(
  //                                       "msg_black_women_lead".tr,
  //                                       maxLines: 2,
  //                                       overflow: TextOverflow.ellipsis,
  //                                       textAlign: TextAlign.center,
  //                                       style:
  //                                       CustomTextStyles.labelSmallBlack900,
  //                                     ),
  //                                   ),
  //                                   SizedBox(height: 1.v),
  //                                   CustomImageView(
  //                                     imagePath:
  //                                     ImageConstant.imgWomenPowerGathering,
  //                                     height: 48.v,
  //                                     width: 64.h,
  //                                   ),
  //                                 ],
  //                               ),
  //                             ),
  //                           ),
  //                           SizedBox(height: 16.v),
  //                           SizedBox(
  //                             width: 120.h,
  //                             child: Divider(),
  //                           ),
  //                           SizedBox(height: 1.v),
  //                           Align(
  //                             alignment: Alignment.centerLeft,
  //                             child: Text(
  //                               "lbl_badge_earned".tr,
  //                               style: CustomTextStyles.bodySmallGray30001,
  //                             ),
  //                           ),
  //                           SizedBox(height: 17.v),
  //                           SizedBox(
  //                             width: 107.h,
  //                             child: Text(
  //                               "msg_attended_event".tr,
  //                               maxLines: 3,
  //                               overflow: TextOverflow.ellipsis,
  //                               textAlign: TextAlign.center,
  //                               style: CustomTextStyles.bodyMediumGray400,
  //                             ),
  //                           ),
  //                           SizedBox(height: 4.v),
  //                           SizedBox(
  //                             width: 93.h,
  //                             child: Text(
  //                               "msg_feb_15th_2023_washington".tr,
  //                               maxLines: 2,
  //                               overflow: TextOverflow.ellipsis,
  //                               textAlign: TextAlign.center,
  //                               style: CustomTextStyles.bodySmallGray300_1,
  //                             ),
  //                           ),
  //                         ],
  //                       ),
  //                       SingleChildScrollView(
  //                         scrollDirection: Axis.horizontal,
  //                         padding: EdgeInsets.only(
  //                           left: 300.h,
  //                           bottom: 122.v,
  //                         ),
  //                         child: IntrinsicWidth(
  //                           child: Column(
  //                             children: [
  //                               Padding(
  //                                 padding:
  //                                 EdgeInsets.symmetric(horizontal: 20.h),
  //                                 child: Row(
  //                                   mainAxisAlignment:
  //                                   MainAxisAlignment.spaceBetween,
  //                                   children: [
  //                                     _buildBadge(
  //                                       badgeIconNumber: "lbl_5".tr,
  //                                     ),
  //                                     _buildBadge(
  //                                       badgeIconNumber: "lbl_1".tr,
  //                                     ),
  //                                   ],
  //                                 ),
  //                               ),
  //                               SizedBox(height: 8.v),
  //                               Row(
  //                                 mainAxisAlignment: MainAxisAlignment.center,
  //                                 children: [
  //                                   Padding(
  //                                     padding: EdgeInsets.only(right: 10.h),
  //                                     child: _buildBarDescription(
  //                                       descriptionText: "lbl_badge_earned".tr,
  //                                     ),
  //                                   ),
  //                                   Padding(
  //                                     padding: EdgeInsets.only(left: 10.h),
  //                                     child: _buildBarDescription(
  //                                       descriptionText: "lbl_badge_earned".tr,
  //                                     ),
  //                                   ),
  //                                 ],
  //                               ),
  //                             ],
  //                           ),
  //                         ),
  //                       ),
  //                     ],
  //                   ),
  //                 ),
  //                 Align(
  //                   alignment: Alignment.topRight,
  //                   child: Padding(
  //                     padding: EdgeInsets.only(left: 140.h),
  //                     child: Column(
  //                       mainAxisSize: MainAxisSize.min,
  //                       crossAxisAlignment: CrossAxisAlignment.start,
  //                       children: [
  //                         Container(
  //                           margin: EdgeInsets.only(
  //                             left: 20.h,
  //                             right: 115.h,
  //                           ),
  //                           decoration: AppDecoration.outlineBlueGrayF.copyWith(
  //                             borderRadius: BorderRadiusStyle.roundedBorder3,
  //                           ),
  //                           child: Container(
  //                             padding: EdgeInsets.symmetric(
  //                               horizontal: 12.h,
  //                               vertical: 6.v,
  //                             ),
  //                             decoration: AppDecoration
  //                                 .gradientRedABToLightBlueD
  //                                 .copyWith(
  //                               borderRadius: BorderRadiusStyle.roundedBorder3,
  //                             ),
  //                             child: Column(
  //                               mainAxisSize: MainAxisSize.min,
  //                               mainAxisAlignment: MainAxisAlignment.center,
  //                               children: [
  //                                 SizedBox(height: 1.v),
  //                                 SizedBox(
  //                                   width: 54.h,
  //                                   child: RichText(
  //                                     text: TextSpan(
  //                                       children: [
  //                                         TextSpan(
  //                                           text: "lbl_martin".tr,
  //                                           style: theme.textTheme.titleSmall,
  //                                         ),
  //                                         TextSpan(
  //                                           text: " ",
  //                                         ),
  //                                         TextSpan(
  //                                           text: "lbl_luther_king_jr".tr,
  //                                           style:
  //                                           CustomTextStyles.arialff000000,
  //                                         ),
  //                                       ],
  //                                     ),
  //                                     textAlign: TextAlign.center,
  //                                   ),
  //                                 ),
  //                                 Align(
  //                                   alignment: Alignment.centerLeft,
  //                                   child: Padding(
  //                                     padding: EdgeInsets.only(
  //                                       left: 3.h,
  //                                       right: 5.h,
  //                                     ),
  //                                     child: Row(
  //                                       children: [
  //                                         CustomImageView(
  //                                           imagePath: ImageConstant.img,
  //                                           height: 3.adaptSize,
  //                                           width: 3.adaptSize,
  //                                           margin: EdgeInsets.symmetric(
  //                                               vertical: 1.v),
  //                                         ),
  //                                         CustomImageView(
  //                                           imagePath: ImageConstant.img,
  //                                           height: 3.adaptSize,
  //                                           width: 3.adaptSize,
  //                                           margin: EdgeInsets.only(
  //                                             left: 3.h,
  //                                             top: 1.v,
  //                                             bottom: 1.v,
  //                                           ),
  //                                         ),
  //                                         CustomImageView(
  //                                           imagePath: ImageConstant.img,
  //                                           height: 3.adaptSize,
  //                                           width: 3.adaptSize,
  //                                           margin: EdgeInsets.only(
  //                                             left: 3.h,
  //                                             top: 1.v,
  //                                             bottom: 1.v,
  //                                           ),
  //                                         ),
  //                                         Padding(
  //                                           padding: EdgeInsets.only(left: 3.h),
  //                                           child: Text(
  //                                             "lbl_day".tr,
  //                                             style: CustomTextStyles
  //                                                 .arialBlack900Bold,
  //                                           ),
  //                                         ),
  //                                         CustomImageView(
  //                                           imagePath: ImageConstant.img,
  //                                           height: 3.adaptSize,
  //                                           width: 3.adaptSize,
  //                                           margin: EdgeInsets.only(
  //                                             left: 3.h,
  //                                             top: 1.v,
  //                                             bottom: 1.v,
  //                                           ),
  //                                         ),
  //                                         CustomImageView(
  //                                           imagePath: ImageConstant.img,
  //                                           height: 3.adaptSize,
  //                                           width: 3.adaptSize,
  //                                           margin: EdgeInsets.only(
  //                                             left: 3.h,
  //                                             top: 1.v,
  //                                             bottom: 1.v,
  //                                           ),
  //                                         ),
  //                                         CustomImageView(
  //                                           imagePath: ImageConstant.img,
  //                                           height: 3.adaptSize,
  //                                           width: 3.adaptSize,
  //                                           margin: EdgeInsets.only(
  //                                             left: 3.h,
  //                                             top: 1.v,
  //                                             bottom: 1.v,
  //                                           ),
  //                                         ),
  //                                       ],
  //                                     ),
  //                                   ),
  //                                 ),
  //                                 SizedBox(height: 5.v),
  //                                 CustomImageView(
  //                                   imagePath: ImageConstant.imgTelevision,
  //                                   height: 36.v,
  //                                   width: 26.h,
  //                                 ),
  //                               ],
  //                             ),
  //                           ),
  //                         ),
  //                         SizedBox(height: 16.v),
  //                         SizedBox(
  //                           width: 120.h,
  //                           child: Divider(),
  //                         ),
  //                         SizedBox(height: 1.v),
  //                         Text(
  //                           "lbl_badge_earned".tr,
  //                           style: CustomTextStyles.bodySmallGray30001,
  //                         ),
  //                         SizedBox(height: 16.v),
  //                         Padding(
  //                           padding: EdgeInsets.only(left: 3.h),
  //                           child: Row(
  //                             children: [
  //                               Column(
  //                                 children: [
  //                                   SizedBox(
  //                                     width: 113.h,
  //                                     child: Text(
  //                                       "msg_celebrating".tr,
  //                                       maxLines: 3,
  //                                       overflow: TextOverflow.ellipsis,
  //                                       textAlign: TextAlign.center,
  //                                       style:
  //                                       CustomTextStyles.bodyMediumGray400,
  //                                     ),
  //                                   ),
  //                                   SizedBox(height: 2.v),
  //                                   Text(
  //                                     "lbl_jan_16th_2023".tr,
  //                                     style:
  //                                     CustomTextStyles.bodySmallGray300_1,
  //                                   ),
  //                                 ],
  //                               ),
  //                               Spacer(),
  //                               SingleChildScrollView(
  //                                 scrollDirection: Axis.horizontal,
  //                                 child: IntrinsicWidth(
  //                                   child: _buildBadgeLabel(
  //                                     dynamicText: "msg_refer_a_friend_who".tr,
  //                                     dynamicText1: "lbl_200_points".tr,
  //                                   ),
  //                                 ),
  //                               ),
  //                               SingleChildScrollView(
  //                                 scrollDirection: Axis.horizontal,
  //                                 padding: EdgeInsets.only(left: 24.h),
  //                                 child: IntrinsicWidth(
  //                                   child: _buildBadgeLabel(
  //                                     dynamicText: "msg_refer_a_friend_who2".tr,
  //                                     dynamicText1: "lbl_400_points".tr,
  //                                   ),
  //                                 ),
  //                               ),
  //                             ],
  //                           ),
  //                         ),
  //                       ],
  //                     ),
  //                   ),
  //                 ),
  //                 Align(
  //                   alignment: Alignment.topRight,
  //                   child: SingleChildScrollView(
  //                     scrollDirection: Axis.horizontal,
  //                     padding: EdgeInsets.only(
  //                       left: 280.h,
  //                       bottom: 18.v,
  //                     ),
  //                     child: IntrinsicWidth(
  //                       child: Column(
  //                         children: [
  //                           _buildBadge(
  //                             badgeIconNumber: "lbl_3".tr,
  //                           ),
  //                           SizedBox(height: 8.v),
  //                           Divider(),
  //                           SizedBox(height: 1.v),
  //                           Align(
  //                             alignment: Alignment.centerLeft,
  //                             child: Text(
  //                               "lbl_badge_earned".tr,
  //                               style: CustomTextStyles.bodySmallGray30001,
  //                             ),
  //                           ),
  //                           SizedBox(height: 16.v),
  //                           SizedBox(
  //                             width: 116.h,
  //                             child: Text(
  //                               "msg_refer_a_friend_from".tr,
  //                               maxLines: 3,
  //                               overflow: TextOverflow.ellipsis,
  //                               textAlign: TextAlign.center,
  //                               style: CustomTextStyles.bodyMediumGray400,
  //                             ),
  //                           ),
  //                           SizedBox(height: 4.v),
  //                           Text(
  //                             "lbl_200_points".tr,
  //                             textAlign: TextAlign.center,
  //                             style: CustomTextStyles.bodySmallGray300_1,
  //                           ),
  //                         ],
  //                       ),
  //                     ),
  //                   ),
  //                 ),
  //               ],
  //             ),
  //           ),
  //           Spacer(),
  //           Padding(
  //             padding: EdgeInsets.only(bottom: 22.v),
  //             child: Column(
  //               children: [
  //                 _buildBadge1(
  //                   durationText: "lbl_3_days".tr,
  //                   badgeText: "lbl_3".tr,
  //                 ),
  //                 SizedBox(height: 8.v),
  //                 Container(
  //                   height: 4.v,
  //                   width: 120.h,
  //                   decoration: BoxDecoration(
  //                     color: appTheme.deepOrange50,
  //                   ),
  //                   child: ClipRRect(
  //                     child: LinearProgressIndicator(
  //                       value: 0.8,
  //                       backgroundColor: appTheme.deepOrange50,
  //                       valueColor: AlwaysStoppedAnimation<Color>(
  //                         appTheme.orange30001,
  //                       ),
  //                     ),
  //                   ),
  //                 ),
  //                 Align(
  //                   alignment: Alignment.centerLeft,
  //                   child: Text(
  //                     "msg_1_more_day_to_go".tr,
  //                     style: CustomTextStyles.bodySmallGray700,
  //                   ),
  //                 ),
  //                 SizedBox(height: 18.v),
  //                 SizedBox(
  //                   width: 116.h,
  //                   child: Text(
  //                     "msg_3_day_check_in_streak".tr,
  //                     maxLines: null,
  //                     overflow: TextOverflow.ellipsis,
  //                     textAlign: TextAlign.center,
  //                     style: theme.textTheme.bodyMedium,
  //                   ),
  //                 ),
  //                 SizedBox(height: 4.v),
  //                 SizedBox(
  //                   width: 116.h,
  //                   child: Text(
  //                     "msg_check_in_for_3_consecutive".tr,
  //                     maxLines: null,
  //                     overflow: TextOverflow.ellipsis,
  //                     textAlign: TextAlign.center,
  //                     style: theme.textTheme.bodySmall,
  //                   ),
  //                 ),
  //               ],
  //             ),
  //           ),
  //           Padding(
  //             padding: EdgeInsets.only(
  //               left: 20.h,
  //               bottom: 22.v,
  //             ),
  //             child: Column(
  //               children: [
  //                 _buildBadge1(
  //                   durationText: "lbl_5_days".tr,
  //                   badgeText: "lbl_2".tr,
  //                 ),
  //                 SizedBox(height: 8.v),
  //                 Container(
  //                   height: 4.v,
  //                   width: 120.h,
  //                   decoration: BoxDecoration(
  //                     color: appTheme.deepOrange50,
  //                   ),
  //                   child: ClipRRect(
  //                     child: LinearProgressIndicator(
  //                       value: 0.5,
  //                       backgroundColor: appTheme.deepOrange50,
  //                       valueColor: AlwaysStoppedAnimation<Color>(
  //                         appTheme.orange30001,
  //                       ),
  //                     ),
  //                   ),
  //                 ),
  //                 Align(
  //                   alignment: Alignment.centerLeft,
  //                   child: Text(
  //                     "msg_3_more_days_to_go".tr,
  //                     style: CustomTextStyles.bodySmallGray700,
  //                   ),
  //                 ),
  //                 SizedBox(height: 18.v),
  //                 SizedBox(
  //                   width: 116.h,
  //                   child: Text(
  //                     "msg_5_day_check_in_streak".tr,
  //                     maxLines: null,
  //                     overflow: TextOverflow.ellipsis,
  //                     textAlign: TextAlign.center,
  //                     style: theme.textTheme.bodyMedium,
  //                   ),
  //                 ),
  //                 SizedBox(height: 4.v),
  //                 SizedBox(
  //                   width: 116.h,
  //                   child: Text(
  //                     "msg_check_in_for_5_consecutive".tr,
  //                     maxLines: null,
  //                     overflow: TextOverflow.ellipsis,
  //                     textAlign: TextAlign.center,
  //                     style: theme.textTheme.bodySmall,
  //                   ),
  //                 ),
  //               ],
  //             ),
  //           ),
  //           Expanded(
  //             child: SizedBox(
  //               height: 237.v,
  //               child: Obx(
  //                     () => ListView.separated(
  //                   padding: EdgeInsets.only(
  //                     left: 20.h,
  //                     bottom: 43.v,
  //                   ),
  //                   scrollDirection: Axis.horizontal,
  //                   separatorBuilder: (
  //                       context,
  //                       index,
  //                       ) {
  //                     return SizedBox(
  //                       width: 20.h,
  //                     );
  //                   },
  //                   itemCount: controller
  //                       .contentModelObj.value.userprofileItemList.value.length,
  //                   itemBuilder: (context, index) {
  //                     UserprofileItemModel model = controller.contentModelObj
  //                         .value.userprofileItemList.value[index];
  //                     return UserprofileItemWidget(
  //                       model,
  //                     );
  //                   },
  //                 ),
  //               ),
  //             ),
  //           ),
  //         ],
  //       ),
  //     ),
  //   );
  // }

  /// Section Widget
  Widget _buildContentContainer() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.h),
      child: Obx(
        () => ListView.separated(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          separatorBuilder: (
            context,
            index,
          ) {
            return SizedBox(
              height: 12.v,
            );
          },
          itemCount: controller
              .contentModelObj.value.contentcontainerItemList.value.length,
          itemBuilder: (context, index) {
            ContentcontainerItemModel model = controller
                .contentModelObj.value.contentcontainerItemList.value[index];
            return ContentcontainerItemWidget(
              model,

            );
          },
        ),
      ),
    );
  }

  /// Common widget
  Widget _buildBadge({required String badgeIconNumber}) {
    return SizedBox(
      height: 88.v,
      width: 80.h,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              height: 80.adaptSize,
              width: 80.adaptSize,
              padding: EdgeInsets.all(15.h),
              decoration: AppDecoration.outlineBlueGrayF.copyWith(
                borderRadius: BorderRadiusStyle.circleBorder40,
              ),
              child: CustomImageView(
                imagePath: ImageConstant.imgIconAchievementBadgeRefer,
                height: 50.adaptSize,
                width: 50.adaptSize,
                alignment: Alignment.center,
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              width: 36.h,
              padding: EdgeInsets.symmetric(
                horizontal: 16.h,
                vertical: 1.v,
              ),
              decoration: AppDecoration.fillRed.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder8,
              ),
              child: Text(
                badgeIconNumber,
                style: theme.textTheme.labelMedium!.copyWith(
                  color: appTheme.whiteA700,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildBarDescription({required String descriptionText}) {
    return Expanded(
      child: SizedBox(
        width: double.maxFinite,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Divider(),
            Text(
              descriptionText,
              style: CustomTextStyles.bodySmallGray700.copyWith(
                color: appTheme.gray700,
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Common widget
  Widget _buildBadgeLabel({
    required String dynamicText,
    required String dynamicText1,
  }) {
    return Column(
      children: [
        SizedBox(
          width: 116.h,
          child: Text(
            dynamicText,
            maxLines: null,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.center,
            style: theme.textTheme.bodyMedium!.copyWith(
              color: appTheme.gray900,
            ),
          ),
        ),
        SizedBox(height: 4.v),
        Text(
          dynamicText1,
          textAlign: TextAlign.center,
          style: theme.textTheme.bodySmall!.copyWith(
            color: appTheme.black900.withOpacity(0.2),
          ),
        ),
      ],
    );
  }

  /// Common widget
  Widget _buildBadge1({
    required String durationText,
    required String badgeText,
  }) {
    return SizedBox(
      height: 88.v,
      width: 80.h,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Card(
              clipBehavior: Clip.antiAlias,
              elevation: 0,
              margin: EdgeInsets.all(0),
              color: appTheme.gray200,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadiusStyle.circleBorder40,
              ),
              child: Container(
                height: 80.adaptSize,
                width: 80.adaptSize,
                padding: EdgeInsets.symmetric(
                  horizontal: 19.h,
                  vertical: 15.v,
                ),
                decoration: AppDecoration.outlineBlueGrayF.copyWith(
                  borderRadius: BorderRadiusStyle.circleBorder40,
                ),
                child: Stack(
                  alignment: Alignment.topCenter,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgIcSharpPersonPinCircle,
                      height: 35.adaptSize,
                      width: 35.adaptSize,
                      alignment: Alignment.bottomCenter,
                    ),
                    Align(
                      alignment: Alignment.topCenter,
                      child: Container(
                        height: 19.v,
                        width: 40.h,
                        margin: EdgeInsets.only(top: 3.v),
                        child: Stack(
                          alignment: Alignment.topCenter,
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgVector,
                              height: 19.v,
                              width: 40.h,
                              alignment: Alignment.center,
                            ),
                            Align(
                              alignment: Alignment.topCenter,
                              child: Padding(
                                padding: EdgeInsets.only(top: 1.v),
                                child: Text(
                                  durationText,
                                  textAlign: TextAlign.center,
                                  style: theme.textTheme.labelSmall!.copyWith(
                                    color: appTheme.whiteA700,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              width: 38.h,
              padding: EdgeInsets.symmetric(
                horizontal: 16.h,
                vertical: 1.v,
              ),
              decoration: AppDecoration.fillRed.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder8,
              ),
              child: Text(
                badgeText,
                style: theme.textTheme.labelMedium!.copyWith(
                  color: appTheme.whiteA700,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildSectionTitle({
    required String titleText,
    required String showAllText,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          titleText,
          style: theme.textTheme.titleMedium!.copyWith(
            color: appTheme.amber200,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(bottom: 4.v),
          child: Text(
            showAllText,
            style: CustomTextStyles.bodyMediumGray500.copyWith(
              color: appTheme.gray500,
            ),
          ),
        ),
      ],
    );
  }
}
