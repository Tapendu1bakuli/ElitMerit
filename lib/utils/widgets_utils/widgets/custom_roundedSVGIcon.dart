import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sizing/sizing.dart';


class CustomRoundedSVGIcon extends StatelessWidget {
  final String assetName;
  final Gradient? gradient;

  CustomRoundedSVGIcon({Key? key, required this.assetName, this.gradient}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: Colors.transparent,
      radius: 20,
      child: Container(
        height: 23.ss, // Specify the desired height of the SVG icon
        width: 23.ss,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          gradient: gradient ??
              const LinearGradient(
                colors: [Color(0xFF50C878), Color(0xFF50C878)],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
        ),
        padding: EdgeInsets.all(6.ss),
        child: CircleAvatar(
          backgroundColor: Colors.transparent,
          radius: 18,
          child: Center(
            child: SizedBox(
              height: 13.ss, // Specify the desired height of the SVG icon
              width: 13.ss, // Specify the desired width of the SVG icon
              child: SvgPicture.asset(
                assetName,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
