import 'package:flutter/material.dart';
import '../core/app_export.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Label text style
  static get labelMediumBlack90010 => theme.textTheme.labelMedium!.copyWith(
        color: appTheme.black900.withOpacity(0.64),
        fontSize: (
         10
        ),
      );
  static get labelLargeRedA700_1 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.redA700,
      );
  static get labelMediumBlueA70010 => theme.textTheme.labelMedium!.copyWith(
        color: appTheme.blueA700,
        fontSize: (
         10
        ),
      );
  static get labelLargeOutfitPrimary =>
      theme.textTheme.labelLarge!.outfit.copyWith(
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w700,
      );
  static get labelLargeBlueA700 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.blueA700,
        fontWeight: FontWeight.w700,
      );
  static get labelLargeBlueA700Bold => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.blueA700,
        fontWeight: FontWeight.w700,
      );
  static get labelLargeGreenA700 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.greenA700,
        fontSize: (
         13
        ),
        fontWeight: FontWeight.w700,
      );
  static get labelMediumGray80010_1 => theme.textTheme.labelMedium!.copyWith(
        color: appTheme.gray800,
        fontSize: (
         10
        ),
      );
  static get labelLargeOutfitGray600 =>
      theme.textTheme.labelLarge!.outfit.copyWith(
        color: appTheme.gray600,
      );
  static get labelLargeGray800 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.gray800.withOpacity(0.8),
      );
  static get labelLargeBlueA700SemiBold => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.blueA700,
        fontWeight: FontWeight.w600,
      );
  static get labelLargeBlack900SemiBold_1 =>
      theme.textTheme.labelLarge!.copyWith(
        color: appTheme.black900,
        fontWeight: FontWeight.w600,
      );
  static get labelMediumOutfitPrimary =>
      theme.textTheme.labelMedium!.outfit.copyWith(
        color: theme.colorScheme.primary,
        fontSize: (
         10
        ),
        fontWeight: FontWeight.w700,
      );
  static get labelSmallRed600 => theme.textTheme.labelSmall!.copyWith(
        color: appTheme.red600,
        fontSize: (
         8
        ),
        fontWeight: FontWeight.w500,
      );
  static get labelMediumBlueA700 => theme.textTheme.labelMedium!.copyWith(
        color: appTheme.blueA700,
        fontSize: (
         10
        ),
        fontWeight: FontWeight.w700,
      );
  static get labelLargeBlack900Bold => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.black900,
        fontWeight: FontWeight.w700,
      );
  static get labelMediumGray80001 => theme.textTheme.labelMedium!.copyWith(
        color: appTheme.gray80001,
        fontSize: (
         10
        ),
        fontWeight: FontWeight.w600,
      );
  static get labelMediumGray80003 => theme.textTheme.labelMedium!.copyWith(
        color: appTheme.gray80003,
        fontSize: (
         10
        ),
      );
  static get labelLargeRedA70001 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.redA70001,
      );
  static get labelSmallOnPrimaryContainer =>
      theme.textTheme.labelSmall!.copyWith(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(0.53),
        fontWeight: FontWeight.w500,
      );
  static get labelLargeBlueA700_1 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.blueA700,
      );
  static get labelMediumGray800Bold => theme.textTheme.labelMedium!.copyWith(
        color: appTheme.gray800,
        fontSize: (
         10
        ),
        fontWeight: FontWeight.w700,
      );
  static get labelMediumBlack90010_3 => theme.textTheme.labelMedium!.copyWith(
        color: appTheme.black900,
        fontSize: (
         10
        ),
      );
  static get labelMediumBlack90010_1 => theme.textTheme.labelMedium!.copyWith(
        color: appTheme.black900,
        fontSize: (
         10
        ),
      );
  static get labelMediumBlack90010_2 => theme.textTheme.labelMedium!.copyWith(
        color: appTheme.black900.withOpacity(0.53),
        fontSize: (
         10
        ),
      );
  static get labelMediumBlack900 => theme.textTheme.labelMedium!.copyWith(
        color: appTheme.black900,
      );
  static get labelLargeBlack900 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.black900,
        fontWeight: FontWeight.w600,
      );
  static get labelLargeGray70001 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.gray70001,
        fontSize: (
         13
        ),
        fontWeight: FontWeight.w700,
      );
  static get labelLargeBlack900_1 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.black900,
      );
  static get labelMediumGray800 => theme.textTheme.labelMedium!.copyWith(
        color: appTheme.gray800,
        fontSize: (
         10
        ),
        fontWeight: FontWeight.w700,
      );
  static get labelMediumBlueA700SemiBold =>
      theme.textTheme.labelMedium!.copyWith(
        color: appTheme.blueA700,
        fontSize: (
         10
        ),
        fontWeight: FontWeight.w600,
      );
  static get labelLargeBold => theme.textTheme.labelLarge!.copyWith(
        fontWeight: FontWeight.w700,
      );
  static get labelLargeBlack900SemiBold => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.black900,
        fontWeight: FontWeight.w600,
      );
  static get labelLargeGray80003 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.gray80003,
      );
  static get labelLargeSemiBold => theme.textTheme.labelLarge!.copyWith(
        fontWeight: FontWeight.w600,
      );
  static get labelLargeRedA700 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.redA700,
        fontSize: (
         13
        ),
        fontWeight: FontWeight.w700,
      );
  static get labelLargePrimary => theme.textTheme.labelLarge!.copyWith(
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w600,
      );
  static get labelMediumGray80010 => theme.textTheme.labelMedium!.copyWith(
        color: appTheme.gray800,
        fontSize: (
         10
        ),
      );
  // Title text style
  static get titleSmallBlack90015 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.black900,
        fontSize: (
        15
        ),
      );
  static get titleSmallBlueA700SemiBold => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.blueA700,
        fontWeight: FontWeight.w600,
      );
  static get titleSmallGreenA700_1 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.greenA700,
      );
  static get titleMediumBold => theme.textTheme.titleMedium!.copyWith(
        fontWeight: FontWeight.w700,
      );
  static get titleLargeBold => theme.textTheme.titleLarge!.copyWith(
        fontWeight: FontWeight.w700,
      );
  static get titleSmallGray500 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.gray500,
        fontWeight: FontWeight.w600,
      );
  static get titleSmallGreenA400 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.greenA400,
      );
  static get titleLargeInterBlack900 =>
      theme.textTheme.titleLarge!.inter.copyWith(
        color: appTheme.black900,
      );
  static get titleSmallGreenA700SemiBold =>
      theme.textTheme.titleSmall!.copyWith(
        color: appTheme.greenA700,
        fontWeight: FontWeight.w600,
      );
  static get titleSmallRedA70001 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.redA70001,
      );
  static get titleSmallPrimarySemiBold_1 =>
      theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.primary.withOpacity(0.53),
        fontWeight: FontWeight.w600,
      );
  static get titleSmallBlueA700_2 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.blueA700,
      );
  static get titleSmallBlueA700_1 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.blueA700,
      );
  static get titleSmallOutfitBlack900SemiBold =>
      theme.textTheme.titleSmall!.outfit.copyWith(
        color: appTheme.black900,
        fontWeight: FontWeight.w600,
      );
  static get titleLargeBlack900_1 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.black900,
      );
  static get titleSmallPrimary_1 => theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get titleSmallPrimary_2 => theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.primary.withOpacity(0.67),
      );
  static get titleSmallOutfitBlack900 =>
      theme.textTheme.titleSmall!.outfit.copyWith(
        color: appTheme.black900,
        fontWeight: FontWeight.w600,
      );
  static get titleSmallBold => theme.textTheme.titleSmall!.copyWith(
        fontWeight: FontWeight.w700,
      );
  static get titleSmallGray800 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.gray800.withOpacity(0.6),
      );
  static get titleSmallGreenA700 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.greenA700,
        fontWeight: FontWeight.w700,
      );
  static get titleSmallGreenA40001 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.greenA40001,
      );
  static get titleSmallBlueA700 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.blueA700,
        fontWeight: FontWeight.w700,
      );
  static get titleSmallBlack900Bold => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.black900,
        fontWeight: FontWeight.w700,
      );
  static get titleSmallSemiBold => theme.textTheme.titleSmall!.copyWith(
        fontWeight: FontWeight.w600,
      );
  static get titleSmallBlack900_2 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.black900,
      );
  static get titleSmallRedA700_1 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.redA700,
      );
  static get titleSmallRed600_1 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.red600,
      );
  static get titleSmallBlack900_1 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.black900,
      );
  static get titleLargeBlack900 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.black900,
        fontWeight: FontWeight.w600,
      );
  static get titleSmallBlack900 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.black900,
        fontWeight: FontWeight.w700,
      );
  static get titleSmallPrimaryExtraBold => theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w800,
      );
  static get titleSmallBlueA700Bold => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.blueA700,
        fontWeight: FontWeight.w700,
      );
  static get titleLargeBlack900Bold => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.black900,
        fontWeight: FontWeight.w700,
      );
  static get titleMediumGray800 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray800,
        fontWeight: FontWeight.w600,
      );
  static get titleLargeSemiBold => theme.textTheme.titleLarge!.copyWith(
        fontWeight: FontWeight.w600,
      );
  static get titleSmallRedA700 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.redA700.withOpacity(0.87),
        fontWeight: FontWeight.w600,
      );
  static get titleSmallPrimarySemiBold => theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumPrimary => theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w600,
      );
  static get titleLargePrimary => theme.textTheme.titleLarge!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get titleSmallOutfitGray80002 =>
      theme.textTheme.titleSmall!.outfit.copyWith(
        color: appTheme.gray80002
      );
  static get titleLargeBlueA700 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.blueA700,
      );
  static get titleMedium18 => theme.textTheme.titleMedium!.copyWith(
        fontSize: (
         18
        ),
      );
  static get titleSmallRed600 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.red600,
        fontWeight: FontWeight.w700,
      );
  static get titleSmallPrimary => theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w700,
      );
  static get titleSmallOutfitBlueA700 =>
      theme.textTheme.titleSmall!.outfit.copyWith(
        color: appTheme.blueA700,
        fontWeight: FontWeight.w600,
      );
  static get titleSmallGray200 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.gray200,
      );
  static get titleMediumGray800_1 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray800,
      );
  // Body text style
  static get bodyMediumGray70001 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray70001,
        fontSize: (
         13
        ),
      );
  static get bodySmallPrimary => theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.primary,
        fontSize: (
          12
        ),
      );
  static get bodySmallGray80012 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray800,
        fontSize: (
          12
        ),
      );
  static get bodySmallGray800Light => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray800,
        fontWeight: FontWeight.w300,
      );
  static get bodyMediumPrimary => theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get bodySmall9 => theme.textTheme.bodySmall!.copyWith(
        fontSize: (
       9
        ),
      );
  static get bodySmallGreenA70012 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.greenA700,
        fontSize: (
          12
        ),
      );
  static get bodySmallBlueA700Light => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.blueA700,
        fontSize: (
          12
        ),
        fontWeight: FontWeight.w300,
      );
  static get bodyMediumOutfitGray700 =>
      theme.textTheme.bodyMedium!.outfit.copyWith(
        color: appTheme.gray700,
      );
  static get bodySmall12_1 => theme.textTheme.bodySmall!.copyWith(
        fontSize: (
          12
        ),
      );
  static get bodySmall12_2 => theme.textTheme.bodySmall!.copyWith(
        fontSize: (
          12
        ),
      );
  static get bodyMediumOutfitPrimaryContainer =>
      theme.textTheme.bodyMedium!.outfit.copyWith(
        color: theme.colorScheme.primaryContainer,
      );
  static get bodyMediumOutfitGray700_1 =>
      theme.textTheme.bodyMedium!.outfit.copyWith(
        color: appTheme.gray700,
      );
  static get bodySmallGreenA700 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.greenA700,
      );
  static get bodyMediumRedA700 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.redA700,
      );
  static get bodyMediumLight => theme.textTheme.bodyMedium!.copyWith(
        fontWeight: FontWeight.w300,
      );
  static get bodySmallBlueA700 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.blueA700,
        fontSize: (
          12
        ),
      );
  static get bodySmallLightgreen900 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.lightGreen900,
        fontSize: (
          12
        ),
      );
  static get bodySmallGray800 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray800,
        fontSize: (
       9
        ),
        fontWeight: FontWeight.w300,
      );
  static get bodySmallLight_1 => theme.textTheme.bodySmall!.copyWith(
        fontWeight: FontWeight.w300,
      );
  static get bodySmallLight_2 => theme.textTheme.bodySmall!.copyWith(
        fontWeight: FontWeight.w300,
      );
  static get bodyMediumBlack900 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.black900.withOpacity(0.53),
        fontWeight: FontWeight.w300,
      );
  static get bodySmallGray800_2 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray800,
      );
  static get bodySmallGray800_1 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray800,
      );
  static get bodySmallBlack90012 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.black900.withOpacity(0.53),
        fontSize: (
          12
        ),
      );
  static get bodySmallBlueA7009 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.blueA700,
        fontSize: (
       9
        ),
      );
  static get bodySmallLight => theme.textTheme.bodySmall!.copyWith(
        fontSize: (
          12
        ),
        fontWeight: FontWeight.w300,
      );
  static get bodySmallOutfit => theme.textTheme.bodySmall!.outfit;
  static get bodySmall12 => theme.textTheme.bodySmall!.copyWith(
        fontSize: (
          12
        ),
      );
  static get bodyMediumGray800 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray800,
      );
  static get bodySmallGray90087 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray90087,
        fontSize: (
          12
        ),
      );
  static get bodySmallLight12 => theme.textTheme.bodySmall!.copyWith(
        fontSize: (
          12
        ),
        fontWeight: FontWeight.w300,
      );
  static get bodySmallBlack900 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.black900.withOpacity(0.6),
      );
}

extension on TextStyle {
  TextStyle get outfit {
    return copyWith(
      fontFamily: 'Outfit',
    );
  }

  TextStyle get inter {
    return copyWith(
      fontFamily: 'Inter',
    );
  }

  TextStyle get poppins {
    return copyWith(
      fontFamily: 'Poppins',
    );
  }
}
