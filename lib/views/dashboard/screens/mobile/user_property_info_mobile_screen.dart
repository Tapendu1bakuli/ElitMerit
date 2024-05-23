import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:main/utils/colors/app_colors.dart';
import 'package:main/utils/core/utils/image_constant.dart';
import 'package:main/utils/core/utils/updated_size_utils.dart';
import 'package:main/utils/theme/app_decoration.dart';
import 'package:main/utils/theme/custom_button_style.dart';
import 'package:main/utils/theme/custom_text_style.dart';
import 'package:main/utils/theme/theme_helper.dart';
import 'package:main/utils/widgets_utils/widgets/custom_drop_down.dart';
import 'package:main/utils/widgets_utils/widgets/custom_elevated_button.dart';
import 'package:main/utils/widgets_utils/widgets/custom_icon_button.dart';
import 'package:main/utils/widgets_utils/widgets/custom_image_view.dart';
import 'package:main/views/dashboard/widget/mobile/edit_property_info_mobile_widget.dart';
import 'package:main/views/dashboard/widget/mobile/financial_details_file_widget_mobilet.dart';
import 'package:sizing/sizing.dart';

import '../../widget/mobile/propertydetails1_item_widget.dart';
import '../../widget/mobile/subtractsquare_item_widget.dart';
import 'package:flutter/material.dart';

class UserPropertyInfoMobileScreen extends StatefulWidget {
  const UserPropertyInfoMobileScreen({super.key});

  @override
  UserPropertyInfoMobileScreenState createState() => UserPropertyInfoMobileScreenState();
}

