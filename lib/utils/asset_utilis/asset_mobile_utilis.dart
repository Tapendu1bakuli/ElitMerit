import 'dart:typed_data';
import 'package:flutter/services.dart';
import 'dart:async';
import 'dart:ui' as ui;

class ImageUtilsForMobile{

  //static const String landing ="assets/backgrounds/6.png";

}

Future<Uint8List> getBytesFromAsset(String path, int width) async {
  ByteData data = await rootBundle.load(path);
  ui.Codec codec = await ui.instantiateImageCodec(data.buffer.asUint8List(), targetWidth: width);
  ui.FrameInfo fi = await codec.getNextFrame();
  return (await fi.image.toByteData(format: ui.ImageByteFormat.png))!.buffer.asUint8List();
}