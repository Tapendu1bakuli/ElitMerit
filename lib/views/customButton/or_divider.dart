import 'package:flutter/material.dart';
import 'package:main/main.dart';
import 'package:main/utils/size_utils.dart';

class OrDivider extends StatelessWidget {
  const OrDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(
      children: <Widget>[
        const Expanded(
          child: Divider(
            color: Color(0xFFD9D9D9),
            height: 1.5,
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: SizeUtils.getDeviceSize(18,isTablet: tablet)),
          child:  Text(
            'or',
            style: TextStyle(
              color: const Color(0xFF6E6E6E),
              fontWeight: FontWeight.bold,
              fontSize: SizeUtils.getDeviceFontSize(18,isTablet: tablet)
            ),
          ),
        ),
        const Expanded(
          child: Divider(
            color: Color(0xFFD9D9D9),
            height: 1.5,
          ),
        ),
      ],
    );
  }
}
