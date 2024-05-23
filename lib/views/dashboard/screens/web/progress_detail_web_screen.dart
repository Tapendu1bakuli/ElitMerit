import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:main/utils/colors/app_colors.dart';
import 'package:main/utils/core/utils/updated_size_utils.dart';
import 'package:main/utils/screen_constants.dart';
import 'package:main/utils/theme/custom_text_style.dart';
import 'package:main/utils/theme/theme_helper.dart';
import 'package:main/utils/widgets_utils/app_button.dart';
import 'package:main/utils/widgets_utils/mobile/common_button.dart';
import 'package:main/utils/widgets_utils/mobile/text_input_field.dart';
import 'package:main/utils/widgets_utils/widgets/custom_roundedSVGIcon.dart';
import 'package:main/utils/widows_size_utilis.dart';
import 'package:main/views/dashboard/controller/home_controller.dart';
import 'package:main/views/dashboard/screens/tablet/current_deals_in_progress_tablet_screen.dart';
import 'package:sizing/sizing.dart';
import '../../widget/tablet/timline_tablet_widget.dart';

class ProgressDetailWeb extends StatelessWidget {
  ProgressDetailWeb({super.key});
  final HomeController _homeController = Get.put(HomeController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:     AppBar(
        scrolledUnderElevation: 0.0,
        leadingWidth: getWebSize(150),
        centerTitle: true,
        title: Text(
          'Detailed On Progress Deal Information',
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
        backgroundColor: const Color(0xFF1E1E1E).withOpacity(0.1),
        elevation: 0,
      ),
      body: _bodyView(context),
    );
  }

