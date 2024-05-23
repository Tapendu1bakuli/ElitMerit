import 'package:flutter/material.dart';
import 'package:flutter_layout_grid/flutter_layout_grid.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hive/hive.dart';
import 'package:main/utils/core/utils/updated_size_utils.dart';
import 'package:main/utils/phone_size_utils.dart';
import 'package:main/utils/tablet_size_utils.dart';
import 'package:main/utils/theme/custom_text_style.dart';
import 'package:sizing/sizing.dart';

import '../../../../device_manger/screen_constants.dart';
import '../../../../utils/colors/app_colors.dart';
import '../../../../utils/theme/theme_helper.dart';
import '../../../../utils/widgets_utils/widgets/custom_roundedSVGIcon.dart';
import '../../widget/mobile/current_details_inProgress_mobile.dart';
import '../../widget/tablet/current_deals_inProgress_portrait_tablet.dart';








class CurrentDealsInProgressTabletScreen extends StatelessWidget {
  CurrentDealsInProgressTabletScreen({Key? key, required this.isTabletScreen}) : super(key: key);
  bool isTabletScreen;
  @override
  Widget build(BuildContext context) {
    return


      LayoutBuilder(builder: (_, constraints) {

        return
          CurrentDealsInProgressResponsiveLayout(viewportWidth: constraints.maxWidth,isTabletScreen:isTabletScreen);
      });


  }
}


class CurrentDealsInProgressResponsiveLayout extends StatelessWidget {
  CurrentDealsInProgressResponsiveLayout({
    super.key,
    required this.viewportWidth, required this.isTabletScreen
  });

