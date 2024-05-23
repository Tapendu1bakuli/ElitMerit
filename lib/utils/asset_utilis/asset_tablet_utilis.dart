import 'dart:typed_data';
import 'package:flutter/services.dart';
import 'dart:async';
import 'dart:ui' as ui;

class ImageUtilsForTablet{

  static const String splash ="asset/images/tablet/splasg_logo_tablet.png";
  static const String splashLogo ="asset/images/tablet/elite_merit_logo_tablet.png";
  static const String splashImage ="asset/images/tablet/elite_merit_image_tablet.png";
  static const String universalBackgroundImage ="asset/images/tablet/universal_background_image_tablet.png";
  static const String universalBackgroundImageTabletPortrait ="asset/icons/tablet/tablet_portrait_background.png";
  static const String webForgotPasswordBackgroundImage ="asset/images/tablet/webForgotPasswordBackgroundImage.png";

}

Future<Uint8List> getBytesFromAsset(String path, int width) async {
  ByteData data = await rootBundle.load(path);
  ui.Codec codec = await ui.instantiateImageCodec(data.buffer.asUint8List(), targetWidth: width);
  ui.FrameInfo fi = await codec.getNextFrame();
  return (await fi.image.toByteData(format: ui.ImageByteFormat.png))!.buffer.asUint8List();
}