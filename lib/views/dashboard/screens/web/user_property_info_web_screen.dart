import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:main/utils/colors/app_colors.dart';
import 'package:main/utils/core/utils/image_constant.dart';
import 'package:main/utils/core/utils/updated_size_utils.dart';
import 'package:main/utils/screen_constants.dart';
import 'package:main/utils/tablet_size_utils.dart';
import 'package:main/utils/theme/app_decoration.dart';
import 'package:main/utils/theme/custom_button_style.dart';
import 'package:main/utils/theme/custom_text_style.dart';
import 'package:main/utils/theme/theme_helper.dart';
import 'package:main/utils/widgets_utils/widgets/custom_elevated_button.dart';
import 'package:main/utils/widgets_utils/widgets/custom_image_view.dart';
import 'package:main/utils/widgets_utils/widgets/custom_text_form_field.dart';
import 'package:main/utils/widows_size_utilis.dart';
import 'package:main/views/dashboard/controller/home_controller.dart';
import 'package:main/views/dashboard/widget/tablet/financial_details_file_widget_tablet.dart';
import 'package:main/views/dashboard/widget/tablet/property_info_contract_tablet_widget.dart';
import 'package:main/views/dashboard/widget/tablet/subtractsquare_item_tablet_widget.dart';
import 'package:main/views/dashboard/widget/tablet/toggel_button_widget.dart';
import 'package:main/views/dashboard/widget/web/add_property_web_card_widget.dart';
import 'package:main/views/dashboard/widget/web/edit_property_info_web_widget.dart';
import 'package:main/views/dashboard/widget/web/file_document_web_widget.dart';
import 'package:main/views/dashboard/widget/web/property_info_contract_web_widget.dart';
import 'package:sizing/sizing_extension.dart';
import 'package:flutter/material.dart';
class UserPropertyInfoWebScreen extends StatelessWidget {
   UserPropertyInfoWebScreen({Key? key}) : super(key: key);
  TextEditingController group163Controller = TextEditingController();

  List<String> dropdownItemList = ["Item One", "Item Two", "Item Three"];

  late TabController tabviewController;

  final HomeController _homeController = Get.put(HomeController());
  @override
  Widget build(BuildContext context) {
    return MediaQuery(
      data:MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
      child: Scaffold(
        appBar:  AppBar(

          scrolledUnderElevation: 0.0,
          centerTitle: true,
          title: Text(
            'User Property Information',
            style: CustomTextStyles.bold32Tablet,
          ),
          leadingWidth: getWebSize(200),
          leading: GestureDetector(
            onTap: () => Get.back(),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Row(
                children: [

                  Icon(
                    Icons.arrow_back_ios_new_rounded,
                    size: getWebSize(24),
                  ),
                  Container(
                    width: getWebSize(5),
                  ),
                  Text(
                    'Back',
                    style:  CustomTextStyles.regular18232323WithOutOpacityTablet,
                  ),
                ],
              ),
            ),
          ),
          backgroundColor: AppColors.webBgColor,
          elevation: 0,
        ),
        body: Container(
          color: AppColors.webBgColor,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                Center(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 50.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [

                        SizedBox(
                          height: getWebSize(40),
                        ),
                        _tabButtonView(),
                        SizedBox(
                          height: getWebSize(40),
                        ),
                        _buildOverviewTab(context),
                        SizedBox(
                          height: getWebSize(40),
                        ),
                        _buildContractsTab(context),
                        SizedBox(
                          height: getWebSize(40),
                        ),
                        _buildInstallmentsTab(context),
                        SizedBox(
                          height: getWebSize(40),
                        ),
                        _buildRealEstatePhotos1(context),
                        SizedBox(
                          height: getWebSize(40),
                        ),
                        _buildRealEstateDocuments1(context),
                        SizedBox(
                          height: getWebSize(40),
                        ),
                        _buildEditPropertyInformation(context)
                      ],
                    ),
                  ),
                )],
            ),
          ),
        ),
      ),
    );
  }