// ignore_for_file: must_be_immutable
class UserPropertyInfoMobileScreenState
    extends State<UserPropertyInfoMobileScreen> with TickerProviderStateMixin {
  TextEditingController group163Controller = TextEditingController();

  List<String> dropdownItemList = ["Item One", "Item Two", "Item Three"];

  late TabController tabviewController;

  @override
  void initState() {
    super.initState();
    tabviewController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(resizeToAvoidBottomInset: false, body: _bodyView());
  }

  /// Body View
  Widget _bodyView() {
    return SizedBox(
        child: SingleChildScrollView(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
         Padding(
           padding:  EdgeInsets.only(top: 40.ss,left: 15.ss),
           child: Row(
            children: [
              InkWell(
                onTap: (){
                  Get.back();
                },
                child: Icon(
                  Icons.arrow_back_ios,
                  size: 15,
                ),
              ),
                   Padding(
              padding: EdgeInsets.only(left: 4.h),
              child: Text("Back", style: theme.textTheme.bodyLarge))
                 ]),
         ),
      SizedBox(height: 18.v),
      Align(
          alignment: Alignment.centerLeft,
          child: Padding(
              padding: EdgeInsets.only(left: 15.h),
              child: Text("User Property Infor..",
                  style: theme.textTheme.headlineSmall))),
      SizedBox(height: 21.v),
      _buildOverviewTab(context),
      SizedBox(height: 32.v),
      _buildContractsTab(context),
      SizedBox(height: 32.v),
      _buildInstallmentsTab(context),
      SizedBox(height: 35.v),
      _buildRealEstatePhotos1(context),
      SizedBox(height: 36.v),
      _buildRealEstateDocuments1(context),
      SizedBox(height: 40.v),
      _buildEditPropertyInformation(context)
    ])));
  }

  /// Section Widget
  Widget _buildOverviewTab(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 19.h),
        decoration: AppDecoration.outlineBlack9006,
        child: Column(children: [
          _buildContracts(context,
              contractsText: "Overview",
              arrowDownImage: ImageConstant.imgArrowDownOnerrorcontainer),
          SizedBox(height: 17.v),
          Card(
              clipBehavior: Clip.antiAlias,
              elevation: 0,
              color: theme.colorScheme.onErrorContainer,
              shape: RoundedRectangleBorder(
                  side: BorderSide(color: appTheme.gray20001, width: 1.h),
                  borderRadius: BorderRadiusStyle.roundedBorder16),
              child: Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 27.h, vertical: 29.v),
                  decoration: AppDecoration.outlineGray.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder16),
                  child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomElevatedContainer(
                          color: Color(0xFF0A2342),
                            width: 180.h,
                            text: "Financial metrics",
                            buttonStyle: CustomButtonStyles.fillPrimary),
                        SizedBox(height: 15.v),
                        _buildDescription(context,
                            title: 'Cash Flow', subTitle: '80,300,000 AED'),
                        _buildDescription(context,
                            title: 'Including Income',
                            subTitle: '75,300,000 AED'),
                        _buildDescription(context,
                            title: 'Expenses', subTitle: '54,300,000 aed'),
                        SizedBox(height: 15.v),
                        CustomElevatedContainer(
                            color: Color(0xFF0A2342),
                            width: 237.adaptSize,
                            text: "Rental contract information",
                            buttonStyle: CustomButtonStyles.fillPrimary),
                        SizedBox(height: 15.v),
                        _buildDescription(context,
                            title: 'Property', subTitle: 'Rented'),
                        _buildDescription(context,
                            title: 'Including Remaining Days',
                            subTitle: '365 days'),
                        _buildDescription(context,
                            title: 'Price', subTitle: '54,300,000 AED'),
                        SizedBox(height: 15.v),
                        CustomElevatedContainer(
                            color: Color(0xFF0A2342),
                            width: 237.adaptSize,
                            text: "Properties Not Ready",
                            buttonStyle: CustomButtonStyles.fillPrimary),
                        SizedBox(height: 15.v),
                        _buildDescription(context,
                            title: 'Installment Date', subTitle: '12/04/202'),
                        _buildDescription(context,
                            title: 'Installment Value',
                            subTitle: '94,300,000 AED'),
                        _buildDescription(context,
                            title: 'Property Delivery Date',
                            subTitle: '12/04/2020'),
                        SizedBox(height: 15.v),
                        CustomElevatedContainer(
                            color: Color(0xFF0A2342),
                            width: 252.adaptSize,
                            text: "Property Information",
                            buttonStyle: CustomButtonStyles.fillPrimary),
                        SizedBox(height: 15.v),
                        _buildDescription(context,
                            title: 'Building Name',
                            subTitle: 'Excepteur sint occaecat'),
                        _buildDescription(context,
                            title: 'Property Number', subTitle: '1245e25'),
                        _buildDescription(context,
                            title: 'Condition',
                            subTitle: 'Good',
                            subTitleColor: AppColors.primaryColor,
                            subTitleFontWeight: FontWeight.w600),
                        _buildDescription(context,
                            title: 'Purchase Price',
                            subTitle: '54,300,000 AED'),
                      ])))
        ]));
  }

  /// Section Widget
  Widget _buildContractsTab(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 19.h),
        decoration: AppDecoration.outlineBlack9006,
        child: Column(children: [
          _buildContracts(context,
              contractsText: "Contracts",
              arrowDownImage: ImageConstant.imgArrowDownOnerrorcontainer24x24),
          SizedBox(height: 22.v),
          ListView.separated(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              separatorBuilder: (context, index) {
                return SizedBox(height: 28.v);
              },
              itemCount: 3,
              itemBuilder: (context, index) {
                return const PropertyDetails1ItemWidget();
              })
        ]));
  }

  /// Section Widget
  Widget _buildInstallmentsTab(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 19.h),
        decoration: AppDecoration.outlineBlack9006,
        child: Column(children: [
          _buildContracts(context,
              contractsText: "Installments",
              arrowDownImage: ImageConstant.imgArrowDownOnerrorcontainer24x24),
          SizedBox(height: 23.v),
          FinancialDetails(),
        ]));
  }

  /// Section Widget
  Widget _buildRealEstatePhotos1(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 19.h),
        decoration: AppDecoration.outlineBlack9006,
        child: Column(children: [
          _buildContracts(context,
              contractsText: "Real Estate Photos",
              arrowDownImage: ImageConstant.imgArrowDown24x24),
          SizedBox(height: 23.v),
          Container(
              padding: EdgeInsets.symmetric(horizontal: 15.h, vertical: 21.v),
              decoration: AppDecoration.outlineBlack900
                  .copyWith(borderRadius: BorderRadiusStyle.roundedBorder10),
              child: Column(mainAxisSize: MainAxisSize.min, children: [
                Align(
                    alignment: Alignment.centerRight,
                    child: Container(
                        width: 80.h,
                        height: 30,
                        alignment: Alignment.center,
                        padding: EdgeInsets.symmetric(
                            horizontal: 18.h, vertical: 2.v),
                        decoration: AppDecoration.outlineGreen40001.copyWith(
                            borderRadius: BorderRadius.circular(6.ss)),
                        child: Text("Upload",
                            style:
                                CustomTextStyles.labelMediumOnErrorContainer))),
                SizedBox(height: 18.v),
                GridView.builder(
                    shrinkWrap: true,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        mainAxisExtent: 104.v,
                        crossAxisCount: 3,
                        mainAxisSpacing: 8.h,
                        crossAxisSpacing: 8.h),
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: 6,
                    itemBuilder: (context, index) {
                      return const SubtractsquareItemWidget();
                    }),
                SizedBox(height: 10.v)
              ]))
        ]));
  }

  /// Section Widget
  Widget _buildFileManagement(BuildContext context) {
    return Container(
        decoration: AppDecoration.outlineBlack900
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder10),
        child: Column(mainAxisSize: MainAxisSize.min, children: [
          SizedBox(height: 17.v),
          Padding(
              padding: EdgeInsets.only(left: 26.h, right: 16.h),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("File Documents",
                        style: CustomTextStyles.titleMediumBlack90018),
                    Container(
                        width: 100.h,
                        height: 30.h,
                        alignment: Alignment.center,
                        padding: EdgeInsets.symmetric(
                            horizontal: 10.h, vertical: 2.v),
                        decoration: AppDecoration.outlineGreen40001.copyWith(
                            borderRadius: BorderRadius.circular(6.ss)),
                        child: Text("Upload new",
                            style:
                                CustomTextStyles.labelMediumOnErrorContainer))
                  ])),
          SizedBox(height: 15.v),
          SizedBox(
              height: 350.v,
              width: 391.h,
              child: Stack(alignment: Alignment.topCenter, children: [
                Align(
                    alignment: Alignment.center,
                    child: Container(
                        padding: EdgeInsets.all(15.h),
                        decoration: AppDecoration.outlineBlack9001,
                        child:
                            Column(mainAxisSize: MainAxisSize.min, children: [
                          SizedBox(height: 43.v),
                          _buildMortgageOne(context,
                              loremIpsumText:
                                  "Lorem ipsum \ndolor sit amet, \nnsectetur ",
                              timeText: "07:25PM",
                              nameText: "John Doe"),
                          SizedBox(height: 24.v),
                          _buildMortgageOne(context,
                              loremIpsumText:
                                  "Lorem ipsum \ndolor sit amet, \nnsectetur ",
                              timeText: "07:25PM",
                              nameText: "John Doe"),
                          SizedBox(height: 24.v),
                          _buildMortgageOne(context,
                              loremIpsumText:
                                  "Lorem ipsum \ndolor sit amet, \nnsectetur ",
                              timeText: "07:25PM",
                              nameText: "John Doe"),
                          SizedBox(height: 24.v),
                          _buildMortgageOne(context,
                              loremIpsumText:
                                  "Lorem ipsum \ndolor sit amet, \nnsectetur ",
                              timeText: "07:25PM",
                              nameText: "John Doe")
                        ]))),
                Align(
                    alignment: Alignment.topCenter,
                    child: Container(
                        margin: EdgeInsets.only(bottom: 303.v),
                        padding: EdgeInsets.symmetric(
                            horizontal: 16.h, vertical: 7.v),
                        decoration: AppDecoration.fillGreen,
                        child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                  padding: EdgeInsets.only(bottom: 5.v),
                                  child: Text("Files",
                                      style: theme.textTheme.titleSmall)),
                              const Spacer(flex: 20),
                              Padding(
                                  padding: EdgeInsets.only(bottom: 3.v),
                                  child: Text("Description",
                                      style: theme.textTheme.titleSmall)),
                              const Spacer(flex: 23),
                              Padding(
                                  padding: EdgeInsets.only(bottom: 5.v),
                                  child: Text("time",
                                      style: theme.textTheme.titleSmall)),
                              const Spacer(flex: 25),
                              Padding(
                                  padding: EdgeInsets.only(bottom: 5.v),
                                  child: Text("Name",
                                      style: theme.textTheme.titleSmall)),
                              const Spacer(flex: 31)
                            ])))
              ]))
        ]));
  }

  /// Section Widget
  Widget _buildRealEstateDocuments1(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 19.h),
        decoration: AppDecoration.outlineBlack9006,
        child: Column(children: [
          _buildContracts(context,
              contractsText: "Real Estate Documents",
              arrowDownImage: ImageConstant.imgArrowDownOnerrorcontainer24x24),
          SizedBox(height: 20.v),
          _buildFileManagement(context)
        ]));
  }

  /// Section Widget
  Widget _buildEditPropertyInformation(BuildContext context) {
    return Container(
        decoration: AppDecoration.outlineBlack9006,

        child: Column(children: [

          Container(
            margin: EdgeInsets.symmetric(horizontal: 19.h),
            child: _buildContracts(context,
                contractsText: "Edit Property Information",
                arrowDownImage: ImageConstant.imgArrowDownOnerrorcontainer24x24),
          ),
          SizedBox(height: 27.v),
          Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                  padding: EdgeInsets.only(left: 20.h),
                  child: Text("Property Classification",
                      style: CustomTextStyles.titleMediumGray9000118))),
          SizedBox(height: 12.v),
          Container(
              margin: EdgeInsets.symmetric(horizontal: 20.h),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10.h),
                boxShadow: <BoxShadow>[
                  BoxShadow(
                      color: const Color(0xFF000000).withOpacity(0.3),
                      blurRadius: 3.0,
                     )
                ],
              ),
              child: TabBar(
                  controller: tabviewController,
                  labelPadding: EdgeInsets.zero,
                  labelColor: theme.colorScheme.onErrorContainer,
                  labelStyle: TextStyle(
                      fontSize: 16.fSize,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w500),
                  unselectedLabelColor: appTheme.gray700,
                  unselectedLabelStyle: TextStyle(
                      fontSize: 16.fSize,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w500),
                  indicatorSize: TabBarIndicatorSize.tab,
                  indicator: BoxDecoration(
                      color: AppColors.primaryColor,
                      borderRadius: BorderRadius.circular(10.h)),
                  tabs: const [
                    Tab(child: Text("Residential")),
                    Tab(child: Text("Commercial"))

                  ])),
          const UserPropertyInformationScreenUiPage(),
          SizedBox(height: 27.v),
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
    return Row(mainAxisAlignment: MainAxisAlignment.start, children: [
      Expanded(
        child: Text(title,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: CustomTextStyles.bodySmall9.copyWith(
                color: appTheme.black900,
                fontSize: 9.fss,
                fontWeight: FontWeight.w400)),
      ),
      Text(separatorText ?? ':',
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
              style: CustomTextStyles.bodySmall9.copyWith(
                  color: appTheme.black900,
                  fontSize: 9.fss,
                  fontWeight: FontWeight.w400))
          .marginOnly(right: 15.ss),
      Expanded(
        child: Text(subTitle,
            maxLines: 3,
            overflow: TextOverflow.ellipsis,
            style: CustomTextStyles.bodySmall9.copyWith(
                color: subTitleColor ?? appTheme.black900,
                fontSize: 9.fss,
                fontWeight: subTitleFontWeight ?? FontWeight.w400)),
      )
    ]).marginOnly(top: 5.v, left: 10.h, right: 5.h, bottom: 2.v);
  }

  /// Common widget
  Widget _buildContracts(
    BuildContext context, {
    required String contractsText,
    required String arrowDownImage,
  }) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 13.h, vertical: 8.v),
        decoration: AppDecoration.fillGreen
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder10),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Padding(
              padding: EdgeInsets.only(left: 6.h, top: 1.v),
              child: Text(contractsText,
                  style: CustomTextStyles.titleMediumOnErrorContainer_1
                      .copyWith(color: theme.colorScheme.onErrorContainer))),
          CustomImageView(
              imagePath: arrowDownImage,
              height: 24.adaptSize,
              width: 24.adaptSize,
              margin: EdgeInsets.only(top: 1.v))
        ]));
  }

  /// Common widget
  Widget _buildMortgageOne(
    BuildContext context, {
    required String loremIpsumText,
    required String timeText,
    required String nameText,
  }) {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      CustomImageView(
          imagePath: ImageConstant.imgMortgage1,
          height: 35.adaptSize,
          width: 35.adaptSize,
          margin: EdgeInsets.only(top: 2.v, bottom: 3.v)),
      Container(
          width: 99.h,
          margin: EdgeInsets.only(left: 21.h),
          child: Text(loremIpsumText,
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
              style: theme.textTheme.bodyMedium!
                  .copyWith(color: appTheme.black900, height: 1.14))),
      Padding(
          padding: EdgeInsets.only(left: 21.h, top: 14.v, bottom: 15.v),
          child: Text(timeText,
              style: theme.textTheme.bodyMedium!
                  .copyWith(color: appTheme.black900))),
      Padding(
          padding: EdgeInsets.only(left: 22.h, top: 14.v, bottom: 15.v),
          child: Text(nameText,
              style: theme.textTheme.bodyMedium!
                  .copyWith(color: appTheme.black900))),
      Padding(
          padding: EdgeInsets.only(left: 15.h, top: 14.v, bottom: 15.v),
          child: CustomIconButton(
              height: 21.adaptSize,
              width: 21.adaptSize,
              padding: EdgeInsets.all(5.h),
              decoration: IconButtonStyleHelper.fillDeepOrangeA,
              child: CustomImageView(
                  imagePath: ImageConstant.imgThumbsUpOnerrorcontainer)))
    ]);
  }

  /// Navigates back to the previous screen.
  onTapImgArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }
}
