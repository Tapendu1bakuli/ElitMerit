import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:main/utils/colors/app_colors.dart';
import 'package:main/views/transaction/widget/mobile/transaction_widget_mobile.dart';
import 'package:sizing/sizing.dart';

class TransactionHistoryScreenMobile extends StatelessWidget {
  const TransactionHistoryScreenMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        leadingWidth: 200,
        leading: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Row(
            children: [
              GestureDetector(
                  onTap: () => Get.back(),
                  child: Row(
                    children: [
                      Icon(
                        Icons.arrow_back_ios,
                        size: 15,
                      ),
                      Text(
                        'Back',
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
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(color: Color(0xFF1E1E1E).withOpacity(0.1)),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0.ss),
            child: ListView(
              children: [
                Text(
                  'Transaction History',
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.bold,
                      fontSize: 24.fss,
                      color: AppColors.textColor2),
                ),
                SizedBox(height: 15.ss),
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 12.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Sort by',
                              style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w500,
                                fontSize: 12.fss,
                                color: Color(0xff6A6A6A),
                              ),
                            ),
                            IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.keyboard_arrow_down))
                          ],
                        ),
                      ),
                      // SizedBox(height: 5.ss),
                      Divider(
                        color: Colors.black.withOpacity(0.08),
                        thickness: 1,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SvgPicture.asset('asset/icons/tablet/filter.svg'),
                            SizedBox(
                              width: 5.ss,
                            ),
                            Text(
                              'Filter',
                              style: GoogleFonts.poppins(
                                color: Color(0xff929FAD),
                                fontWeight: FontWeight.normal,
                                fontSize: 12.fss,
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 10.ss),
                ListView.builder(
                    physics: ClampingScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: 4,
                    itemBuilder: (context, index) {
                      return TransactionWidgetMobile();
                    })
              ],
            ),
          ),
        ),
      ),
    );
  }
}
