import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:main/utils/core/utils/updated_size_utils.dart';
import 'package:sizing/sizing.dart';

import '../../../../device_manger/screen_constants.dart';
import '../../../../utils/colors/app_colors.dart';
import '../../widget/mobile/current_details_inProgress_mobile.dart';



class CurrentDealsInProgressMobileScreen extends StatelessWidget {
  const CurrentDealsInProgressMobileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    print("Mobile");
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF1E1E1E).withOpacity(0.1),
        leadingWidth: 100.ss,
        leading: Row(
          children: [
            Container(
              width: 10.ss,
            ),
            InkWell(
              onTap: () {
                Get.back();
              },
              child: const Icon(Icons.arrow_back_ios_new_rounded),
            ),
            Container(
              width: 10.ss,
            ),
            Text(
              "Back",
              style:
              GoogleFonts.poppins(textStyle: TextStyle(fontSize: 16.ss)),
            ),
          ],
        ),
      ),
      body: Container(
        decoration: BoxDecoration(color: Color(0xFF1E1E1E).withOpacity(0.1)),
        child: ListView(children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.ss),
            child: Text("Current Deals in Progress",style: GoogleFonts.poppins(fontSize: 20.fss,fontWeight: FontWeight.w800),),
          ),
          Container(
            height: 10.ss,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.ss),
            child: TextFormField(
              readOnly: true,
              controller: TextEditingController(),
              keyboardType: TextInputType.emailAddress,
              autofocus: false,
              maxLines: 1,
              cursorColor: AppColors.primaryColor,
              textInputAction: TextInputAction.next,
              autovalidateMode: AutovalidateMode.onUserInteraction,
              style: TextStyle(
                  color: const Color(0xFF111A24),
                  fontSize: 14.fss,
                  fontFamily: 'Gordita'),
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                hintText: "Sort by",
                hintStyle: TextStyle(
                  color: const Color(0xFF6A6A6A),
                  fontSize: 12.fss,
                ),
                errorStyle: TextStyle(
                    color: const Color(0xFFE8503A),
                    fontSize: 12.fss,
                    fontFamily: 'Gordita'),
                suffixIcon: Padding(
                  padding: EdgeInsets.only(right: 10.0.ss),
                  child: Icon(
                    Icons.keyboard_arrow_down_rounded,
                    color: Color(0xFF0A2342),
                    size: 16.ss,
                  ),
                ),
                contentPadding: EdgeInsets.all(ScreenConstant.sizeMedium),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  borderSide: BorderSide(
                      color: AppColors.primaryColor,
                      width: 1,
                      style: BorderStyle.solid),
                ),
                disabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  borderSide: BorderSide(
                      color: Color(0xFFC4C4C4),
                      width: 1,
                      style: BorderStyle.solid),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(10.ss),topRight: Radius.circular(10.ss)),
                  borderSide: BorderSide(
                      color: Color(0xFFC4C4C4),
                      width: 1,
                      style: BorderStyle.solid),
                ),
                errorBorder: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  borderSide: BorderSide(
                      color: Color(0xFFE8503A),
                      width: 1,
                      style: BorderStyle.solid),
                ),
                focusedErrorBorder: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  borderSide: BorderSide(
                      color: Color(0xFFE8503A),
                      width: 1,
                      style: BorderStyle.solid),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 21.ss),
            child: Container(
              height: 35.ss,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(bottomRight: Radius.circular(10.ss),bottomLeft: Radius.circular(10.ss))),
              child: Row(mainAxisAlignment:MainAxisAlignment.center,children: [
                Image.asset("asset/icons/tablet/filter.png"),
                Container(width: 5.ss,),
                Text(
                  "Filter",
                  style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                          color: Color(0xFF929FAD), fontSize: 10.fss)),
                )
              ],),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.ss),
            child: ListView.builder(
              shrinkWrap: true,
              physics: ClampingScrollPhysics(),
              itemCount: 15,
              itemBuilder: (ctx, index) => CurrentDetailsInProgressCardMobile(),
            ),
          ),
          // ListView.count(
          //     shrinkWrap: true,
          //     crossAxisCount: isLandscape ? 1 : 2,
          //     children: List.generate(15, (index) {
          //       return CurrentDetailsInProgressCardTablet();
          //     })),
        ],),
      ),
    );
  }
}
