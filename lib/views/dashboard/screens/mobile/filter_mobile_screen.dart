import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:main/views/dashboard/widget/mobile/filter_widget.dart';
import 'package:sizing/sizing.dart';


class FilterMobile extends StatelessWidget {
  const FilterMobile({super.key});

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        leadingWidth: 200,
        leading: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5.0),
          child: Row(
            children: [
              GestureDetector(
                  onTap: () => Get.back(),
                  child: Row(
                    children: [
                      SvgPicture.asset(
                        height: 25.ss,
                        width:  25.ss,
                         "asset/icons/tablet/filter_back_arrow_mobile.svg",
                      ),
                      SizedBox(width: 10.ss,),
                      Text(
                        'Filter',
                        style: GoogleFonts.poppins(
                          fontSize: 14.ss,
                        ),
                      ),
                    ],
                  )),
            ],
          ),
        ),
        backgroundColor: Color(0xFF1E1E1E).withOpacity(0.1),
        elevation: 0,
      ),
      body: FilterWidget(),
    );
  }


}
