import 'dart:ui' as ui;

import 'package:flutter/material.dart';

MediaQueryData mediaQueryData = MediaQueryData.fromView(WidgetsBinding.instance.platformDispatcher.views.single);
Size size = WidgetsBinding.instance.platformDispatcher.views.first.physicalSize /
    WidgetsBinding.instance.platformDispatcher.views.first.devicePixelRatio;

const num FIGMA_DESIGN_WIDTH = 1184;
const num FIGMA_DESIGN_HEIGHT = 832;
const num FIGMA_DESIGN_STATUS_BAR = 0;

///This method is used to get device viewport width.
get tabletWidth {
  return size.width;
}

///This method is used to get device viewport height.
get tabletHeight {
  num statusBar =
      MediaQueryData.fromView(WidgetsBinding.instance.platformDispatcher.views.first).viewPadding.top;
  num bottomBar = MediaQueryData.fromView(WidgetsBinding.instance.platformDispatcher.views.first)
      .viewPadding
      .bottom;
  num screenHeight = size.height - statusBar - bottomBar;
  return screenHeight;
}

///This method is used to set padding/margin (for the left and Right side) & width of the screen or widget according to the Viewport width.
double getTabletHorizontalSize(double px) {
  return ((px * tabletWidth) / FIGMA_DESIGN_WIDTH);
}

///This method is used to set padding/margin (for the top and bottom side) & height of the screen or widget according to the Viewport height.
double getTabletVerticalSize(double px) {
  return ((px * tabletHeight) / (FIGMA_DESIGN_HEIGHT - FIGMA_DESIGN_STATUS_BAR));
}

///This method is used to set smallest px in image height and width
double getTabletSize(double px) {
  var height = getTabletVerticalSize(px);
  var width = getTabletHorizontalSize(px);
  if (height < width) {
    return height.toInt().toDouble();
  } else {
    return width.toInt().toDouble();
  }
}

///This method is used to set text font size according to Viewport
// double getTabletFontSize(double px) {
//   return getTabletSize(px);
// }

double getTabletFontSize(double px) {
  // Calculate scale factors for both width and height
  double widthScale = size.width / FIGMA_DESIGN_WIDTH;
  double heightScale = size.height / FIGMA_DESIGN_HEIGHT;

  // Use the minimum scale factor to maintain aspect ratio
  double scale = widthScale < heightScale ? widthScale : heightScale;

  // Apply scale factor to the provided font size
  return px * scale;
}

///This method is used to set padding responsively
EdgeInsets getTabletPadding({
  double? all,
  double? left,
  double? top,
  double? right,
  double? bottom,
}) {
  return getTabletMarginOrPadding(
    all: all,
    left: left,
    top: top,
    right: right,
    bottom: bottom,
  );
}

///This method is used to set margin responsively
EdgeInsets getTabletMargin({
  double? all,
  double? left,
  double? top,
  double? right,
  double? bottom,
}) {
  return getTabletMarginOrPadding(
    all: all,
    left: left,
    top: top,
    right: right,
    bottom: bottom,
  );
}

///This method is used to get padding or margin responsively
EdgeInsets getTabletMarginOrPadding({
  double? all,
  double? left,
  double? top,
  double? right,
  double? bottom,
}) {
  if (all != null) {
    left = all;
    top = all;
    right = all;
    bottom = all;
  }
  return EdgeInsets.only(
    left: getTabletHorizontalSize(
      left ?? 0,
    ),
    top: getTabletVerticalSize(
      top ?? 0,
    ),
    right: getTabletHorizontalSize(
      right ?? 0,
    ),
    bottom: getTabletVerticalSize(
      bottom ?? 0,
    ),
  );
}

