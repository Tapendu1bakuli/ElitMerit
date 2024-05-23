import 'package:flutter/material.dart';
import 'package:flutter_layout_grid/flutter_layout_grid.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:main/utils/core/utils/updated_size_utils.dart';
import 'package:main/utils/widows_size_utilis.dart';
import 'package:sizing/sizing.dart';

import '../../../../utils/phone_size_utils.dart';
import '../../../../utils/tablet_size_utils.dart';
import '../../../../utils/theme/custom_text_style.dart';
import '../../../../utils/theme/theme_helper.dart';
import '../../../../utils/widgets_utils/widgets/custom_roundedSVGIcon.dart';
import '../tablet/current_deals_in_progress_tablet_screen.dart';

class CurrentDealsInProgressWebScreen extends StatelessWidget {
  CurrentDealsInProgressWebScreen({Key? key, required this.isTabletScreen})
      : super(key: key);
  bool isTabletScreen;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (_, constraints) {
      return CurrentDealsInProgressResponsiveLayout(
          viewportWidth: constraints.maxWidth, isTabletScreen: isTabletScreen);
    });
  }
}

class CurrentDealsInProgressResponsiveLayout extends StatelessWidget {
  CurrentDealsInProgressResponsiveLayout(
      {super.key, required this.viewportWidth, required this.isTabletScreen});

  final double viewportWidth;
  final GlobalKey _containerKey = GlobalKey();
  bool isTabletScreen;

  @override
  Widget build(BuildContext context) {
    print("Tablet");
    return Scaffold(
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
                        size: isTabletScreen ? getWebSize(24) : getSize(24),
                      ),
                      Text(
                        'Back',
                        style: CustomTextStyles
                            .regular18232323WithOutOpacityTablet,
                      ),
                    ],
                  )),
            ],
          ),
        ),
        backgroundColor: Color(0xFF1E1E1E).withOpacity(0.1),
        elevation: 0,
      ),
      body: Container(
        decoration: BoxDecoration(color: Color(0xFF1E1E1E).withOpacity(0.1)),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0.ss),
          child: Center(
              child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  height: 40,
                ),
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    children: [
                      Container(
                        height: 10,
                      ),
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
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Container(
                    color: const Color(0xffF5F5F5),
                    // color: Colors.grey[400],
                    key: _containerKey,

                    child: LayoutGrid(
                      columnSizes: [1.fr, 1.fr, 1.fr],
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
                          auto,
                          // Let the height be determined by the content
                          auto,
                          auto,
                        ]
                      ],
                      columnGap: 10.0,
                      // Horizontal gap between grid items
                      rowGap: 10.0,
                      // Vertical gap between grid items
                      children:
                          List.generate(6, (index) => CurrentDealsWidget()),
                    ),
                  ),
                ),
              ],
            ),
          )),
        ),
      ),
    );
  }
}

class CurrentDealsWidget extends StatelessWidget {
  CurrentDealsWidget({super.key, this.isTabletScreen = true});

