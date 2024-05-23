import 'dart:ui' as ui;

import 'package:flutter/material.dart';

MediaQueryData mediaQueryData = MediaQueryData.fromView(WidgetsBinding.instance.platformDispatcher.views.single);
Size size = WidgetsBinding.instance.platformDispatcher.views.first.physicalSize /
    WidgetsBinding.instance.platformDispatcher.views.first.devicePixelRatio;

const num FIGMA_DESIGN_WIDTH = 1440;
const num FIGMA_DESIGN_HEIGHT = 1024;
const num FIGMA_DESIGN_STATUS_BAR = 0;

///This method is used to get device viewport width.
get webWidth {
  return size.width;
}

///This method is used to get device viewport height.
get webHeight {
  num statusBar =
      MediaQueryData.fromView(WidgetsBinding.instance.platformDispatcher.views.first).viewPadding.top;
  num bottomBar = MediaQueryData.fromView(WidgetsBinding.instance.platformDispatcher.views.first)
      .viewPadding
      .bottom;
  num screenHeight = size.height - statusBar - bottomBar;
  return screenHeight;
}

///This method is used to set padding/margin (for the left and Right side) & width of the screen or widget according to the Viewport width.
double getWebHorizontalSize(double px) {
  return ((px * webWidth) / FIGMA_DESIGN_WIDTH);
}

///This method is used to set padding/margin (for the top and bottom side) & height of the screen or widget according to the Viewport height.
double getWebVerticalSize(double px) {
  return ((px * webHeight) / (FIGMA_DESIGN_HEIGHT - FIGMA_DESIGN_STATUS_BAR));
}

///This method is used to set smallest px in image height and width
double getWebSize(double px) {
  var height = getWebVerticalSize(px);
  var width = getWebHorizontalSize(px);
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

double getWebFontSize(double px) {
  // Calculate scale factors for both width and height
  double widthScale = size.width / FIGMA_DESIGN_WIDTH;
  double heightScale = size.height / FIGMA_DESIGN_HEIGHT;

  // Use the minimum scale factor to maintain aspect ratio
  double scale = widthScale < heightScale ? widthScale : heightScale;

  // Apply scale factor to the provided font size
  return px * scale;
}

///This method is used to set padding responsively
EdgeInsets getWebPadding({
  double? all,
  double? left,
  double? top,
  double? right,
  double? bottom,
}) {
  return getWebMarginOrPadding(
    all: all,
    left: left,
    top: top,
    right: right,
    bottom: bottom,
  );
}

///This method is used to set margin responsively
EdgeInsets getWebMargin({
  double? all,
  double? left,
  double? top,
  double? right,
  double? bottom,
}) {
  return getWebMarginOrPadding(
    all: all,
    left: left,
    top: top,
    right: right,
    bottom: bottom,
  );
}

///This method is used to get padding or margin responsively
EdgeInsets getWebMarginOrPadding({
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
    left: getWebHorizontalSize(
      left ?? 0,
    ),
    top: getWebVerticalSize(
      top ?? 0,
    ),
    right: getWebHorizontalSize(
      right ?? 0,
    ),
    bottom: getWebVerticalSize(
      bottom ?? 0,
    ),
  );
}

