import 'package:flutter/material.dart';
import 'package:main/utils/core/utils/updated_size_utils.dart';
import 'package:main/utils/theme/theme_helper.dart';

class AppDecoration {
  // Fill decorations
  static BoxDecoration get outlineWhiteA => BoxDecoration(
    color: appTheme.deepOrangeA700,
    border: Border.all(
      color: appTheme.whiteA700,
      width: 1.h,
    ),
  );
  static BoxDecoration get fillBlueGray => BoxDecoration(
        color: appTheme.blueGray100.withOpacity(0.31),
      );
  static BoxDecoration get fillGray => BoxDecoration(
        color: appTheme.gray10001,
      );
  static BoxDecoration get fillGray100 => BoxDecoration(
        color: appTheme.gray100,
      );
  static BoxDecoration get fillGreen => BoxDecoration(
        color: appTheme.green40001,
      );
  static BoxDecoration get fillGreen400 => BoxDecoration(
        color: appTheme.green400,
      );
  static BoxDecoration get fillGreen40001 => BoxDecoration(
        color: appTheme.green40001.withOpacity(0.12),
      );
  static BoxDecoration get fillOnErrorContainer => BoxDecoration(
        color: theme.colorScheme.onErrorContainer,
      );
  static BoxDecoration get fillOnPrimaryContainer => BoxDecoration(
        color: theme.colorScheme.onPrimaryContainer,
      );
  static BoxDecoration get fillPrimary => BoxDecoration(
        color: theme.colorScheme.primary.withOpacity(0.74),
      );
  static BoxDecoration get fillPrimary1 => BoxDecoration(
        color: theme.colorScheme.primary,
      );