  Widget _bodyView(BuildContext context){
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,

      color: const Color(0xFF1E1E1E).withOpacity(0.1),
      child:  Center(
        child: Container(
          width: 700.ss,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
Container(height: 30,),
                _tabButtonView(),
                SizedBox(height: getWebSize(40),),
                _detailedView(context),
                SizedBox(height: getWebSize(40),),
                _dealsUpdateView(),
                SizedBox(height: getWebSize(40),),
                _brokerChatView(),
                SizedBox(height: getWebSize(40),),
                _fileManagementView(context),
                SizedBox(height: getWebSize(40),),
              ],
            ),
          ),
        ),
      ),
    );
  }



  Widget _tabButtonView(){
    List <String> title = ['Overview','Deal Updates','Live Chat','Files'];
    return  SizedBox(
      height: ScreenConstant.defaultHeightSeventy,
      child: ListView.builder(
          itemCount: 4,
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context ,int index){
            return  Obx(
                  () =>  InkWell(
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,

                onTap: (){
                  _homeController.selectedIndex.value = index;
                },
                child: Container(
                  margin: EdgeInsets.only(top:  getWebVerticalSize(12),
                      right: getWebSize(20.ss)),
                  width: 200.ss,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey.shade300),
                      color:  _homeController.selectedIndex.value == index ? AppColors.primaryColor :AppColors.whiteColor,
                      borderRadius: BorderRadius.circular(getWebSize(10))),
                  child: Text(
                    maxLines: 1,
                    title[index],
                    style: CustomTextStyles.light14TextStyleTablet.copyWith(
                        color : _homeController.selectedIndex.value == index ? Colors.white :Colors.black,
                        fontWeight : FontWeight.w500,
                        fontSize : 12.fss
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            );
          }),
    );
  }

   Widget _detailedView(context){
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: AppColors.whiteColor,
      border: Border.all(color: Colors.grey.shade300),
      borderRadius: BorderRadius.circular(8.ss),
    ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
        Expanded(
          child: IntrinsicHeight(
            child: Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    "asset/images/tablet/image.png",
                    fit: BoxFit.cover, // Adjusted fit property
                  ),
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 5.ss, vertical: 5.ss),
                      decoration: BoxDecoration(
                        color: const Color(0xFF0A2342),
                        borderRadius: BorderRadius.circular(5.ss),
                      ),
                      child: Text(
                        "For Sale: 54,300,000 AED",
                        style: GoogleFonts.poppins(color: Colors.white, fontSize: 9.fss),
                      ),
                    ),
                    SizedBox(width: 15.ss,),
                    Expanded(
                      child: Text(
                        maxLines: 1,
                        '12 Jan 12:32:43',
                        style: GoogleFonts.poppins(fontSize: 8.fss,
                            color: AppColors.blackColor, fontWeight: FontWeight.normal),
                      ),
                    ),

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
                            alignment: Alignment.center,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.red,
                            ),
                            child: Text('2',style: GoogleFonts.poppins(
                                textStyle: TextStyle(
                                  color: AppColors.whiteColor,
                                  fontSize: 4.fss,
                                )),),
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
                              color: const Color(0xFF0A2342)),
                          child: Image.asset(
                            "asset/images/tablet/upload-file-3x.png",
                            height: 5.ss,
                          ),
                        ) ,
                        Positioned(
                          top: 0,
                          right: 0,
                          child: Container(
                            width: 10,
                            height: 10,
                            alignment: Alignment.center,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.red,
                            ),
                            child: Text('2',style: GoogleFonts.poppins(
                                textStyle: TextStyle(
                                  color: AppColors.whiteColor,
                                  fontSize: 4.fss,
                                )),),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                SizedBox(height: 10.ss),
                Text(
                  "Excepteur sint occaecat cupidatat non\nproident sunt in culpa qui officia",
                  style: GoogleFonts.poppins(color: Colors.black, fontWeight: FontWeight.w600, fontSize: 12.fss),
                ),
                SizedBox(height: 5.ss),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,

                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 2.0.ss),
                      child: const Icon(Icons.location_on_outlined, size: 20),
                    ),
                    SizedBox(width: 2.ss),
                    Flexible(
                      child: Text(
                        "12 no Excepteur sint occaecat",
                        style: GoogleFonts.poppins(fontSize: 10.fss),
                      ),
                    ),
                    SizedBox(width: 15.ss),
                    Transform.translate(
                      offset: Offset(0,-2.ss),
                      child: SvgPicture.asset(
                        "asset/icons/tablet/ic_bed_mobile.svg",
                        height: 26,
                      ),
                    ),
                    SizedBox(width: 5.ss),
                    Text("3", style: GoogleFonts.poppins()),
                    SizedBox(width: 5.ss),
                    Container(width: 1.ss, height: 10.ss, color: Colors.black.withOpacity(0.5)),
                    SizedBox(width: 5.ss),
                    SvgPicture.asset(
                      "asset/icons/tablet/ic_shower_mobile.svg",
                      height: 24,
                    ),
                    SizedBox(width: 5.ss),
                    Text("3", style: GoogleFonts.poppins()),
                    SizedBox(width: 5.ss),
                    Container(width: 1.ss, height: 10.ss, color: Colors.black.withOpacity(0.5)),
                    SizedBox(width: 5.ss),
                    SvgPicture.asset(
                      "asset/icons/tablet/alt.svg",
                      height: 20,
                    ),
                    SizedBox(width: 5.ss),
                    Text("12,254 AED", style: GoogleFonts.poppins()),
                  ],
                ),
                SizedBox(height: 15.ss),
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
                                    color: const Color(0xff0A2342),
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Flexible(
                                  child: Container(
                                    constraints: const BoxConstraints(maxWidth: 200),
                                    padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      color: const Color(0xff0A2342),
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
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Last Update: ',
                                  style: GoogleFonts.poppins(
                                    fontSize: 10.fss,
                                    color: const Color(0xff0A2342),
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Flexible(
                                  child: Text(
                                    'The seller has reduced the price to 12 million.',
                                    style: GoogleFonts.poppins(
                                      fontSize: 10.fss,
                                      color: const Color(0xff0A2342),
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
                            color: const Color(0xff0A2342),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        TextSpan(
                          text: '12,000,000 AED',
                          style: GoogleFonts.poppins(
                            fontSize: 10.fss,
                            color: const Color(0xff0A2342),
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
                                        color: const Color(0xff0A2342),
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
                                                thumbColor: AppColors.primaryColor, // Inner color of the thumb
                                                overlayColor: appTheme.green40001,
                                                activeTrackColor: AppColors.primaryColor,
                                                inactiveTrackColor: const Color(0xFF0A2342),
                                                thumbShape: const CustomThumbShape(
                                                  thumbRadius: 12.0, // Radius of the thumb
                                                  borderThickness: 2.0, // Thickness of the border
                                                ),
                                                overlayShape: const RoundSliderOverlayShape(overlayRadius: 16.0),
                                                trackShape: const RoundedRectSliderTrackShape(),
                                              ),
                                              child: Slider(
                                                value: 0.75,
                                                onChanged: (value) {},
                                              ),
                                            ),),

                                          const SizedBox(height: 8.0),
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
                SizedBox(height: 40.ss),
              ],
            ),
          ),
        ),
      ],),
      );
  }

  Widget _dealsUpdateView(){
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: AppColors.whiteColor,
        border: Border.all(color: Colors.grey.shade300),
        borderRadius: BorderRadius.circular(8.ss),
      ),
      child: Column(
        children: [
          SizedBox(height: 20.ss,),
          Text('Deals Update', style: GoogleFonts.poppins( fontSize: 14.fss,
          fontWeight : FontWeight.w600
          ),),
          SizedBox(height: 20.ss,),
          const TimeLineTabletWidget(),
          AppButton(
            onPressed: () {
            },
            buttonText: "Contact",
            color: const Color(0xFF50C878),
            borderColor: const Color(0xFF50C878),
            borderRadious: 10,
            borderWidth: 1,
            elevation: 0,
            width: Get.width/6,
            height: getWebVerticalSize(60),
            textStyle: CustomTextStyles.customButtonTextStyleTablet,
          ),
          SizedBox(height: 20.ss,),
        ],
      ),
    );
  }


   Widget _fileManagementView(context){
     return Container(
       width: MediaQuery.of(context).size.width,
       decoration: BoxDecoration(
         color: AppColors.whiteColor,
         border: Border.all(color: Colors.grey.shade300),
         borderRadius: BorderRadius.circular(8.ss),
       ),
       child: Column(
         children: [
           Padding(
             padding:  EdgeInsets.only(left: 20.ss,right: 20.ss,top: 20.ss),
             child: Row(
               children: [
                 Expanded(
                   child: Text(
                     "File Management",
                     style: GoogleFonts.poppins(
                       fontSize: 16.fss,
                       fontWeight: FontWeight.w600,
                     ),
                   ),
                 ),
                 CommonButton(
                   text: 'Upload New Files',
                   width: 150.ss,
                   height: 30.ss,
                   fontSize: 12.fss,
                   onPressed: () {
                   },
                 ),
               ],
             ),
           ),
           SizedBox(height: getWebSize(40),),
           _tableHeading(),
           ListView.builder(
               itemCount: 4,
               shrinkWrap: true,
               physics: const NeverScrollableScrollPhysics(),
               itemBuilder: (context,int index){
                 return _tableItemsView();
               }),

         ],
       ),
     );
   }

   Widget _tableHeading() {
     return Table(
       defaultVerticalAlignment: TableCellVerticalAlignment.middle,
       columnWidths: const {
         0: FractionColumnWidth(.15),
         1: FractionColumnWidth(0.4),
         2: FractionColumnWidth(0.2),
         3: FractionColumnWidth(0.3),

       },
       border: const TableBorder(
         verticalInside: BorderSide(
             width: 1,
             color: Colors.transparent,
             style: BorderStyle.solid),
       ),
       children: [
         TableRow(
             decoration: BoxDecoration(
                 color: AppColors.primaryColor,
                 border: Border.all(color: Colors.transparent)),
             children: [
               Transform.translate(
                 offset: Offset(20.ss,0),
                 child: Text(
                   'Files',
                   style: GoogleFonts.poppins(
                       textStyle: TextStyle(
                           color: AppColors.whiteColor,
                           fontSize: 10.fss,
                           fontWeight: FontWeight.w600)),
                   textAlign: TextAlign.start,
                 ),
               ),
               Transform.translate(
                 offset: Offset(20.ss,0),
                 child: Text(
                   'Description',
                   style: GoogleFonts.poppins(
                       textStyle: TextStyle(
                           color: AppColors.whiteColor,
                           fontSize: 10.fss,
                           fontWeight: FontWeight.w600)),
                   textAlign: TextAlign.start,
                 ),
               ),
               Transform.translate(
                 offset: Offset(50.ss,0),
                 child: Text(
                   'Upload Time',
                   style: GoogleFonts.poppins(
                       textStyle: TextStyle(
                           color: AppColors.whiteColor,
                           fontSize: 10.fss,
                           fontWeight: FontWeight.w600)),
                   textAlign: TextAlign.start,
                 ),
               ),
               Padding(
                 padding: EdgeInsets.symmetric( vertical: 10.ss),
                 child: Transform.translate(
                   offset: Offset(50.ss,0),
                   child: Text(
                     'Name',
                     style: GoogleFonts.poppins(
                         textStyle: TextStyle(
                             color: AppColors.whiteColor,
                             fontSize: 10.fss,
                             fontWeight: FontWeight.w600)),
                     textAlign: TextAlign.start,
                   ),
                 ),
               ),
             ]),
       ],
     );
   }

   Widget _tableItemsView() {
     return Table(
       defaultVerticalAlignment: TableCellVerticalAlignment.middle,
       columnWidths: const {
         0: FractionColumnWidth(.15),
         1: FractionColumnWidth(0.4),
         2: FractionColumnWidth(0.2),
         3: FractionColumnWidth(0.3),

       },
       border: TableBorder(
         verticalInside: BorderSide(
             width: 1, color: Colors.grey.shade300, style: BorderStyle.solid),
       ),
       children: [
         TableRow(
             decoration: BoxDecoration(
                 color: AppColors.whiteColor,
                 border: Border.all(color: Colors.grey.shade300)),
             children: [
               Padding(
                 padding:  EdgeInsets.symmetric(vertical:20.ss,horizontal: 15.ss),
                 child: ClipRRect(
                   borderRadius: BorderRadius.circular(10.ss),
                     child: Image.asset('asset/images/tablet/image.png',)),
               ),
               Padding(padding: EdgeInsets.symmetric(vertical: 10.ss,horizontal: 20.ss),
                 child: Text(
                   'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do tempor incididunt ut labore et dolore magna aliqua',
                   style: GoogleFonts.poppins(
                       textStyle: TextStyle(
                         color: Colors.black,
                         fontSize: 10.fss,
                       )),
                 ),
               ),
               Padding(
                 padding:
                 EdgeInsets.symmetric( vertical: 10.ss,),
                 child: Text(
                   '07:25PM',
                   style: GoogleFonts.poppins(
                       textStyle: TextStyle(
                         color: Colors.black,
                         fontSize: 10.fss,
                       )),
                   textAlign: TextAlign.center,
                 ),
               ),

               Padding(
                 padding:
                 EdgeInsets.only(top: 10.0.ss, bottom: 10.ss,left: 50.ss),
                 child: Text('John',
                     textAlign: TextAlign.start,
                     style: GoogleFonts.poppins(
                         textStyle: TextStyle(
                           color: Colors.black,
                           fontSize: 10.fss,
                         ))),
               ),
             ]),
       ],
     );
   }

   Widget _brokerChatView() {
     return Container(
         padding: const EdgeInsets.all(20),
     decoration: BoxDecoration(
     color: AppColors.whiteColor,
     border: Border.all(color: Colors.grey.shade300),
     borderRadius: BorderRadius.circular(8.ss),),
       child: Column(
         crossAxisAlignment: CrossAxisAlignment.center,
         children: [
           Text(
             "Broker Conversation Interface",
             style: GoogleFonts.poppins(
               fontSize: 16.fss,
               fontWeight: FontWeight.w600,
             ),
           ),
           SizedBox(height: 20.ss,),
           Container(
             padding: EdgeInsets.only(top: 20.ss),
             decoration: BoxDecoration(borderRadius:
             BorderRadius.circular(10.ss),border: Border.all(color: Colors.grey.shade300)),
             child: Column(
               children: [
                 ListView.builder(
                     physics: const NeverScrollableScrollPhysics(),
                     itemCount: 3,
                     shrinkWrap: true,
                     itemBuilder: (context, int index) {
                       return Column(
                         children: [
                           Align(
                               alignment: Alignment.topLeft,
                               child: _leftMessageView("Sed ut perspiciatis unde omnis iste natus error sit volup tatem")),
                           Align(alignment: Alignment.topRight, child: _rightMessageView("Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque")),
                           Align(alignment: Alignment.topRight, child: _rightMessageView("Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque")),

                         ],
                       );
                     }),
                 Container(
                   margin: EdgeInsets.only(top: 15.ss),
                   height: 40.ss,
                   child: TextInputField(
                     textStyle: TextStyle(
                       height: 1,
                         color: const Color(0xFF111A24),
                         fontSize: 14.fss,
                         fontFamily: 'Gordita'),
                     isSuffix: true,
                     fillColor: Colors.grey.shade50,
                     hintText: 'Start typing...',
                    suffixPadding: EdgeInsets.zero,
                     suffixWidget:  Container(
                       height: 40.ss,
                       width: 40.ss,
                       decoration: BoxDecoration(
                           color: AppColors.whiteColor,
                           border: Border.all(color: Colors.grey.shade300),
                           borderRadius: BorderRadius.circular(10.ss)),
                       child: ClipRRect(
                         borderRadius: BorderRadius.circular(10.ss),
                         child: Image.asset("asset/icons/tablet/ic_send.png",
                          scale: 2.0,
                           ),
                       ),
                     ),
                     prefixIcon: Image.asset(
                       'asset/icons/tablet/happy_light.png',scale: 1.75,),
                   )
                   ,)
               ],
             ),
           )
         ],
       ).paddingOnly(bottom: 10.ss),
     );
   }

   Widget _rightMessageView(String? message) {
     return Container(
       width: Get.width / 2,
       padding: EdgeInsets.all(5.ss),

       margin: EdgeInsets.only(
         bottom: 10.ss,left: 10.ss,right: 10.ss,
       ),
       decoration: BoxDecoration(
           border: Border.all(color: Colors.grey.shade300),
           color: AppColors.whiteColor,
           borderRadius: BorderRadius.only(topLeft: Radius.circular(10.ss))),
       child: Row(
         crossAxisAlignment: CrossAxisAlignment.start,
         mainAxisAlignment: MainAxisAlignment.spaceBetween,
         children: [
           Expanded(
             child: Text(
               message??"",
               style: CustomTextStyles.light12Tablet,
             ),
           ),
           Text(
             "12:15 PM",
             style: GoogleFonts.poppins(
               fontSize: 10.fss,
               fontWeight: FontWeight.w400,
             ),
           ),
           Container(width: 5.ss,),
           Image.asset('asset/icons/tablet/double_tick.png',scale: 2,)
         ],
       ),
     );
   }

   Widget _leftMessageView(String? message) {
     return Row(
       children: [
         Image.asset('asset/icons/tablet/User_box_duotone_line.png',scale: 2,).marginOnly(left: 10.ss),
         SizedBox(width: 10.ss,),
         Stack(
           children: [
             Container(
               padding: EdgeInsets.only(left: 10.ss),
               child: Container(
                 width: Get.width/2,
                 padding: EdgeInsets.all(6.ss),
                 margin: EdgeInsets.only(
                   bottom: 10.ss,
                 ),
                 decoration: BoxDecoration(
                     border: Border.all(color: Colors.grey.shade300),
                     color: AppColors.darkBlueColor,
                     borderRadius: BorderRadius.only(
                       bottomRight: Radius.circular(15.ss),
                     )),
                 child: Column(
                   crossAxisAlignment: CrossAxisAlignment.start,
                   children: [
                     Row(
                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                       children: [
                         Text(
                           "John Doe",
                           style: CustomTextStyles.regular10Tablet,
                         ),
                         Text(
                           "12:15 PM",
                           style: CustomTextStyles.light6Tablet,
                         )
                       ],
                     ),
                     Text(
                       message??"",
                       style: CustomTextStyles.light8Tablet,
                     )
                   ],
                 ),
               ),
             ),
             Positioned(
                 top: 10.ss,
                 bottom: 20.ss,
                 left: 0.ss,
                 child: Image.asset('asset/icons/tablet/chat_vector.png',scale: 1.5.ss,)),
           ],
         )
       ],
     );
   }

}
