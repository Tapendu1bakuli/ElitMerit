import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizing/sizing.dart';

class ElevatedButtonWidgetTablet extends StatelessWidget {
  String? image;
  String? name;
  Color? color;
  Function()? onTap;

  ElevatedButtonWidgetTablet(
      {Key? key, required this.onTap, required this.image, required this.name,required this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 12.0.ss),
      child: InkWell(
        onTap: onTap,
        child: Container(
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(15.ss),color:color?? Colors.grey,),
          child: Center(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.0.ss),
              child: FittedBox(
                child: Text(
                                name ?? "",
                                style: GoogleFonts.poppins(
                  textStyle: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 15.fss,
                      color: Colors.white)),
                              ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