  // Gradient decorations
  static BoxDecoration get gradientGreenToOnPrimary => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.14, 0.17),
          end: Alignment(1, 0.77),
          colors: [
            appTheme.green40001,
            theme.colorScheme.onPrimary,
          ],
        ),
      );

  // Outline decorations
  static BoxDecoration get outlineBlack => BoxDecoration(
        color: appTheme.gray50,
        border: Border.all(
          color: appTheme.black900.withOpacity(0.1),
          width: 1.h,
        ),
      );
  static BoxDecoration get outlineBlack900 => BoxDecoration(
        color: theme.colorScheme.onErrorContainer,
        border: Border.all(
          color: appTheme.black900.withOpacity(0.08),
          width: 1.h,
        ),
      );
  static BoxDecoration get outlineBlack9001 => BoxDecoration(
        color: appTheme.gray50,
        border: Border.all(
          color: appTheme.black900.withOpacity(0.11),
          width: 1.h,
        ),
      );
  static BoxDecoration get outlineBlack90010 => BoxDecoration(
        border: Border.all(
          color: appTheme.black900.withOpacity(0.06),
          width: 1.h,
        ),
      );
  static BoxDecoration get outlineBlack90011 => BoxDecoration(
        color: theme.colorScheme.primary,
        border: Border.all(
          color: appTheme.black900.withOpacity(0.03),
          width: 1.h,
        ),
      );
  static BoxDecoration get outlineBlack90012 => BoxDecoration(
        color: appTheme.gray50,
        border: Border.all(
          color: appTheme.black900.withOpacity(0.08),
          width: 1.h,
        ),
      );
  static BoxDecoration get outlineBlack9002 => BoxDecoration(
        color: theme.colorScheme.onErrorContainer,
      );
  static BoxDecoration get outlineBlack9003 => BoxDecoration(
        color: theme.colorScheme.onErrorContainer,
        boxShadow: [
          BoxShadow(
            color: appTheme.black900.withOpacity(0.19),
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              0,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineBlack9004 => BoxDecoration(
        color: theme.colorScheme.onErrorContainer,
        boxShadow: [
          BoxShadow(
            color: appTheme.black900.withOpacity(0.17),
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              0,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineBlack9005 => BoxDecoration(
        color: theme.colorScheme.onErrorContainer,
        boxShadow: [
          BoxShadow(
            color: appTheme.black900.withOpacity(0.18),
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              0,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineBlack9006 => BoxDecoration();
  static BoxDecoration get outlineBlack9007 => BoxDecoration();
  static BoxDecoration get outlineBlack9008 => BoxDecoration(
        color: theme.colorScheme.onErrorContainer,
        border: Border.all(
          color: appTheme.black900.withOpacity(0.17),
          width: 1.h,
        ),
      );
  static BoxDecoration get outlineBlack9009 => BoxDecoration(
        border: Border.all(
          color: appTheme.black900.withOpacity(0.17),
          width: 1.h,
        ),
      );
  static BoxDecoration get outlineBlueGray => BoxDecoration(
        color: appTheme.gray50,
        border: Border.all(
          color: appTheme.blueGray100,
          width: 1.h,
          strokeAlign: strokeAlignCenter,
        ),
        boxShadow: [
          BoxShadow(
            color: appTheme.blueGray90002.withOpacity(0.03),
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              0,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineDeepOrangeA => BoxDecoration(
        color: theme.colorScheme.onErrorContainer,
        border: Border.all(
          color: appTheme.deepOrangeA700,
          width: 1.h,
        ),
      );
  static BoxDecoration get outlineGray => BoxDecoration(
        color: theme.colorScheme.onErrorContainer,
        border: Border.all(
          color: appTheme.gray20001,
          width: 1.h,
        ),
      );
  static BoxDecoration get outlineGray400 => BoxDecoration(
        color: theme.colorScheme.onErrorContainer,
        border: Border.all(
          color: appTheme.gray400,
          width: 1.h,
        ),
      );
  static BoxDecoration get outlineGreen => BoxDecoration(
        color: theme.colorScheme.onErrorContainer,
        border: Border.all(
          color: appTheme.green40001,
          width: 1.h,
          strokeAlign: strokeAlignCenter,
        ),
        boxShadow: [
          BoxShadow(
            color: appTheme.blueGray90002.withOpacity(0.03),
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              0,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineGreen40001 => BoxDecoration(
        color: appTheme.green40001,
        border: Border.all(
          color: appTheme.green40001,
          width: 1.h,
        ),
      );
  static BoxDecoration get outlineOnErrorContainer => BoxDecoration(
        color: appTheme.green40001,
        border: Border.all(
          color: theme.colorScheme.onErrorContainer,
          width: 1.h,
        ),
      );
  static BoxDecoration get outlineOnErrorContainer1 => BoxDecoration(
        color: appTheme.green40001,
        border: Border.all(
          color: theme.colorScheme.onErrorContainer,
          width: 2.h,
        ),
      );
  static BoxDecoration get outlineOnErrorContainer2 => BoxDecoration(
        color: appTheme.deepOrangeA700,
        border: Border.all(
          color: theme.colorScheme.onErrorContainer,
          width: 1.h,
        ),
      );
  static BoxDecoration get outlinePrimary => BoxDecoration(
        border: Border.all(
          color: theme.colorScheme.primary,
          width: 1.h,
        ),
      );
  static BoxDecoration get outlinePrimary1 => BoxDecoration(
        color: theme.colorScheme.onErrorContainer,
        border: Border.all(
          color: theme.colorScheme.primary,
          width: 1.h,
          strokeAlign: strokeAlignCenter,
        ),
        boxShadow: [
          BoxShadow(
            color: appTheme.blueGray90002.withOpacity(0.03),
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              0,
            ),
          ),
        ],
      );
}

class BorderRadiusStyle {
  // Circle borders
  static BorderRadius get roundedBorder7 => BorderRadius.circular(
    7.h,
  );
  static BorderRadius get circleBorder119 => BorderRadius.circular(
        119.h,
      );
  static BorderRadius get circleBorder150 => BorderRadius.circular(
        150.h,
      );
  static BorderRadius get circleBorder67 => BorderRadius.circular(
        67.h,
      );
  static BorderRadius get circleBorder85 => BorderRadius.circular(
        85.h,
      );

  // Custom borders
  static BorderRadius get customBorderBL10 => BorderRadius.only(
        topRight: Radius.circular(10.h),
        bottomLeft: Radius.circular(10.h),
        bottomRight: Radius.circular(10.h),
      );
  static BorderRadius get customBorderBL50 => BorderRadius.only(
        topLeft: Radius.circular(16.h),
        topRight: Radius.circular(11.h),
        bottomLeft: Radius.circular(50.h),
        bottomRight: Radius.circular(2.h),
      );
  static BorderRadius get customBorderBR10 => BorderRadius.only(
        bottomRight: Radius.circular(10.h),
      );
  static BorderRadius get customBorderTL10 => BorderRadius.only(
        topLeft: Radius.circular(10.h),
      );

  // Rounded borders
  static BorderRadius get roundedBorder10 => BorderRadius.circular(
        10.h,
      );
  static BorderRadius get roundedBorder16 => BorderRadius.circular(
        16.h,
      );
  static BorderRadius get roundedBorder2 => BorderRadius.circular(
        2.h,
      );
  static BorderRadius get roundedBorder5 => BorderRadius.circular(
        5.h,
      );
}

// Comment/Uncomment the below code based on your Flutter SDK version.

// For Flutter SDK Version 3.7.2 or greater.

double get strokeAlignInside => BorderSide.strokeAlignInside;

double get strokeAlignCenter => BorderSide.strokeAlignCenter;

double get strokeAlignOutside => BorderSide.strokeAlignOutside;

// For Flutter SDK Version 3.7.1 or less.

// StrokeAlign get strokeAlignInside => StrokeAlign.inside;
//
// StrokeAlign get strokeAlignCenter => StrokeAlign.center;
//
// StrokeAlign get strokeAlignOutside => StrokeAlign.outside;