  bool isTabletScreen;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Container(
            // color: const Color(0xffF5F5F5),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20), // Adjust as needed
              // Example color for the first container
            ),
            child: Container(
                color: Colors.white,
                padding: EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    IntrinsicHeight(
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
                                    child: Icon(Icons.favorite_border_rounded,
                                        color: Colors.white, size: 12.ss),
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
                                    child: Image.asset(
                                        "asset/icons/tablet/more-one.png",
                                        color: Colors.black,
                                        height: 12),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(height: 10.ss),
                    Row(
                      children: [
                        Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 5.ss, vertical: 5.ss),
                          decoration: BoxDecoration(
                            color: Color(0xFF0A2342),
                            borderRadius: BorderRadius.circular(5.ss),
                          ),
                          child: Text(
                            overflow: TextOverflow.ellipsis,
                            "For Sale: 54,300,000 AED",
                            style: GoogleFonts.poppins(
                                color: Colors.white, fontSize: 15),
                          ),
                        ),
                        Container(
                          width: 10.ss,
                        ),
                        Flexible(
                          child: Container(
                            child: Text(
                              overflow: TextOverflow.ellipsis,
                              '12 Jan 12:32:43',
                              style: GoogleFonts.poppins(
                                  fontSize: 14,
                                  color: Color(0xff0A2342),
                                  fontWeight: FontWeight.normal),
                            ),
                          ),
                        ),
                        Spacer(),
                        Align(
                          alignment: Alignment.bottomRight,
                          child: Row(
                            children: [
                              Stack(
                                children: [
                                  Container(
                                    padding: EdgeInsets.all(5.ss),
                                    height: 40,
                                    width: 40,
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
                              Container(width: 8),
                              Stack(
                                children: [
                                  Container(
                                    padding: EdgeInsets.all(5.ss),
                                    height: 40,
                                    width: 40,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(30),
                                        color: Color(0xFF0A2342)),
                                    child: Image.asset(
                                      "asset/images/tablet/upload-file-3x.png",
                                      height: 5.ss,
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
                            ],
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: 10.ss),
                    Text(
                      "Excepteur sint occaecat cupidatat",
                      style: GoogleFonts.poppins(
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                          fontSize: 12.fss),
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
                    Row(
                      children: [
                        Image.asset("asset/icons/tablet/Bed_light.png",
                            fit: BoxFit.fill, height: 10.ss),
                        SizedBox(width: 5.ss),
                        Text("3", style: GoogleFonts.poppins()),
                        SizedBox(width: 5.ss),
                        Container(
                            width: 1.ss,
                            height: 10.ss,
                            color: Colors.black.withOpacity(0.5)),
                        SizedBox(width: 5.ss),
                        Image.asset("asset/icons/tablet/Shower.png",
                            fit: BoxFit.fill, height: 10.ss),
                        SizedBox(width: 5.ss),
                        Text("3", style: GoogleFonts.poppins()),
                        SizedBox(width: 5.ss),
                        Container(
                            width: 1.ss,
                            height: 10.ss,
                            color: Colors.black.withOpacity(0.5)),
                        SizedBox(width: 5.ss),
                        Image.asset("asset/icons/tablet/Move_alt.png",
                            fit: BoxFit.fill, height: 10.ss),
                        SizedBox(width: 5.ss),
                        Text("12,254 AED", style: GoogleFonts.poppins()),
                      ],
                    ),
                    SizedBox(height: 20.v),
                    Flexible(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          CustomRoundedSVGIcon(
                              assetName: "asset/icons/tablet/dock.svg"),
                          SizedBox(
                            width: 15.h,
                          ),
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
                                            constraints: const BoxConstraints(
                                                maxWidth: 200),
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 10, vertical: 5),
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(15),
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
                    Flexible(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding:  EdgeInsets.only(bottom: 8.0.ss),
                            child: CustomRoundedSVGIcon(
                              assetName: "asset/icons/tablet/cal.svg",
                            ),
                          ),
                          SizedBox(
                            width: 15.h,
                          ),
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
                                      crossAxisAlignment: CrossAxisAlignment.start,
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
                    Flexible(
                      child: Row(
                        children: [
                          CustomRoundedSVGIcon(
                            assetName: "asset/icons/tablet/tag.svg",
                          ),
                          SizedBox(
                            width: 15.h,
                          ),
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
                        ],
                      ),
                    ),
                    Divider(
                      color: Colors.black.withOpacity(0.08),
                      thickness: 1,
                    ),
                    Flexible(
                      child: Row(
                        children: [
                          CustomRoundedSVGIcon(
                            assetName: "asset/icons/tablet/tower.svg",
                          ),
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
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Expanded(
                                                child: SliderTheme(
                                                  data: SliderTheme.of(context)
                                                      .copyWith(
                                                    trackHeight: 8.0,
                                                    thumbColor:
                                                        Colors.greenAccent,
                                                    // Inner color of the thumb
                                                    overlayColor:
                                                        appTheme.green40001,
                                                    activeTrackColor:
                                                        Colors.green,
                                                    inactiveTrackColor:
                                                        Color(0xFF0A2342),
                                                    thumbShape:
                                                        const CustomThumbShape(
                                                      thumbRadius: 12.0,
                                                      // Radius of the thumb
                                                      borderThickness:
                                                          2.0, // Thickness of the border
                                                    ),
                                                    overlayShape:
                                                        RoundSliderOverlayShape(
                                                            overlayRadius:
                                                                16.0),
                                                    trackShape:
                                                        RoundedRectSliderTrackShape(),
                                                  ),
                                                  child: Slider(
                                                    value: 0.75,
                                                    onChanged: (value) {},
                                                  ),
                                                ),
                                              ),
                                              SizedBox(height: 8.0),
                                              const Text(
                                                '75%',
                                                style: TextStyle(
                                                    fontSize: 16.0,
                                                    fontWeight:
                                                        FontWeight.bold),
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
                  ],
                ))));
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
