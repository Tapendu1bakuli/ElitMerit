import 'package:flutter/material.dart';
import 'package:sizing/sizing.dart';
class CommonCardTablet extends StatelessWidget {
  final  Widget child;
  final  Color? color;
  final  double? verticalPadding;
  const CommonCardTablet({super.key, required this.child ,this.color, this.verticalPadding});

  @override
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
          width: MediaQuery.of(context).size.width,
          padding: EdgeInsets.symmetric(horizontal: 12.ss, vertical: verticalPadding ??12.ss),
          decoration: BoxDecoration(
              border: Border.all(color: Colors.grey.shade300),
              borderRadius: BorderRadius.circular(10.ss), color:color?? Colors.white),
          child: child),

    );
  }
}
