import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:main/utils/colors/app_colors.dart';
import 'package:sizing/sizing.dart';

class TransactionWidgetMobile extends StatelessWidget {
  const TransactionWidgetMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      // height: 484.ss,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
      ),
      padding: EdgeInsets.all(10.ss),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Container(
                  child: Image.asset(
                      "asset/icons/tablet/first_property_image.png")),
              Positioned(
                  top: 20,
                  left: 10,
                  //right: 20,
                  child: Row(
                    children: [
                      Container(
                        height: 25.ss,
                        width: 25.ss,
                        decoration: BoxDecoration(
                            color: Colors.green,

                            borderRadius: BorderRadius.circular(20)),
                        child: Icon(
                          Icons.favorite_border_rounded,
                          size: 14.ss,
                          color: Colors.white,
                        ),
                      ),
                      Container(
                        width: 10.ss,
                      ),
                      Container(
                        height: 25.ss,
                        width: 25.ss,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20)),
                        child: SvgPicture.asset(
                          "asset/icons/tablet/more-one.svg",
                          color: Colors.black,
                        ),
                      )
                    ],
                  )),
            ],
          ),
          SizedBox(
            height: 14.ss,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 5),
            child: Row(
              children: [
                CircleAvatar(
                  backgroundColor: AppColors.primaryColor,
                  child: SvgPicture.asset("asset/icons/tablet/cal.svg",width: 15.ss,
                  fit: BoxFit.contain,
                  ),
                  radius: 15.ss,
                ),
                SizedBox(width: 5.ss),
                Text(
                  'Date and Time:  ',
                  style: GoogleFonts.poppins(
                    fontSize: 11.fss,
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  '12 Jan 12:32:43',
                  style: GoogleFonts.poppins(
                    fontSize: 11.fss,
                    color: Color(0xff0A2342),
                    fontWeight: FontWeight.normal,
                  ),
                )
              ],
            ),
          ),
          Divider(
            color: Colors.black.withOpacity(0.08),
            thickness: 1,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 5),
            child: Row(
              children: [
                CircleAvatar(
                  backgroundColor: AppColors.primaryColor,
                  child: SvgPicture.asset("asset/icons/tablet/dock.svg",width: 18.ss),
                  radius: 15.ss,
                ),
                SizedBox(width: 5.ss),
                Text(
                  'Current Status:  ',
                  style: GoogleFonts.poppins(
                    fontSize: 11.fss,
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 3),
                  // width: 112.ss,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0xff0A2342),
                  ),
                  child: Center(
                    child: Text(
                      'Under Negotiation',
                      style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontSize: 11.fss,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          Divider(
            color: Colors.black.withOpacity(0.08),
            thickness: 1,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 5),
            child: Row(
              children: [
                CircleAvatar(
                  backgroundColor: AppColors.primaryColor,
                  child: SvgPicture.asset("asset/icons/tablet/roof.svg",width: 12.ss,),
                  radius: 15.ss,
                ),
                SizedBox(width: 5.ss),
                Text(
                  'Property Name :  ',
                  style: GoogleFonts.poppins(
                    fontSize: 11.fss,
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Expanded(
                  child: Text(
                    'Excepteur sint occaecat cupidatat non',
                    style: GoogleFonts.poppins(
                      fontSize: 11.fss,
                      color: Color(0xff0A2342),
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                )
              ],
            ),
          ),
          Divider(
            color: Colors.black.withOpacity(0.08),
            thickness: 1,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 5),
            child: Row(
              children: [
                CircleAvatar(
                  backgroundColor: AppColors.primaryColor,
                  child: SvgPicture.asset("asset/icons/tablet/broker.svg",width: 15.ss,),
                  radius: 15.ss,
                ),
                SizedBox(width: 5.ss),
                Text(
                  'Broker Name: ',
                  style: GoogleFonts.poppins(
                    fontSize: 11.fss,
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  'John Doe',
                  style: GoogleFonts.poppins(
                    fontSize: 11.fss,
                    color: Color(0xff0A2342),
                    fontWeight: FontWeight.normal,
                  ),
                )
              ],
            ),
          ),
          Divider(
            color: Colors.black.withOpacity(0.08),
            thickness: 1,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 5),
            child: Row(
              children: [
                CircleAvatar(
                  backgroundColor: AppColors.primaryColor,
                  child: SvgPicture.asset("asset/icons/tablet/tag.svg",width: 15.ss, ),
                  radius: 15.ss,
                ),
                SizedBox(width: 5.ss),
                Text(
                  'Price: ',
                  style: GoogleFonts.poppins(
                    fontSize: 11.fss,
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  ' 12,000,000 AED',
                  style: GoogleFonts.poppins(
                    fontSize: 11.fss,
                    color: Color(0xff0A2342),
                    fontWeight: FontWeight.normal,
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 10.ss,
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 8),
            padding: EdgeInsets.all(5),
            width: 69.ss,
            decoration: BoxDecoration(
                color: AppColors.primaryColor,
                borderRadius: BorderRadius.circular(50)),
            child: Center(
              child: Text(
                'Sell',
                style: GoogleFonts.poppins(
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                  fontSize: 11.fss,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