Widget _tabButtonView(){
  List <String> title = ['Overview','Contracts','Installments','Real Estate Photos',
    'Real Estate Documents' ,'Edit Property Information'
  ];
  return  SizedBox(
    height: ScreenConstant.defaultHeightSeventy,
    child: ListView.builder(
        itemCount: title.length,
        shrinkWrap: true,
        padding: EdgeInsets.zero,
        physics: const ClampingScrollPhysics(),
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
                margin: EdgeInsets.only(top:  getWebVerticalSize(12), right: getWebSize(10.ss) ),
                width: 150.ss,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey.shade300),
                    color:  _homeController.selectedIndex.value == index ? AppColors.primaryColor :AppColors.whiteColor,
                    borderRadius: BorderRadius.circular(getWebSize(10))),
                child: Text(
                  maxLines: 1,
                  title[index],
                  style: CustomTextStyles.light14TextStyleTablet.copyWith(
                      color : _homeController.selectedIndex.value == index ?
                      Colors.white :const Color.fromRGBO(103,103,104,1.0),
                      fontWeight : FontWeight.w500,
                      fontSize : 10.fss
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          );
        }),
  );
}

/// Section Widget
Widget _buildOverviewTab(BuildContext context) {
  return Container(
      decoration: AppDecoration.outlineBlack9006,
      child: Column(children: [
        _buildContracts(context,
            contractsText: "Overview",
            arrowDownImage: ImageConstant.imgArrowDownOnerrorcontainer),
        SizedBox(height: getWebSize(20)),
        Card(
            clipBehavior: Clip.antiAlias,
            elevation: getWebSize(1),
            color: theme.colorScheme.onErrorContainer,
            shape: RoundedRectangleBorder(
                side: BorderSide(color: appTheme.gray20001, width: 1.h),
                borderRadius: BorderRadiusStyle.roundedBorder16),
            child: Container(
                padding:
                EdgeInsets.symmetric(horizontal: 27.h, vertical: 20.v),
                decoration: AppDecoration.outlineGray.copyWith(borderRadius: BorderRadiusStyle.roundedBorder16),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                              flex: 2,
                              child: _financialMetricsView(context)),
                          Expanded(
                            flex: 2,
                            child:_rentalContractView(context), ),
                          SizedBox(width: 20.ss,),
                          Expanded(
                              flex: 2,
                              child: _propertyInfoView(context)),
                        ],
                      ),
                      SizedBox(height: getWebSize(20)),

                      _propertyNotReadyView(context)

                    ])))
      ]));
}

Widget _financialMetricsView(BuildContext context) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      CustomElevatedContainer(
          color: const Color(0xFF0A2342),
          width: ScreenConstant.defaultWidthTwoEightyFive,
          fontSize: 10.fss,
          text: "Financial metrics",
          buttonStyle: CustomButtonStyles.fillGreenTL12)
          .paddingOnly(),
      SizedBox(height: 15.v),
      _buildDescription(context,
          title: 'Cash Flow', subTitle: '80,300,000 AED'),
      _buildDescription(context,
          title: 'Including Income', subTitle: '75,300,000 AED'),
      _buildDescription(context,
          title: 'Expenses', subTitle: '54,300,000 aed'),
    ],
  );
}

Widget _propertyNotReadyView(BuildContext context) {
  return SizedBox(
    width: Get.width/2.5,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomElevatedContainer(
            color: const Color(0xFF0A2342),
            width: ScreenConstant.defaultWidthThreeThirtySix,
            text: "Rental contract information",
            fontSize: 10.fss,
            buttonStyle: CustomButtonStyles.fillPrimary),
        SizedBox(height: 15.v),
        _buildDescription(context, title: 'Property', subTitle: 'Rented'),
        _buildDescription(context,
            title: 'Including Remaining Days', subTitle: '365 days'),
        _buildDescription(context, title: 'Price', subTitle: '54,300,000 AED'),
      ],
    ),
  );
}

Widget _rentalContractView(BuildContext context) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      CustomElevatedContainer(
          color: const Color(0xFF0A2342),
          width: ScreenConstant.defaultWidthThreeThirtySix,
          text: "Properties Not Ready",
          fontSize: 10.fss,
          buttonStyle: CustomButtonStyles.fillPrimary),
      SizedBox(height: 15.v),
      _buildDescription(context,
          title: 'Installment Date', subTitle: '12/04/202'),
      _buildDescription(context,
          title: 'Installment Value', subTitle: '94,300,000 AED'),
      _buildDescription(context,
          title: 'Property Delivery Date', subTitle: '12/04/2020'),
    ],
  );
}

