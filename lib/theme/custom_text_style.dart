import 'package:artisan_oga/core/app_export.dart';
import 'package:flutter/material.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Body text style
  static get bodyLarge18 => theme.textTheme.bodyLarge!.copyWith(
        fontSize: 18.fSize,
      );
  static get bodyLargeGray50 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.gray50,
      );
  static get bodyLargePrimaryContainer => theme.textTheme.bodyLarge!.copyWith(
        color: theme.colorScheme.primaryContainer.withOpacity(0.81),
      );
  static get bodyMediumBluegray400 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.blueGray400,
        fontSize: 13.fSize,
      );
  static get bodyMediumBluegray40011 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.blueGray400,
        fontSize: 11.fSize,
      );
  static get bodyMediumGray700 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray700,
        fontSize: 14.fSize,
      );
  static get bodyMediumGray70013 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray700,
        fontSize: 13.fSize,
      );
  static get bodyMediumGray70014 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray700,
        fontSize: 14.fSize,
      );
  static get bodyMediumGray700_1 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray700,
      );
  static get bodyMediumGray700_2 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray700,
      );
  static get bodyMediumOnPrimaryContainer =>
      theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
        fontSize: 13.fSize,
      );
  static get bodyMediumPrimary => theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 14.fSize,
      );
  static get bodyMediumPrimary14 => theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 14.fSize,
      );
  static get bodyMediumPrimaryContainer => theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.primaryContainer.withOpacity(1),
        fontSize: 14.fSize,
      );
  static get bodyMediumPrimaryContainer14 =>
      theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.primaryContainer.withOpacity(1),
        fontSize: 14.fSize,
      );
  static get bodyMediumPrimaryContainer_1 =>
      theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.primaryContainer.withOpacity(1),
      );
  static get bodyMediumPrimaryContainer_2 =>
      theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.primaryContainer.withOpacity(1),
      );
  static get bodyMediumff000000 => theme.textTheme.bodyMedium!.copyWith(
        color: Color(0XFF000000),
        fontSize: 14.fSize,
      );
  static get bodyMediumff3a332c => theme.textTheme.bodyMedium!.copyWith(
        color: Color(0XFF3A332C),
        fontSize: 14.fSize,
      );
  static get bodyMediumff666666 => theme.textTheme.bodyMedium!.copyWith(
        color: Color(0XFF666666),
      );
  static get bodySmallGray800b2 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray800B2,
      );
  // Headline text style
  static get headlineSmallGray50 => theme.textTheme.headlineSmall!.copyWith(
        color: appTheme.gray50,
        fontSize: 25.fSize,
      );
  static get headlineSmallPrimary => theme.textTheme.headlineSmall!.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 25.fSize,
        fontWeight: FontWeight.w600,
      );
  // Label text style
  static get labelLargeBluegray400 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.blueGray400,
        fontSize: 13.fSize,
      );
  static get labelLargeGray50 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.gray50,
        fontSize: 13.fSize,
      );
  static get labelLargeGray5001 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.gray5001,
        fontWeight: FontWeight.w700,
      );
  static get labelLargeOnPrimaryContainer =>
      theme.textTheme.labelLarge!.copyWith(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
        fontWeight: FontWeight.w600,
      );
  static get labelLargePoppinsBluegray100 =>
      theme.textTheme.labelLarge!.poppins.copyWith(
        color: appTheme.blueGray100,
        fontSize: 13.fSize,
      );
  static get labelLargePoppinsBluegray600 =>
      theme.textTheme.labelLarge!.poppins.copyWith(
        color: appTheme.blueGray600,
        fontSize: 13.fSize,
      );
  static get labelLargePoppinsGray50 =>
      theme.textTheme.labelLarge!.poppins.copyWith(
        color: appTheme.gray50,
        fontSize: 13.fSize,
      );
  static get labelLargePrimaryContainer => theme.textTheme.labelLarge!.copyWith(
        color: theme.colorScheme.primaryContainer.withOpacity(1),
        fontSize: 13.fSize,
      );
  static get labelLargePrimaryContainer13 =>
      theme.textTheme.labelLarge!.copyWith(
        color: theme.colorScheme.primaryContainer,
        fontSize: 13.fSize,
      );
  static get labelLargePrimaryContainer_1 =>
      theme.textTheme.labelLarge!.copyWith(
        color: theme.colorScheme.primaryContainer,
      );
  static get labelLargePrimaryContainer_2 =>
      theme.textTheme.labelLarge!.copyWith(
        color: theme.colorScheme.primaryContainer.withOpacity(1),
      );
  static get labelMediumGray50 => theme.textTheme.labelMedium!.copyWith(
        color: appTheme.gray50,
        fontWeight: FontWeight.w700,
      );
  static get labelMediumOnPrimaryContainer =>
      theme.textTheme.labelMedium!.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
      );
  // Title text style
  static get titleLargeGray50 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.gray50,
        fontWeight: FontWeight.w700,
      );
  static get titleLargeGray50Bold => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.gray50,
        fontSize: 23.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleLargeOnPrimaryContainer =>
      theme.textTheme.titleLarge!.copyWith(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
        fontWeight: FontWeight.w700,
      );
  static get titleLargeOnPrimaryContainerSemiBold =>
      theme.textTheme.titleLarge!.copyWith(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
        fontWeight: FontWeight.w600,
      );
  static get titleLargePoppinsPrimaryContainer =>
      theme.textTheme.titleLarge!.poppins.copyWith(
        color: theme.colorScheme.primaryContainer.withOpacity(1),
        fontSize: 22.fSize,
      );
  static get titleLargePrimary => theme.textTheme.titleLarge!.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 22.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleLargePrimaryBold => theme.textTheme.titleLarge!.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 23.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleLargePrimaryContainer => theme.textTheme.titleLarge!.copyWith(
        color: theme.colorScheme.primaryContainer.withOpacity(1),
        fontSize: 23.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleLargePrimaryContainerSemiBold =>
      theme.textTheme.titleLarge!.copyWith(
        color: theme.colorScheme.primaryContainer.withOpacity(1),
        fontSize: 21.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleLargePrimarySemiBold => theme.textTheme.titleLarge!.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 23.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleLargeff3a332c => theme.textTheme.titleLarge!.copyWith(
        color: Color(0XFF3A332C),
        fontSize: 22.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleLargeff3a332cSemiBold => theme.textTheme.titleLarge!.copyWith(
        color: Color(0XFF3A332C),
        fontSize: 21.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleLargefff7941e => theme.textTheme.titleLarge!.copyWith(
        color: Color(0XFFF7941E),
        fontSize: 21.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleMedium18 => theme.textTheme.titleMedium!.copyWith(
        fontSize: 18.fSize,
      );
  static get titleMediumBlack900 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.black900,
        fontSize: 18.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleMediumBold => theme.textTheme.titleMedium!.copyWith(
        fontSize: 19.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleMediumGray50 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray50,
        fontWeight: FontWeight.w500,
      );
  static get titleMediumGray5001 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray5001,
      );
  static get titleMediumGray5018 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray50,
        fontSize: 18.fSize,
      );
  static get titleMediumGray50Bold => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray50,
        fontSize: 19.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleMediumGray50Bold17 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray50,
        fontSize: 17.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleMediumGray50_1 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray50,
      );
  static get titleMediumGray700 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray700,
        fontWeight: FontWeight.w500,
      );
  static get titleMediumGray700Medium => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray700,
        fontSize: 18.fSize,
        fontWeight: FontWeight.w500,
      );
  static get titleMediumGray700Medium17 =>
      theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray700,
        fontSize: 17.fSize,
        fontWeight: FontWeight.w500,
      );
  static get titleMediumMedium => theme.textTheme.titleMedium!.copyWith(
        fontWeight: FontWeight.w500,
      );
  static get titleMediumMedium18 => theme.textTheme.titleMedium!.copyWith(
        fontSize: 18.fSize,
        fontWeight: FontWeight.w500,
      );
  static get titleMediumOnErrorContainer =>
      theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.onErrorContainer,
      );
  static get titleMediumOnPrimary => theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.onPrimary,
        fontSize: 17.fSize,
      );
  static get titleMediumOnPrimaryContainer =>
      theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
      );
  static get titleMediumOnPrimaryContainer18 =>
      theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
        fontSize: 18.fSize,
      );
  static get titleMediumOnPrimaryMedium =>
      theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.onPrimary,
        fontSize: 17.fSize,
        fontWeight: FontWeight.w500,
      );
  static get titleMediumPrimaryContainer =>
      theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.primaryContainer.withOpacity(1),
      );
  static get titleMediumPrimaryContainer17 =>
      theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.primaryContainer.withOpacity(1),
        fontSize: 17.fSize,
      );
  static get titleMediumPrimaryContainer18 =>
      theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.primaryContainer.withOpacity(1),
        fontSize: 18.fSize,
      );
  static get titleMediumPrimaryContainerMedium =>
      theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.primaryContainer.withOpacity(1),
        fontSize: 18.fSize,
        fontWeight: FontWeight.w500,
      );
  static get titleMediumPrimaryContainerMedium_1 =>
      theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.primaryContainer.withOpacity(1),
        fontWeight: FontWeight.w500,
      );
  static get titleMediumSecondaryContainer =>
      theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.secondaryContainer.withOpacity(1),
        fontSize: 18.fSize,
        fontWeight: FontWeight.w500,
      );
  static get titleMediumSecondaryContainer18 =>
      theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.secondaryContainer.withOpacity(1),
        fontSize: 18.fSize,
      );

  static get titleMediumSecondaryContainer14 =>
      theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.secondaryContainer.withOpacity(1),
        fontSize: 14.fSize,
      );

  static get titleMediumSecondaryContainer12 =>
      theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.secondaryContainer.withOpacity(1),
        fontSize: 12.fSize,
      );
  static get titleMediumSecondaryContainer_1 =>
      theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.secondaryContainer.withOpacity(1),
      );
  static get titleMediumff3a332c => theme.textTheme.titleMedium!.copyWith(
        color: Color(0XFF3A332C),
      );
  static get titleMediumff3a332cMedium => theme.textTheme.titleMedium!.copyWith(
        color: Color(0XFF3A332C),
        fontWeight: FontWeight.w500,
      );
  static get titleSmall15 => theme.textTheme.titleSmall!.copyWith(
        fontSize: 19.fSize,
      );

  static get titleSmall20 => theme.textTheme.titleSmall!.copyWith(
        fontSize: 20.fSize,
      );
  static get titleSmallBlack900 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.black900,
        fontSize: 15.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleSmallBlack900_1 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.black900,
      );
  static get titleSmallGray50 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.gray50,
        fontSize: 15.fSize,
      );
  static get titleSmallGray50001 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.gray50001,
      );
  static get titleSmallLightgreen900 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.lightGreen900,
        fontWeight: FontWeight.w600,
      );
  static get titleSmallOnPrimary => theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.onPrimary,
        fontWeight: FontWeight.w600,
      );
  static get titleSmallOnPrimaryContainer =>
      theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
      );
  static get titleSmallOnPrimarySemiBold =>
      theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.onPrimary,
        fontSize: 15.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleSmallPrimary => theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 15.fSize,
      );
  static get titleSmallPrimaryContainer => theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.primaryContainer.withOpacity(1),
        fontSize: 15.fSize,
      );
  static get titleSmallPrimaryContainer15 =>
      theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.primaryContainer.withOpacity(0.52),
        fontSize: 15.fSize,
      );
  static get titleSmallPrimaryContainerBold =>
      theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.primaryContainer.withOpacity(1),
        fontSize: 15.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleSmallPrimaryContainerSemiBold =>
      theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.primaryContainer.withOpacity(1),
        fontWeight: FontWeight.w600,
      );
  static get titleSmallPrimaryContainerSemiBold15 =>
      theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.primaryContainer.withOpacity(0.52),
        fontSize: 15.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleSmallPrimaryContainer_1 =>
      theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.primaryContainer.withOpacity(1),
      );
  static get titleSmallPrimarySemiBold => theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 15.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleSmallPrimary_1 => theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get titleSmallSecondaryContainer =>
      theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.secondaryContainer.withOpacity(1),
      );
  static get titleSmallSecondaryContainerBold =>
      theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.secondaryContainer.withOpacity(1),
        fontSize: 15.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleSmallSemiBold => theme.textTheme.titleSmall!.copyWith(
        fontSize: 15.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleSmallff3a332c => theme.textTheme.titleSmall!.copyWith(
        color: Color(0XFF3A332C),
        fontSize: 15.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleSmallff3a332cSemiBold => theme.textTheme.titleSmall!.copyWith(
        color: Color(0XFF3A332C),
        fontWeight: FontWeight.w600,
      );
  static get titleSmallff3a332c_1 => theme.textTheme.titleSmall!.copyWith(
        color: Color(0XFF3A332C),
      );
  static get titleSmallff666666 => theme.textTheme.titleSmall!.copyWith(
        color: Color(0XFF666666),
        fontSize: 15.fSize,
      );
  static get titleSmallfff7941e => theme.textTheme.titleSmall!.copyWith(
        color: Color(0XFFF7941E),
        fontSize: 15.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleSmallfff7941eSemiBold => theme.textTheme.titleSmall!.copyWith(
        color: Color(0XFFF7941E),
        fontWeight: FontWeight.w600,
      );
  static get titleSmallfff7941eSemiBold15 =>
      theme.textTheme.titleSmall!.copyWith(
        color: Color(0XFFF7941E),
        fontSize: 15.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleSmallfff7941e_1 => theme.textTheme.titleSmall!.copyWith(
        color: Color(0XFFF7941E),
      );
}

extension on TextStyle {
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
