import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:main/views/dashboard/widget/mobile/progress_detail_widget.dart';
import 'package:sizing/sizing_extension.dart';

class ProgressDetailMobile extends StatelessWidget {
  const ProgressDetailMobile({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Transform.translate(
          offset: Offset(-20.ss,0),
          child: Text(
            'Back',
            style: GoogleFonts.poppins(
              fontSize: 14.ss,
            ),
          ),
        ),
        leading: GestureDetector(
          onTap: () => Get.back(),
          child:   const Icon(Icons.arrow_back_ios_new_rounded),),
        backgroundColor: const Color(0xFF1E1E1E).withOpacity(0.1),
        elevation: 0,
      ),
      body:  Container(
        width: Get.width,
        height: Get.height,
        color: const Color(0xFF1E1E1E).withOpacity(0.1),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Detailed On Progress\nDeal Information',
                style: GoogleFonts.poppins(
                    fontSize: 18.ss,
                    fontWeight : FontWeight.bold
                ),
              ),
              SizedBox(height: 20.ss,),
               ProgressDetailWidget(),
            ],
          ).marginOnly(left: 20.ss,right: 20.ss,top: 5.ss,bottom: 20.ss),
        ),
      ),
    );
  }
}