Widget _propertyInfoView(BuildContext context) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      CustomElevatedContainer(
          color: const Color(0xFF0A2342),
          width: ScreenConstant.defaultWidthThreeThirtySix,
          fontSize: 10.fss,
          text: "Properties Information",
          buttonStyle: CustomButtonStyles.fillPrimary),
      SizedBox(height: 15.v),
      _buildDescription(context,
          title: 'Building Name', subTitle: 'Excepteur sint occaecat'),
      _buildDescription(context,
          title: 'Property Number', subTitle: '1245e25'),
      _buildDescription(context,
          title: 'Condition',
          subTitle: 'Good',
          subTitleColor: AppColors.primaryColor,
          subTitleFontWeight: FontWeight.w600),
      _buildDescription(context,
          title: 'Purchase Price', subTitle: '54,300,000 AED'),
    ],
  );
}

/// Section Widget
Widget _buildContractsTab(BuildContext context) {
  return Container(
      decoration: AppDecoration.outlineBlack9006,
      child: Column(children: [
        _buildContracts(context,
            contractsText: "Contracts",
            arrowDownImage: ImageConstant.imgArrowDownOnerrorcontainer24x24),
        SizedBox(height: 22.v),
        GridView.builder(
          padding: EdgeInsets.zero,
          shrinkWrap: true,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 20,
            mainAxisSpacing: 20,
            childAspectRatio: 12 / 4.5,
          ),
          itemCount: 4,
          itemBuilder: (BuildContext context, int index) {
            return const PropertyDetailsWebWidget();
          },



          physics: const NeverScrollableScrollPhysics(),
        ),
      ]));
}

/// Section Widget
Widget _buildInstallmentsTab(BuildContext context) {
  return Container(
      decoration: AppDecoration.outlineBlack9006,
      child: Column(children: [
        _buildContracts(context,
            contractsText: "Installments",
            arrowDownImage: ImageConstant.imgArrowDownOnerrorcontainer24x24),
        SizedBox(height: 23.v),
        const FinancialDetailsTabletWidget(),
      ]));
}

/// Common widget
Widget _buildDescription(
    BuildContext context, {
      required String title,
      String? separatorText,
      required String subTitle,
      Color? subTitleColor,
      FontWeight? subTitleFontWeight,
    }) {
  return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start, children: [
    Expanded(
      flex: 3,
      child: Text(title,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: CustomTextStyles.bodySmall9.copyWith(
              color: appTheme.black900,
              fontSize: 9.fss,
              fontWeight: FontWeight.w400)),
    ),
    Text(separatorText ?? ':',
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
        style: CustomTextStyles.bodySmall9.copyWith(
            color: appTheme.black900,
            fontSize: 9.fss,
            fontWeight: FontWeight.w400)).marginOnly(right: 10.ss)
    ,
    Expanded(
      flex: 3,
      child: Text(subTitle,
          maxLines: 3,
          overflow: TextOverflow.ellipsis,
          style: CustomTextStyles.bodySmall9.copyWith(
              color: subTitleColor ?? appTheme.black900,
              fontSize: 9.fss,
              fontWeight: subTitleFontWeight ?? FontWeight.w400)),
    )
  ]).marginOnly(top: 2.v, left: 25.h, right: 5.h, bottom: 2.v);
}

/// Common widget
Widget _buildContracts(
    BuildContext context, {
      required String contractsText,
      required String arrowDownImage,
    }) {
  return Container(
      margin: getWebMargin(left: 2, right: 2),
      padding: EdgeInsets.symmetric(horizontal: 13.h, vertical: 8.v),
      decoration: AppDecoration.fillGreen
          .copyWith(borderRadius: BorderRadiusStyle.roundedBorder10),
      child:
      Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Padding(
            padding: getWebPadding(left: 6, right: 1),
            child: Text(contractsText,
                style: CustomTextStyles.titleMediumOnErrorContainer_1
                    .copyWith(
                    color: theme.colorScheme.onErrorContainer,
                    fontSize: 12.fss))),
        CustomImageView(
            imagePath: arrowDownImage,
            height: getWebSize(30),
            width: getWebSize(30),
            margin: EdgeInsets.only(top: 1.v))
      ]));
}