  final double viewportWidth;
  final GlobalKey _containerKey = GlobalKey();
  bool isTabletScreen;
  @override
  Widget build(BuildContext context) {
    print("tablet");
    bool? isLandscape =
        MediaQuery.of(context).orientation == Orientation.portrait;
    print("Landscape:$isLandscape");
    return
      isLandscape?Scaffold(
        appBar: AppBar(
          scrolledUnderElevation: 0.0,
          leadingWidth: 80.ss,
          centerTitle: true,
          title: Text(
            'Current Deals in Progress',
            style: CustomTextStyles.bold32Tablet,
          ),
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
                          size: isTabletScreen ? getTabletSize(24) : getSize(24),
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
          backgroundColor: Color(0xFF1E1E1E).withOpacity(0.1),
          elevation: 0,
        ),
        body:Container(
          decoration: BoxDecoration(color: Color(0xFF1E1E1E).withOpacity(0.1)),
          child: ListView(children: [
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
                itemBuilder: (ctx, index) => CurrentDetailsInProgressCardPortraitTablet(),
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
      ):Scaffold(
        extendBodyBehindAppBar: false,
        appBar: AppBar(
          scrolledUnderElevation: 0.0,
          leadingWidth: 200,
          centerTitle: true,
          title: Text(
            'Current Deals in Progress',
            style: CustomTextStyles.bold32Tablet,
          ),
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
                          size: isTabletScreen ? getTabletSize(24) : getSize(24),
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
          backgroundColor: Color(0xFF1E1E1E).withOpacity(0.1),
          elevation: 0,
        ),
        body:
        SingleChildScrollView(child:
        Container(
          decoration: BoxDecoration(color: Color(0xFF1E1E1E).withOpacity(0.1)),
          child: Padding( padding: EdgeInsets.symmetric(horizontal: 20.0.ss),child: Center(
              child:
              Column(children: [
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

                // Center(
                //   child: Column(
                //     mainAxisAlignment: MainAxisAlignment.center,
                //     children: [
                //       Text(
                //         'Screen Width: ${MediaQuery.of(context).size.width.toStringAsFixed(2)}',
                //         style: TextStyle(fontSize: 20),
                //       ),
                //       SizedBox(height: 20),
                //       Text(
                //         'Screen Height: ${MediaQuery.of(context).size.height.toStringAsFixed(2)}',
                //         style: TextStyle(fontSize: 20),
                //       ),
                //     ],
                //   ),),



                ClipRRect(borderRadius: BorderRadius.circular(10), child: Container(
                  color: const Color(0xffF5F5F5),
                  // color: Colors.grey[400],
                  key: _containerKey,

                  child: LayoutGrid(
                    columnSizes: [1.fr, 1.fr],
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
                            CurrentDealsWidget()

                    ),
                  ),
                ),)
                ,
              ],)

          ),),
        )
          ,)
        ,
      )
    ;
  }
}




class CurrentDealsWidget extends StatelessWidget{
  CurrentDealsWidget({super.key,this.isTabletScreen = true});

  bool isTabletScreen;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ClipRRect(borderRadius: BorderRadius.circular(10),
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
                child:Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [



                    Row(
                      children: [
                        Expanded(
                          child: IntrinsicHeight(
                            child: Stack(
                              children: [
                                Image.asset(
                                  "asset/icons/tablet/first_property_image.png",
                                  fit: BoxFit.cover, // Adjusted fit property
                                ),
                                Positioned(
                                  top: 10,
                                  left: 10,
                                  child: Row(
                                    children: [
                                      InkWell(
                                        onTap: () {},
                                        child: Container(
                                          height: 15.ss,
                                          width: 15.ss,
                                          decoration: BoxDecoration(
                                            color: Colors.green,
                                            borderRadius: BorderRadius.circular(20),
                                          ),
                                          child: Icon(Icons.favorite_border_rounded, color: Colors.white, size: 12.ss),
                                        ),
                                      ),
                                      Container(width: 5.ss),
                                      InkWell(
                                        onTap: () {},
                                        child: Container(
                                          height: 15.ss,
                                          width: 15.ss,
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius: BorderRadius.circular(20),
                                          ),
                                          child: Image.asset("asset/icons/tablet/more-one.png", color: Colors.black, height: 12),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(width: 10.ss),
                        Expanded(
                          child: IntrinsicHeight(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  padding: EdgeInsets.symmetric(horizontal: 5.ss, vertical: 5.ss),
                                  decoration: BoxDecoration(
                                    color: Color(0xFF0A2342),
                                    borderRadius: BorderRadius.circular(5.ss),
                                  ),
                                  child: Text(
                                    "For Sale: 54,300,000 AED",
                                    style: GoogleFonts.poppins(color: Colors.white, fontSize: 9.fss),
                                  ),
                                ),
                                SizedBox(height: 10.ss),
                                Text(
                                  "Excepteur sint occaecat cupidatat",
                                  style: GoogleFonts.poppins(color: Colors.black, fontWeight: FontWeight.w600, fontSize: 12.fss),
                                ),
                                SizedBox(height: 5.ss),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(top: 2.0.ss),
                                      child: Icon(Icons.location_on_outlined, size: 16),
                                    ),
                                    SizedBox(width: 2.ss),
                                    Expanded(
                                      child: Text(
                                        "12 no Excepteur sint occaecat cupidatat",
                                        style: GoogleFonts.poppins(fontSize: 10.fss),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 5.ss),
                                Flexible(
                                  child: Row(
                                    children: [
                                      Wrap(
                                        children: [
                                          Row(
                                            mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                            children: [
                                              Padding(
                                                padding: EdgeInsets.zero,
                                                child: SvgPicture.asset(
                                                  "asset/icons/tablet/bed.svg",
                                                  height: ScreenConstant.defaultHeightTwenty,
                                                ),
                                              ),
                                              Container(
                                                width: 5.ss,
                                              ),
                                              Padding(
                                                padding:
                                                const EdgeInsets.only(top: 8.0),
                                                child: Text(
                                                  "3",
                                                  style: CustomTextStyles
                                                      .lightbodyBlackTablet,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),

                                      Wrap(
                                        children: [
                                          Row(
                                            children: [
                                              Container(
                                                width: 5.ss,
                                              ),
                                              Container(
                                                margin: const EdgeInsets.only(top: 8),
                                                width: 1.ss,
                                                height: getTabletSize(17),
                                                color: const Color(0xffD9D9D9),
                                              ),
                                              Container(
                                                width: 5.ss,
                                              ),
                                              Padding(
                                                padding:
                                                const EdgeInsets.only(top: 8.0),
                                                child: SvgPicture.asset(
                                                  "asset/icons/tablet/shower.svg",
                                                  height: ScreenConstant.defaultHeightTwenty,
                                                ),
                                              ),
                                              Container(
                                                width: 5.h,
                                              ),
                                              Padding(
                                                padding:
                                                const EdgeInsets.only(top: 8.0),
                                                child: Text(
                                                  "2",
                                                  style: CustomTextStyles
                                                      .lightbodyBlackTablet,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),

                                      Wrap(
                                        children: [
                                          Row(
                                            children: [
                                              Container(
                                                width: 5.ss,
                                              ),
                                              Container(
                                                margin: const EdgeInsets.only(top: 8),
                                                width: 1.ss,
                                                height: getTabletSize(17),
                                                color: const Color(0xffD9D9D9),
                                              ),
                                              Container(
                                                width: 5.ss,
                                              ),
                                              Padding(
                                                padding: EdgeInsets.only(top: 8.0),
                                                child: SvgPicture.asset(
                                                  "asset/icons/tablet/alt.svg",
                                                  height: ScreenConstant.defaultHeightTwenty,
                                                ),
                                              ),
                                              Container(
                                                width: 5.ss,
                                              ),
                                              Padding(
                                                padding: EdgeInsets.only(top: 8.0),
                                                child: Text(
                                                  "12,254 ",
                                                  style: CustomTextStyles
                                                      .lightbodyBlackTablet,
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsets.only(top: 8.0),
                                                child: Text(
                                                    "sqft",
                                                    style: CustomTextStyles.light12222222TextStyleTablet
                                                ),
                                              ),
                                              // Container(
                                              //   width: 5.ss,
                                              // ),
                                            ],
                                          ),
                                        ],
                                      ),

                                    ],
                                  ),
                                ),
                                SizedBox(height: 5.ss),
                                Text(
                                  '12 Jan 12:32:43',
                                  style: CustomTextStyles
                                      .lightbodyBlackTablet,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),


                    SizedBox(height:20.v),


                    Flexible(child: Row(mainAxisAlignment: MainAxisAlignment.start,children: [

                      CustomRoundedSVGIcon(assetName: "asset/icons/tablet/dock.svg"),


                      SizedBox(width: 15.h,),

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


                      Container(width:6.ss),
                      Align(alignment: Alignment.bottomRight,child:Row(children: [
                        Stack(
                          children: [
                            Container(
                              padding: EdgeInsets.all(5.ss),
                              height: 20.ss,
                              width: 20.ss,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                color: Colors.greenAccent,
                              ),
                              child: Image.asset(
                                "asset/images/tablet/chat-bubble-text-square--messages-message-bubble-text-square-chat_3x.png",
                                height: 10.ss,
                              ),
                            ),
                            Positioned(
                              top: 0,
                              right: 0,
                              child: Container(
                                width: 10,
                                height: 10,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.red,
                                ),
                              ),
                            ),
                          ],
                        ),

                        Container(width:8.ss),
                        Stack(
                          children: [
                            Container(
                              padding: EdgeInsets.all(5.ss),
                              height: 20.ss,
                              width: 20.ss,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  color: Color(0xFF0A2342)),
                              child: Image.asset(
                                "asset/images/tablet/upload-file-3x.png",
                                height: 5.ss,
                              ),
                            ) , Positioned(
                              top: 0,
                              right: 0,
                              child: Container(
                                width: 10,
                                height: 10,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.red,
                                ),
                              ),
                            ),
                          ],
                        ),],) ,)

                    ],),),



                    Divider(
                      color: Colors.black.withOpacity(0.08),
                      thickness: 1,
                    ),
                    Flexible(child: Row(mainAxisAlignment: MainAxisAlignment.start,children: [

                      CustomRoundedSVGIcon(assetName: "asset/icons/tablet/cal.svg",),
                      SizedBox(width: 15.h,),
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
                                      'Last Update: ',
                                      style: GoogleFonts.poppins(
                                        fontSize: 10.fss,
                                        color: Color(0xff0A2342),
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Flexible(
                                      child: Text(
                                        'The seller has reduced the price to 12 million.',
                                        style: GoogleFonts.poppins(
                                          fontSize: 10.fss,
                                          color: Color(0xff0A2342),
                                          fontWeight: FontWeight.normal,
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


                    ],),),

                    Divider(
                      color: Colors.black.withOpacity(0.08),
                      thickness: 1,
                    ),
                    Flexible(child: Row(children: [

                      CustomRoundedSVGIcon(assetName: "asset/icons/tablet/tag.svg",),

                      SizedBox(width: 15.h,),
                      RichText(
                        text: TextSpan(
                          children: [

                            TextSpan(
                              text: 'Current Price: ',
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


                    Flexible(
                      child: Row(
                        children: [

                          CustomRoundedSVGIcon(assetName:
                          "asset/icons/tablet/tower.svg"
                            ,),
                          SizedBox(width: 15.h),
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
                                          'Progress:  ',
                                          style: GoogleFonts.poppins(
                                            fontSize: 10.fss,
                                            color: Color(0xff0A2342),
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),

                                        Expanded(
                                          child:  Row (
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            children: [

                                              Expanded(
                                                child:
                                                SliderTheme(
                                                  data: SliderTheme.of(context).copyWith(
                                                    trackHeight: 8.0,
                                                    thumbColor: Colors.greenAccent, // Inner color of the thumb
                                                    overlayColor: appTheme.green40001,
                                                    activeTrackColor: Colors.green,
                                                    inactiveTrackColor: Color(0xFF0A2342),
                                                    thumbShape: const CustomThumbShape(
                                                      thumbRadius: 12.0, // Radius of the thumb
                                                      borderThickness: 2.0, // Thickness of the border
                                                    ),
                                                    overlayShape: RoundSliderOverlayShape(overlayRadius: 16.0),
                                                    trackShape: RoundedRectSliderTrackShape(),
                                                  ),
                                                  child: Slider(
                                                    value: 0.75,
                                                    onChanged: (value) {},
                                                  ),
                                                ),),

                                              SizedBox(height: 8.0),
                                              const Text(
                                                '75%',
                                                style: TextStyle(fontSize: 16.0,fontWeight:FontWeight.bold),
                                              ),
                                            ],
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


                  ],))));
  }




}

class CustomThumbShape extends SliderComponentShape {
  final double thumbRadius;
  final double borderThickness;

  const CustomThumbShape({
    required this.thumbRadius,
    required this.borderThickness,
  });

  @override
  Size getPreferredSize(bool isEnabled, bool isDiscrete) {
    return Size.fromRadius(thumbRadius);
  }

  @override
  void paint(
      PaintingContext context,
      Offset center, {
        required Animation<double> activationAnimation,
        required Animation<double> enableAnimation,
        required bool isDiscrete,
        required TextPainter labelPainter,
        required RenderBox parentBox,
        required SliderThemeData sliderTheme,
        required TextDirection textDirection,
        required double value,
        required double textScaleFactor,
        required Size sizeWithOverflow,
      }) {
    final Canvas canvas = context.canvas;

    final Paint borderPaint = Paint()
      ..color = Colors.black // Border color
      ..strokeWidth = borderThickness
      ..style = PaintingStyle.stroke;

    final Paint thumbPaint = Paint()..color = sliderTheme.thumbColor!;

    final double radius = thumbRadius;
    final double borderOffset = borderThickness / 2;

    canvas.drawCircle(center, radius, borderPaint); // Draw border
    canvas.drawCircle(center, radius - borderOffset, thumbPaint); // Draw thumb
  }
}


