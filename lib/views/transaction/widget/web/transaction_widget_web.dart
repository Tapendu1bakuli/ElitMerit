import 'package:flutter/material.dart';
import 'package:flutter_layout_grid/flutter_layout_grid.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:main/device_manger/screen_constants.dart';
import 'package:main/utils/colors/app_colors.dart';
import 'package:main/utils/core/utils/updated_size_utils.dart';
import 'package:main/utils/tablet_size_utils.dart';
import 'package:main/utils/theme/custom_button_style.dart';
import 'package:main/utils/theme/custom_text_style.dart';
import 'package:main/utils/widgets_utils/widgets/custom_elevated_button.dart';
import 'package:main/utils/widgets_utils/widgets/custom_roundedSVGIcon.dart';
import 'package:main/utils/widows_size_utilis.dart';
import 'package:sizing/sizing.dart';
import 'package:flutter/material.dart';



class ResponsiveLayoutWeb extends StatelessWidget {
  ResponsiveLayoutWeb({
    super.key,
    required this.viewportWidth,
  });

  final double viewportWidth;
  final GlobalKey _containerKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return
      Scaffold(
        extendBodyBehindAppBar: false,
          appBar: AppBar(
            scrolledUnderElevation: 0.0,
            leadingWidth: 200,
            centerTitle: true,
            title: Text(
              'Transaction History',
              style: CustomTextStyles.bold32Tablet,
            ),
            leading: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Row(
                children: [
                  GestureDetector(
                      onTap: () => Get.back(),
                      child: Row(
                        children: [
                          Icon(
                            Icons.arrow_back_ios,
                            size: getWebSize(24),
                          ),
                          Text(
                            'Back',
                            style: CustomTextStyles.regular18232323WithOutOpacityTablet,
                          ),
                        ],
                      )),
                ],
              ),
            ),
            backgroundColor: AppColors.webBgColor,
            elevation: 0,
          ),
        body:
        Container(
          decoration: const BoxDecoration(color: AppColors.webBgColor),
          child: Padding( padding: EdgeInsets.symmetric(horizontal: 20.0.ss),child: Center(
              child:
              SingleChildScrollView(
                child: Column(children: [
                  SizedBox(height: getWebSize(40),),
                  Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      children: [
                        
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16.0),
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
                        
                  Container(height: 15.v),
                        
                  ClipRRect(borderRadius: BorderRadius.circular(10), child: Container(
                    color: const Color(0xffF5F5F5),
                    // color: Colors.grey[400],
                    key: _containerKey,
                        
                    child: LayoutGrid(
                      columnSizes: [1.fr, 1.fr,1.fr],
                      rowSizes: [
                        if (viewportWidth > 600) ...[
                          auto, // Let the height be determined by the content
                          auto,
                          auto,
                        ] else if (viewportWidth > 400) ...[
                          800.px,
                          800.px,
                          800.px,
                        ] else ...[
                          auto, // Let the height be determined by the content
                          auto,
                          auto,
                        ]
                      ],
                      columnGap: 10.0, // Horizontal gap between grid items
                      rowGap: 10.0,    // Vertical gap between grid items
                      children: List.generate(
                          6,
                              (index) =>
                              ClipRRect(borderRadius: BorderRadius.circular(10),
                                  child:  Container(
                                    // color: const Color(0xffF5F5F5),
                                      decoration: BoxDecoration(
                                        borderRadius:
                                        BorderRadius.circular(20), // Adjust as needed
                                        // Example color for the first container
                                      ),
                                      child:Container(
                                          color: Colors.white,
                                          padding: EdgeInsets.all(10),
                                          child:Column(children: [
                                            Stack(
                                              children: [
                                                InkWell(
                                                  borderRadius: BorderRadius.circular(20),
                                                  onTap: () {
                                                    // Add onTap action if needed
                                                  },
                                                  child: Container(
                                                    width: double.maxFinite,
                                                    padding:
                                                    EdgeInsets.only( right: 10.h, top: 5.v,bottom: 15.v),
                                                    decoration: BoxDecoration(
                                                      borderRadius:
                                                      BorderRadius.circular(20), // Adjust as needed
                                                      // Example color for the first container
                                                    ),
                                                    child: Image.asset(
                                                      "asset/icons/tablet/first_property_image.png",
                                                      // Image asset path
                                                      fit: BoxFit.fill, // Adjust as needed
                                                    ),
                                                  ),
                                                ),
                        
                                                Positioned(
                                                    top: 20,
                                                    left: 30,
                                                    child: Row(
                                                      children: [
                                                        Container(
                                                          height: 20.ss,
                                                          width: 20.ss,
                                                          decoration: BoxDecoration(
                                                              color: Colors.green,
                                                              borderRadius: BorderRadius.circular(20)),
                                                          child: Center(
                                                            child: Icon(
                                                              Icons.favorite_border_rounded,
                                                              size: 19,
                                                              color: Colors.white,
                                                            ),
                                                          ),
                                                        ),
                                                        Container(
                                                          width: 10.ss,
                                                        ),
                                                        Container(
                                                          height: 20.ss,
                                                          width: 20.ss,
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
                        
                                            Flexible(child: Row(mainAxisAlignment: MainAxisAlignment.start,children: [
                        
                                              CustomRoundedSVGIcon(assetName: "asset/icons/tablet/cal.svg",),
                        
                        
                                              SizedBox(width: 20.h,),
                                              RichText(
                                                text: TextSpan(
                                                  children: [
                        
                                                    TextSpan(
                                                      text: 'Data and Time : ',
                                                      style: GoogleFonts.poppins(
                                                        fontSize: 10.fss,
                                                        color: Color(0xff0A2342),
                                                        fontWeight: FontWeight.bold,
                                                      ),
                                                    ),
                                                    TextSpan(
                                                      text: '12 Jan 12:32:43',
                                                      style: GoogleFonts.poppins(
                                                        fontSize: 10.fss,
                                                        color: Color(0xff0A2342),
                                                        fontWeight: FontWeight.normal,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],),),
                                            Divider(
                                              color: Colors.black.withOpacity(0.08),
                                              thickness: 1,
                                            ),
                        
                        
                                            Flexible(
                                              child: Row(
                                                children: [
                        
                                                  CustomRoundedSVGIcon(assetName: "asset/icons/tablet/dock.svg",),
                                                  SizedBox(width: 20.h),
                                                  Flexible(
                                                    child: RichText(
                                                      text: TextSpan(
                                                        style: GoogleFonts.poppins(
                                                          fontSize: 10.fss,
                                                          color: Colors.black,
                                                          fontWeight: FontWeight.w600,
                                                        ),
                                                        children: [
                                                          WidgetSpan(
                                                            child: Row(
                                                              children: [
                                                                Text(
                                                                  'Current Status:  ',
                                                                  style: GoogleFonts.poppins(
                                                                    fontSize: 10.fss,
                                                                    color: Color(0xff0A2342),
                                                                    fontWeight: FontWeight.bold,
                                                                  ),
                                                                ),
                                                                Flexible(
                                                                  child: Container(
                                                                    constraints: const BoxConstraints(maxWidth: 200),
                                                                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                                                                    decoration: BoxDecoration(
                                                                      borderRadius: BorderRadius.circular(15),
                                                                      color: Color(0xff0A2342),
                                                                    ),
                                                                    child: Center(
                                                                      child: Text(
                                                                        'Under Negotiation',
                                                                        style: GoogleFonts.poppins(
                                                                          color: Colors.white,
                                                                          fontSize: 9.fss,
                                                                          fontWeight: FontWeight.normal,
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                        
                                            Divider(
                                              color: Colors.black.withOpacity(0.08),
                                              thickness: 1,
                                            ),
                                            Flexible(child: Row(children: [
                                              CustomRoundedSVGIcon(assetName: "asset/icons/tablet/roof.svg",),
                        
                                              SizedBox(width: 20.h,),
                                              Flexible(child: RichText(
                                                text: TextSpan(
                                                  children: [
                        
                                                    TextSpan(
                                                      text: 'Property Name : ',
                                                      style: GoogleFonts.poppins(
                                                        fontSize: 10.fss,
                                                        color: Color(0xff0A2342),
                                                        fontWeight: FontWeight.bold,
                                                      ),
                                                    ),
                        
                                                    TextSpan(
                                                      text: 'Excepteur sint occaecat cupidatat non',
                                                      style: GoogleFonts.poppins(
                                                          fontSize: 10.fss,
                                                          color: Color(0xff0A2342),
                                                          fontWeight: FontWeight.bold
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ))
                                              ,
                                            ],),),
                                            Divider(
                                              color: Colors.black.withOpacity(0.08),
                                              thickness: 1,
                                            ),
                                            Flexible(child: Row(children: [
                        
                                              CustomRoundedSVGIcon(assetName: "asset/icons/tablet/broker.svg",),
                        
                                              SizedBox(width: 20.h,),
                                              RichText(
                                                text: TextSpan(
                                                  children: [
                        
                                                    TextSpan(
                                                      text: 'Broker Name : ',
                                                      style: GoogleFonts.poppins(
                                                        fontSize: 10.fss,
                                                        color: Color(0xff0A2342),
                                                        fontWeight: FontWeight.bold,
                                                      ),
                                                    ),
                                                    TextSpan(
                                                      text: 'John Doe',
                                                      style: GoogleFonts.poppins(
                                                        fontSize: 10.fss,
                                                        color: Color(0xff0A2342),
                                                        fontWeight: FontWeight.normal,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],),),
                                            Divider(
                                              color: Colors.black.withOpacity(0.08),
                                              thickness: 1,
                                            ),
                                            Flexible(child: Row(children: [
                        
                                              CustomRoundedSVGIcon(assetName: "asset/icons/tablet/tag.svg",),
                        
                                              SizedBox(width: 20.h,),
                                              RichText(
                                                text: TextSpan(
                                                  children: [
                        
                                                    TextSpan(
                                                      text: 'Price : ',
                                                      style: GoogleFonts.poppins(
                                                        fontSize: 10.fss,
                                                        color: Color(0xff0A2342),
                                                        fontWeight: FontWeight.bold,
                                                      ),
                                                    ),
                                                    TextSpan(
                                                      text: '12,000,000 AED',
                                                      style: GoogleFonts.poppins(
                                                        fontSize: 10.fss,
                                                        color: Color(0xff0A2342),
                                                        fontWeight: FontWeight.normal,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],),),
                                            Divider(
                                              color: Colors.black.withOpacity(0.08),
                                              thickness: 1,
                                            ),
                                            Flexible(child:  Row(
                                              children: [
                                                Container(
                                                  //margin: EdgeInsets.symmetric(vertical: 12),
                                                  padding: EdgeInsets.symmetric(horizontal: 30.v,vertical: 10.h),
                                                  decoration: BoxDecoration(
                                                    color: AppColors.primaryColor,
                                                    borderRadius: BorderRadius.circular(50),
                                                  ),
                                                  child: Center(
                                                    child: Text(
                                                      'Sell',
                                                      style: GoogleFonts.poppins(
                                                        color: Colors.white,
                                                        fontWeight: FontWeight.w500,
                                                        fontSize: 10.fss,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                        
                                              ],
                                            ),),
                        
                        
                                          ],))))
                        
                      ),
                    ),
                  ),)
                  ,
                ],),
              )
        
          ),),
        )
        ,
      )
    ;
  }
}