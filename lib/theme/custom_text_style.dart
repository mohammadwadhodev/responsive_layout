import 'package:flutter/material.dart';
import '../core/app_export.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Arial text style
  static get arialBlack900 => TextStyle(
        color: appTheme.black900,
        fontSize: 4.fSize,
        fontWeight: FontWeight.w700,
      ).arial;
  static get arialBlack900Bold => TextStyle(
        color: appTheme.black900,
        fontSize: 5.fSize,
        fontWeight: FontWeight.w700,
      ).arial;
  // Arialff text style
  static get arialff000000 => TextStyle(
        color: Color(0XFF000000),
        fontSize: 6.fSize,
        fontWeight: FontWeight.w700,
      ).arial;
  static get arialff000000Bold => TextStyle(
        color: Color(0XFF000000),
        fontSize: 4.fSize,
        fontWeight: FontWeight.w700,
      ).arial;
  // Body text style
  static get bodyLargeAmber200 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.amber200,
      );
  static get bodyLargeWhiteA700 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.whiteA700,
      );
  static get bodyMediumAmber200 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.amber200,
      );
  static get bodyMediumGray400 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray400,
      );
  static get bodyMediumGray500 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray500,
      );
  static get bodyMediumGray50001 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray50001,
      );
  static get bodyMediumGray60001 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray60001,
      );
  static get bodySmallGray300 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray300,
        fontSize: 10.fSize,
      );
  static get bodySmallGray30001 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray30001,
        fontSize: 10.fSize,
      );
  static get bodySmallGray300_1 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray300,
      );
  static get bodySmallGray700 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray700,
        fontSize: 10.fSize,
      );
  static get bodySmallWhiteA700 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.whiteA700,
      );
  // Label style
  static get labelLargeSFProText => theme.textTheme.labelLarge!.sFProText;
  static get labelMediumSFProText =>
      theme.textTheme.labelMedium!.sFProText.copyWith(
        fontWeight: FontWeight.w600,
      );
  static get labelSmallBlack900 => theme.textTheme.labelSmall!.copyWith(
        color: appTheme.black900,
        fontWeight: FontWeight.w800,
      );
  // Title text style
  static get titleMediumOrange30001 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.orange30001,
        fontSize: 16.fSize,
        fontWeight: FontWeight.w600,
      );
}

extension on TextStyle {
  TextStyle get sFProText {
    return copyWith(
      fontFamily: 'SF Pro Text',
    );
  }

  TextStyle get poppins {
    return copyWith(
      fontFamily: 'Poppins',
    );
  }

  TextStyle get arial {
    return copyWith(
      fontFamily: 'Arial',
    );
  }
}