/// Section Widget
Widget _buildRealEstatePhotos1(BuildContext context) {
  return Container(
      decoration: AppDecoration.outlineBlack9006,
      child: Column(children: [
        _buildContracts(context,
            contractsText: "Real Estate Photos",
            arrowDownImage: ImageConstant.imgArrowDown24x24),
        SizedBox(height: getWebSize(40)),
        Container(
            padding: EdgeInsets.only(
              top: ScreenConstant.sizeXL,
              bottom: ScreenConstant.sizeLarge,
            ),
            decoration: AppDecoration.outlineBlack900
                .copyWith(borderRadius: BorderRadiusStyle.roundedBorder10),
            child: Column(mainAxisSize: MainAxisSize.min, children: [

              Align(
                alignment: Alignment.centerRight,
                child: Container(
                  height: ScreenConstant.defaultHeightThirty,
                  width: ScreenConstant.defaultWidthNinety,
                  margin: EdgeInsets.only(right: ScreenConstant.sizeXL),
                  decoration: BoxDecoration(
                    color: const Color(0xFF50C878),
                    borderRadius: BorderRadiusStyle.roundedBorder10,),
                  child: Center(
                    child: FittedBox(
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 5.0.v),
                        child: Text(
                          "Upload",
                          style: CustomTextStyles.semiBold14TextStyleTablet.copyWith(
                              fontSize : 12.fss
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: getWebSize(20)),

              GridView.builder(
                  padding: EdgeInsets.symmetric(horizontal: 15.ss),
                  shrinkWrap: true,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    mainAxisSpacing: getWebSize(30.ss),
                    crossAxisSpacing: getWebSize(30.ss),
                    childAspectRatio:  1.4,
                  ),
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: 6,
                  itemBuilder: (context, index) {
                    return const SubtractSquareItemTabletWidget();
                  }),
              SizedBox(height: getWebSize(20)),
            ])),

      ]));
}

/// Section Widget
Widget _buildRealEstateDocuments1(BuildContext context) {
  return Container(
      decoration: AppDecoration.outlineBlack9006,
      child: Column(children: [
        _buildContracts(context,
            contractsText: "Real Estate Documents",
            arrowDownImage: ImageConstant.imgArrowDownOnerrorcontainer24x24),
        SizedBox(height: 20.v),
        const FileDocumentWebWidget(),
      ]));
}

/// Section Widget
Widget _buildEditPropertyInformation(BuildContext context) {
  return Container(
      decoration: AppDecoration.outlineBlack9006,
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildContracts(context,
                contractsText: "Edit Property Information",
                arrowDownImage: ImageConstant.imgArrowDownOnerrorcontainer),
            SizedBox(height: getWebSize(40)),


            Text("Property Classification",
                style: CustomTextStyles.medium18000000TextStyleTablet),
            Container(
              height: 15.ss,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  flex: 5,
                  child:  Obx(
                        () => GestureDetector(
                      onTap: () {
                        _homeController.favotitesSelected.value = true;
                        _homeController.savedSelected.value = false;
                      },
                      child: ToggleButtonWidgetTablet(
                        isDisabledWhite: true,
                        borderColor: Colors.grey.withOpacity(0.3),
                        isSelected: _homeController.favotitesSelected.value,
                        text: 'Residential',
                      ),
                    ),
                  ),),
                Expanded(flex:5,child:   Obx(
                      () => GestureDetector(
                    onTap: () {
                      _homeController.favotitesSelected.value = false;
                      _homeController.savedSelected.value = true;
                    },
                    child: ToggleButtonWidgetTablet(
                      isDisabledWhite: true,
                      borderColor: Colors.grey.withOpacity(0.3),
                      isSelected: _homeController.savedSelected.value,
                      text: 'Commercial',
                    ),
                  ),
                ),)
              ],
            ),
            Container(
              height: 10.ss,
            ),
            Text("Property Type",
                style: CustomTextStyles.medium18000000TextStyleTablet),

            Obx(
                  () => GridView.count(
                  physics: const ClampingScrollPhysics(),
                  shrinkWrap: true,
                  crossAxisCount: 4,
                  crossAxisSpacing: 20,
                  children: List.generate(

                      _homeController.propertyType.length, (index) {
                    return AddPropertyWebCardWidget(
                      margin: 0.0.ss,
                      image: _homeController.propertyType[index].image,
                      title: _homeController.propertyType[index].title,
                      onTap: () {
                        debugPrint("_homeController.isTapped.value");
                        for (var element in _homeController.propertyType) {
                          element.isColoured = false;
                        }
                        debugPrint("index:$index");
                        _homeController.propertyType[index].isColoured =
                        !_homeController
                            .propertyType[index].isColoured;
                        _homeController.propertyType.refresh();
                      },
                      isColoured:
                      _homeController.propertyType[index].isColoured,
                    );
                  })),
            ),

            SizedBox(height: getWebSize(20)),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 5,
                  child: Text(
                    "Property Status",
                    style: CustomTextStyles.medium18000000TextStyleTablet.copyWith(
                        fontSize : 11.fss
                    ),
                  ),
                ),
                Expanded(
                  child: Transform.translate(
                    offset: Offset(-14.ss, 0),
                    child: Text(
                      "Bedrooms",
                      style: CustomTextStyles.medium18000000TextStyleTablet.copyWith(
                          fontSize : 11.fss
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Transform.translate(
                    offset: Offset(-4.ss, 0),
                    child: Text(
                      "Bathrooms",
                      style: CustomTextStyles.medium18000000TextStyleTablet.copyWith(
                          fontSize : 11.fss
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Transform.translate(
                    offset: Offset(4.ss, 0),
                    child: Text(
                      "Area square",
                      style: CustomTextStyles.medium18000000TextStyleTablet.copyWith(
                          fontSize : 11.fss
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: getWebSize(20)),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 5,
                  child: Container(
                    margin: EdgeInsets.only(left: 2.h),
                    decoration: AppDecoration.outlineBlack.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder10,
                    ),
                    child:    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          flex: 4,
                          child:  Obx(
                                () => GestureDetector(
                              onTap: () {
                                _homeController.favotitesSelected3.value = true;
                                _homeController.savedSelected3.value = false;
                              },
                              child: ToggleButtonWidgetTablet(
                                isDisabledWhite: true,
                                borderColor: Colors.grey.withOpacity(0.3),
                                isSelected: _homeController.favotitesSelected3.value,
                                text: 'Rented',
                              ),
                            ),
                          ),),
                        Expanded(flex:4,child:   Obx(
                              () => GestureDetector(
                            onTap: () {
                              _homeController.favotitesSelected3.value = false;
                              _homeController.savedSelected3.value = true;
                            },
                            child: ToggleButtonWidgetTablet(
                              isDisabledWhite: true,
                              borderColor: Colors.grey.withOpacity(0.3),
                              isSelected: _homeController.savedSelected3.value,
                              text: 'Vacant',
                            ),
                          ),
                        ),)
                      ],
                    ),
                  ),
                ),
                SizedBox(width: 15.ss),
                Expanded(
                  child: Container(
                    height: 75,
                    padding: EdgeInsets.symmetric(vertical: 5.v,horizontal: 20.h),
                    decoration: AppDecoration.outlineBlack9005.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder10,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "02",
                          style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 12.fss,
                                color: AppColors.blackColor,
                              )),
                        ),
                        Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            color: appTheme.gray10001,
                            borderRadius: BorderRadius.circular(
                              10.h,
                            ),
                            border: Border.all(
                              color: appTheme.black900.withOpacity(0.08),
                              width: 1.h,
                            ),
                          ),
                          child: Center(
                            child: CustomImageView(
                              imagePath: ImageConstant.imgThumbsup,
                              height: 28,

                              alignment: Alignment.bottomCenter,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(width: 15.ss),
                Expanded(
                  child: Container(
                    height: 75,
                    padding: EdgeInsets.symmetric(vertical: 5.v,horizontal: 20.h),
                    decoration: AppDecoration.outlineBlack9005.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder10,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "02",
                          style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 12.fss,
                                color: AppColors.blackColor,
                              )),
                        ),
                        Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            color: appTheme.gray10001,
                            borderRadius: BorderRadius.circular(
                              10.h,
                            ),
                            border: Border.all(
                              color: appTheme.black900.withOpacity(0.08),
                              width: 1.h,
                            ),
                          ),
                          child: Center(
                            child: CustomImageView(
                              imagePath: ImageConstant.imgThumbsup,
                              height: 28,
                              alignment: Alignment.bottomCenter,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(width: 15.ss),
                Expanded(
                  child: Container(
                    height: 75,
                    padding: EdgeInsets.symmetric(vertical: 5.v,horizontal: 10.h),
                    decoration: AppDecoration.outlineBlack9005.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder10,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Flexible(
                          child: Text(
                            "1,215 sqft",
                            maxLines: 1,
                            style: GoogleFonts.poppins(
                                textStyle: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 10.fss,
                                  color: AppColors.blackColor,
                                )),
                          ).paddingOnly(left: 2.ss),
                        ),
                        Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            color: appTheme.gray10001,
                            borderRadius: BorderRadius.circular(
                              10.h,
                            ),
                            border: Border.all(
                              color: appTheme.black900.withOpacity(0.08),
                              width: 1.h,
                            ),
                          ),
                          child: Center(
                            child: CustomImageView(
                              imagePath: ImageConstant.imgThumbsup,
                              height: 28,
                              alignment: Alignment.bottomCenter,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Container(
              height: 15.ss,
            ),
            Text("Project Name",
                style: CustomTextStyles.medium18000000TextStyleTablet),
            Container(
              height: 15.ss,
            ),
            Container(
              height: 40.ss,
              child: CustomTextFormField(
                controller: TextEditingController(),
                hintText: "A beautiful house rent",
                hintStyle: CustomTextStyles.regular18WithHeightTextStyleTablet.copyWith(
                    fontWeight: FontWeight.w500),
                suffix: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: CustomImageView(
                    imagePath: ImageConstant.imgLinkedin,
                    height: 24,
                  ),
                ),
                suffixConstraints: BoxConstraints(
                  maxHeight: 55.v,
                ),
                borderDecoration: TextFormFieldStyleHelper.outlineBlack,
                fillColor: theme.colorScheme.onErrorContainer,
                textStyle: CustomTextStyles.regular18TextStyleTablet.copyWith(
                    fontSize: 18.0, fontWeight: FontWeight.w500,color: Colors.black.withOpacity(0.8)),
              ),
            ),
            Container(
              height: 10.ss,
            ),
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(left: 2.h),
                    child: Text(
                      "Property number",
                      style: CustomTextStyles.medium18000000TextStyleTablet,
                    ),
                  ),
                ),
                SizedBox(width: getWebSize(20)),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(left: 2.h),
                    child: Text(
                      "Property Price",
                      style: CustomTextStyles.medium18000000TextStyleTablet,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: getWebSize(20)),
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(left: 2.h),
                    child: Container(
                      height: 40.ss,
                      child: CustomTextFormField(
                        controller: TextEditingController(),
                        hintText: "1542e11",
                        hintStyle: CustomTextStyles.regular18WithHeightTextStyleTablet.copyWith(
                            fontWeight: FontWeight.w500),
                        contentPadding: EdgeInsets.symmetric(
                          horizontal: 20.h,
                          vertical: 15.v,
                        ),
                        borderDecoration: TextFormFieldStyleHelper.outlineBlack,
                        fillColor: theme.colorScheme.onErrorContainer,
                        textStyle: CustomTextStyles.regular18TextStyleTablet.copyWith(
                            fontSize: 18.0, fontWeight: FontWeight.w500,color: Colors.black.withOpacity(0.8)),
                      ),
                    ),
                  ),
                ),
                SizedBox(width: getWebSize(20)),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(left: 2.h),
                    child: Container(
                      height: 40.ss,
                      child: CustomTextFormField(
                        controller: TextEditingController(),
                        hintText: "54,300,000 AED",
                        hintStyle: CustomTextStyles.regular18WithHeightTextStyleTablet.copyWith(fontWeight: FontWeight.w500),
                        textInputAction: TextInputAction.done,
                        contentPadding: EdgeInsets.symmetric(
                          horizontal: 20.h,
                          vertical: 15.v,
                        ),
                        borderDecoration: TextFormFieldStyleHelper.outlineBlack,
                        fillColor: theme.colorScheme.onErrorContainer,
                        textStyle: CustomTextStyles.regular18TextStyleTablet.copyWith(
                            fontSize: 18.0, fontWeight: FontWeight.w500,color: Colors.black.withOpacity(0.8)),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Container(
              height: 30.ss,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  flex: 5,
                  child:  Obx(
                        () => GestureDetector(
                      onTap: () {
                        _homeController.favotitesSelected.value = true;
                        _homeController.savedSelected.value = false;
                      },
                      child: ToggleButtonWidgetTablet(
                        isDisabledWhite: true,
                        borderColor: Colors.grey.withOpacity(0.3),
                        isSelected: _homeController.favotitesSelected.value,
                        text: 'Single Payment',
                      ),
                    ),
                  ),),
                Expanded(flex:5,child:   Obx(
                      () => GestureDetector(
                    onTap: () {
                      _homeController.favotitesSelected.value = false;
                      _homeController.savedSelected.value = true;
                    },
                    child: ToggleButtonWidgetTablet(
                      isDisabledWhite: true,
                      borderColor: Colors.grey.withOpacity(0.3),
                      isSelected: _homeController.savedSelected.value,
                      text: 'Installments',
                    ),
                  ),
                ),)
              ],
            ),
            Container(
              height: 20.ss,
            ),
          ]));
}
}


