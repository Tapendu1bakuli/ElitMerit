import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_layout_grid/flutter_layout_grid.dart';
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
import 'package:main/views/dashboard/widget/tablet/edit_property_info_tablet_widget.dart';
import 'package:main/views/dashboard/widget/tablet/file_document_tablet_widget.dart';
import 'package:main/views/dashboard/widget/tablet/financial_details_file_widget_tablet.dart';
import 'package:main/views/dashboard/widget/tablet/property_info_contract_tablet_widget.dart';
import 'package:main/views/dashboard/widget/tablet/subtractsquare_item_tablet_widget.dart';
import 'package:sizing/sizing_extension.dart';

class UserPropertyInfoTablet extends StatefulWidget {
  const UserPropertyInfoTablet({super.key});

  @override
  State<UserPropertyInfoTablet> createState() => _UserPropertyInfoTabletState();
}

class _UserPropertyInfoTabletState extends State<UserPropertyInfoTablet>
    with TickerProviderStateMixin {
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
    bool? isLandscape = MediaQuery.of(context).orientation == Orientation.landscape;
    return Scaffold(
      appBar: AppBar(
        scrolledUnderElevation: 0.0,
        leadingWidth: 200,
        centerTitle: true,
        title: Text(
          'User Property Infor..',
          style: CustomTextStyles.bold32Tablet,
        ),
        leading: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30.0),
          child: Row(
            children: [
              GestureDetector(
                  onTap: () => Get.back(),
                  child: Row(
                    children: [
                      Icon(
                        Icons.arrow_back_ios,
                        size: getTabletSize(24),
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
        backgroundColor: const Color(0xFF1E1E1E).withOpacity(0.1),
        elevation: 0,
      ),
      body: Container(
        width: Get.width,
        height: Get.height,
        color: const Color(0xFF1E1E1E).withOpacity(0.1),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: getTabletSize(40)),
             isLandscape ? _bodyView() : _portraitBodyView()
            ],
          ).marginOnly(left: 15.ss, right: 15.ss, top: 5.ss, bottom: 20.ss),
        ),
      ),
    );
  }

  Widget _bodyView() {
    return Column(
      children: [
        _buildOverviewTab(context),
        SizedBox(
          height: getTabletSize(40),
        ),
        _buildContractsTab(context),
        SizedBox(
          height: getTabletSize(40),
        ),
        _buildInstallmentsTab(context),
        SizedBox(
          height: getTabletSize(40),
        ),
        _buildRealEstatePhotos1(context),
        SizedBox(
          height: getTabletSize(40),
        ),
        _buildRealEstateDocuments1(context),
        SizedBox(
          height: getTabletSize(40),
        ),
        _buildEditPropertyInformation(context)
      ],
    ).marginOnly(left: getTabletSize(5), right: getTabletSize(5));
  }

  /// Section Widget
  Widget _buildOverviewTab(BuildContext context) {
    return Container(
        decoration: AppDecoration.outlineBlack9006,
        child: Column(children: [
          _buildContracts(context,
              contractsText: "Overview",
              arrowDownImage: ImageConstant.imgArrowDownOnerrorcontainer),
          SizedBox(height: getTabletSize(20)),
          Card(
              clipBehavior: Clip.antiAlias,
              elevation: getTabletSize(1),
              color: theme.colorScheme.onErrorContainer,
              shape: RoundedRectangleBorder(
                  side: BorderSide(color: appTheme.gray20001, width: 1.h),
                  borderRadius: BorderRadiusStyle.roundedBorder16),
              child: Container(
                  padding:
                  EdgeInsets.symmetric(horizontal: 27.h, vertical: 29.v),
                  decoration: AppDecoration.outlineGray.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder16),
                  child: Column(mainAxisSize: MainAxisSize.min, children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Expanded(child: _financialMetricsView()),
                        Expanded(child: _propertyNotReadyView())
                      ],
                    ),
                    SizedBox(height: getTabletSize(20)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Expanded(child: _rentalContractView()),
                        Expanded(child: _propertyInfoView())
                      ],
                    ),
                  ])))
        ]));
  }

  Widget _financialMetricsView() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomElevatedContainer(
            color: const Color(0xFF0A2342),
            width: ScreenConstant.defaultWidthThreeThirtySix,
            fontSize: 14,
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

  Widget _propertyNotReadyView() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomElevatedContainer(
            color: const Color(0xFF0A2342),
            width: ScreenConstant.defaultWidthFourHundred,
            text: "Rental contract information",
            fontSize: 14,
            buttonStyle: CustomButtonStyles.fillPrimary),
        SizedBox(height: 15.v),
        _buildDescription(context, title: 'Property', subTitle: 'Rented'),
        _buildDescription(context,
            title: 'Including Remaining Days', subTitle: '365 days'),
        _buildDescription(context, title: 'Price', subTitle: '54,300,000 AED'),
      ],
    );
  }

  Widget _rentalContractView() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomElevatedContainer(
            color: const Color(0xFF0A2342),
            width: ScreenConstant.defaultWidthFourHundred,
            text: "Properties Not Ready",
            fontSize: 14,
            buttonStyle: CustomButtonStyles.fillPrimary),
        SizedBox(height: getTabletSize(15.v)),
        _buildDescription(context,
            title: 'Installment Date', subTitle: '12/04/202'),
        _buildDescription(context,
            title: 'Installment Value', subTitle: '94,300,000 AED'),
        _buildDescription(context,
            title: 'Property Delivery Date', subTitle: '12/04/2020'),
      ],
    );
  }

  Widget _propertyInfoView() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: getTabletSize(30)),
        CustomElevatedContainer(
            color: const Color(0xFF0A2342),
            width: ScreenConstant.defaultWidthFourHundred,
            fontSize: 14,
            text: "Properties Information",
            buttonStyle: CustomButtonStyles.fillPrimary),
        SizedBox(height: getTabletSize(15.v)),
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
          GridView.extent(
            physics: const NeverScrollableScrollPhysics(),
            crossAxisSpacing: 20,
            mainAxisSpacing: 20,
            shrinkWrap: true,
            padding: EdgeInsets.zero,
            maxCrossAxisExtent: ScreenConstant.defaultHeightSevenHundred,
            childAspectRatio: 14 / 7,

            children: const <Widget>[
              PropertyDetailsTabletWidget(),
              PropertyDetailsTabletWidget(),
              PropertyDetailsTabletWidget(),
              PropertyDetailsTabletWidget(),
            ],
          )
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
    bool? isLandscape = MediaQuery.of(context).orientation == Orientation.landscape;
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
        flex: isLandscape ? 1 :2,
        child: Text(subTitle,
            maxLines: 3,
            overflow: TextOverflow.ellipsis,
            style: CustomTextStyles.bodySmall9.copyWith(
                color: subTitleColor ?? appTheme.black900,
                fontSize: 9.fss,
                fontWeight: subTitleFontWeight ?? FontWeight.w400)),
      )
    ]).marginOnly(top: 5.v, left: 25.h, right: 5.h, bottom: 2.v);
  }

  /// Common widget
  Widget _buildContracts(
      BuildContext context, {
        required String contractsText,
        required String arrowDownImage,
      }) {
    return Container(
        margin: getTabletMargin(left: 2, right: 2),
        padding: EdgeInsets.symmetric(horizontal: 13.h, vertical: 8.v),
        decoration: AppDecoration.fillGreen
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder10),
        child:
        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Padding(
              padding: getTabletPadding(left: 6, right: 1),
              child: Text(contractsText,
                  style: CustomTextStyles.titleMediumOnErrorContainer_1
                      .copyWith(
                      color: theme.colorScheme.onErrorContainer,
                      fontSize: 14.fss))),
          CustomImageView(
              imagePath: arrowDownImage,
              height: getTabletSize(30),
              width: getTabletSize(30),
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
          SizedBox(height: getTabletSize(40)),
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
                SizedBox(height: getTabletSize(20)),

                GridView.builder(
                    padding: EdgeInsets.symmetric(horizontal: 15.ss),
                    shrinkWrap: true,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      mainAxisSpacing: getTabletSize(30.ss),
                      crossAxisSpacing: getTabletSize(30.ss),
                      childAspectRatio:  1.4,
                    ),
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: 6,
                    itemBuilder: (context, index) {
                      return const SubtractSquareItemTabletWidget();
                    }),
                SizedBox(height: getTabletSize(20)),
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
          const FileDocumentTabletWidget(),
        ]));
  }

  /// Section Widget
  Widget _buildEditPropertyInformation(BuildContext context) {
    return Container(
        decoration: AppDecoration.outlineBlack9006,
        child: Column(children: [
          _buildContracts(context,
              contractsText: "Edit Property Information",
              arrowDownImage: ImageConstant.imgArrowDownOnerrorcontainer),
          SizedBox(height: getTabletSize(40)),
          Align(
              alignment: Alignment.centerLeft,
              child: Text("Property Classification",
                  style: CustomTextStyles.medium18000000TextStyleTablet)),
          SizedBox(height: 12.v),
          Container(
              height: 50.ss,
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
                      fontSize: 12.fss,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w500),
                  unselectedLabelColor: appTheme.gray700,
                  unselectedLabelStyle: TextStyle(
                      fontSize: 12.fss,
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
          SizedBox(
            height: getTabletSize(20),
          ),
          Align(
              alignment: Alignment.topLeft,
              child: Text(
                "Property Type",
                style: CustomTextStyles.medium18000000TextStyleTablet,
              )),
          SizedBox(
            height: getTabletSize(20),
          ),
          const EditPropertyInfoTabletWidget(),
        ]));
  }


  /// Portrait UI For tablet screen

  Widget _portraitBodyView() {
    return Column(
      children: [
        _buildOverviewTabForPortrait(context),
        SizedBox(
          height: getTabletSize(40),
        ),
        _buildContractsPortraitTab(context),
        SizedBox(
          height: getTabletSize(40),
        ),
        _buildInstallmentsTab(context),
        SizedBox(
          height: getTabletSize(40),
        ),
        _buildRealEstatePhotos1(context),
        SizedBox(
          height: getTabletSize(40),
        ),
        _buildRealEstateDocuments1(context),
        SizedBox(
          height: getTabletSize(40),
        ),
        _buildEditPropertyInformation(context)
      ],
    );
  }


  Widget _buildOverviewTabForPortrait(BuildContext context) {
    return Container(
        decoration: AppDecoration.outlineBlack9006,
        child: Column(children: [
          _buildContracts(context,
              contractsText: "Overview",
              arrowDownImage: ImageConstant.imgArrowDownOnerrorcontainer),
          SizedBox(height: getTabletSize(20)),
          Card(
              clipBehavior: Clip.antiAlias,
              elevation: getTabletSize(1),
              color: theme.colorScheme.onErrorContainer,
              shape: RoundedRectangleBorder(
                  side: BorderSide(color: appTheme.gray20001, width: 1.h),
                  borderRadius: BorderRadiusStyle.roundedBorder16),
              child: Container(
                  padding:
                  EdgeInsets.symmetric(horizontal: 20.ss, vertical: 29.v),
                  decoration: AppDecoration.outlineGray.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder16),
                  child: Column(mainAxisSize: MainAxisSize.min, children: [

                    _financialMetricsView(),
                    SizedBox(height: 20.ss),
                    _propertyNotReadyView(),
                    SizedBox(height: 20.ss),
                    _rentalContractView(),
                  SizedBox(height: 20.ss),
                    _propertyInfoView(),

                  ])))
        ]));
  }

  Widget _buildContractsPortraitTab(BuildContext context) {
    return Container(

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
                return const PropertyDetailsTabletWidget();
              })
        ]));
  }

}
