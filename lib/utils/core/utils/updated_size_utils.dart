import 'dart:ui' as ui;
import 'package:flutter/material.dart';

import '../../../main.dart';

typedef ResponsiveBuild = Widget Function(
    BuildContext context,
    Orientation orientation,
    DeviceType deviceType,
    );

class Sizer extends StatelessWidget {
  const Sizer({
    Key? key,
    required this.builder,
  }) : super(key: key);

  final ResponsiveBuild builder;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return OrientationBuilder(builder: (context, orientation) {
        SizeUtils.setScreenSize(constraints, orientation);
        return builder(context, orientation, SizeUtils.deviceType);
      });
    });
  }
}

class SizeUtils {
  static late BoxConstraints boxConstraints;
  static late Orientation orientation;
  static late DeviceType deviceType;
  static late double height;
  static late double width;
  static late num figmaDesignWidth;
  static late num figmaDesignHeight;

  static num figmaDesignStatusBar=0;

  static void setScreenSize(
      BoxConstraints constraints,
      Orientation currentOrientation,
      ) {
    boxConstraints = constraints;
    orientation = currentOrientation;

    if (orientation == Orientation.portrait) {
      width = boxConstraints.maxWidth.isNonZero(
        defaultValue: deviceType == DeviceType.tablet ? figmaDesignWidth : 434,
      );
      height = boxConstraints.maxHeight.isNonZero();
    } else {
      width = boxConstraints.maxHeight.isNonZero(defaultValue: figmaDesignWidth);
      height = boxConstraints.maxWidth.isNonZero();
    }
  }

  static void initialize({
    required num figmaWidth,
    required num figmaHeight,
  }) {
    figmaDesignWidth = figmaWidth;
    figmaDesignHeight = figmaHeight;
    // Initialize deviceType
    deviceType = DeviceType.mobile;
  }
}

extension ResponsiveExtension on num {
  double get _width => SizeUtils.width;
  double get _height => SizeUtils.height;

  double get h => ((this * _width) / SizeUtils.figmaDesignWidth);
  double get v =>
      (this * _height) / (SizeUtils.figmaDesignHeight - SizeUtils.figmaDesignStatusBar);

  double get adaptSize {
    var height = v;
    var width = h;
    return height < width ? height.toDoubleValue() : width.toDoubleValue();
  }

  double get fSize => adaptSize;
}

extension FormatExtension on double {
  double toDoubleValue({int fractionDigits = 2}) {
    return double.parse(this.toStringAsFixed(fractionDigits));
  }

  double isNonZero({num defaultValue = 0.0}) {
    return this > 0 ? this : defaultValue.toDouble();
  }
}

enum DeviceType { mobile, tablet, desktop }