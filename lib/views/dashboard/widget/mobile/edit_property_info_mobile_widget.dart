import 'package:get/get.dart';
import 'package:main/utils/colors/app_colors.dart';
import 'package:main/utils/core/utils/image_constant.dart';
import 'package:main/utils/core/utils/updated_size_utils.dart';
import 'package:main/utils/theme/app_decoration.dart';
import 'package:main/utils/theme/custom_text_style.dart';
import 'package:main/utils/theme/theme_helper.dart';
import 'package:main/utils/widgets_utils/widgets/custom_elevated_button.dart';
import 'package:main/utils/widgets_utils/widgets/custom_image_view.dart';
import 'package:main/utils/widgets_utils/widgets/custom_text_form_field.dart';
import 'package:main/views/dashboard/controller/home_controller.dart';

import 'apartment_item_widget.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class UserPropertyInformationScreenUiPage extends StatefulWidget {
  const UserPropertyInformationScreenUiPage({Key? key})
      : super(
          key: key,
        );

  @override
  UserPropertyInformationScreenUiPageState createState() =>
      UserPropertyInformationScreenUiPageState();
}

class UserPropertyInformationScreenUiPageState
    extends State<UserPropertyInformationScreenUiPage>
    with AutomaticKeepAliveClientMixin<UserPropertyInformationScreenUiPage> {
  TextEditingController nameController = TextEditingController();

  TextEditingController eElevenController = TextEditingController();

  TextEditingController priceController = TextEditingController();
  final HomeController _homeController = Get.put(HomeController());

  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    return _buildPropertyType(context);
  }

  /// Section Widget
  Widget _buildPropertyType(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 35.v),
        Padding(
          padding: EdgeInsets.only(
            left: 21.h,
            right: 17.h,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Property Type",
                style: CustomTextStyles.titleMediumGray9000118,
              ),
              SizedBox(height: 11.v),
           Padding(
                  padding: EdgeInsets.only(left: 1.h),
                  child: GridView.builder(
                    shrinkWrap: true,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      mainAxisExtent: 135.v,
                      crossAxisCount: 2,
                      mainAxisSpacing: 11.h,
                      crossAxisSpacing: 11.h,
                    ),
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: _homeController.propertyType.length,
                    itemBuilder: (context, index) {

                      return Obx(
                              () => InkWell(
                          onTap: (){

                            _homeController.selectedIndex.value = index;
                          },
                          child: Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: 20.h,
                              vertical: 21.v,
                            ),
                            decoration: BoxDecoration(
                              color:  _homeController.selectedIndex.value == index ?
                              AppColors.primaryColor: AppColors.whiteColor,
                              borderRadius: BorderRadiusStyle.roundedBorder10,
                              boxShadow: [ BoxShadow(
                                color: Colors.grey.shade200,
                                spreadRadius: 2.h,
                                blurRadius: 2.h,

                              ),]
                            ),
                            child: ApartmentItemWidget(
                              index:  index,
                              title: _homeController.propertyType[index].title!,
                              image: _homeController.propertyType[index].image!,
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),

              SizedBox(height: 29.v),
              Padding(
                padding: EdgeInsets.only(left: 1.h),
                child: Text(
                  "Property Status",
                  style: CustomTextStyles.titleMediumGray9000118,
                ),
              ),
              SizedBox(height: 11.v),
              Container(
                margin: EdgeInsets.only(left: 2.h),
                decoration: AppDecoration.outlineBlack.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder10,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomElevatedButton(
                      width: 190.h,
                      text: "Rented",
                      buttonTextStyle:
                          CustomTextStyles.titleMediumOnErrorContainer_1,
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        top: 16.v,
                        right: 68.h,
                        bottom: 13.v,
                      ),
                      child: Text(
                        "Vacant",
                        style: theme.textTheme.titleMedium,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 35.v),
              Padding(
                padding: EdgeInsets.only(
                  left: 1.h,
                  right: 43.h,
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(bottom: 2.v),
                      child: Text(
                        "Bedrooms",
                        style: CustomTextStyles.titleMediumGray9000118,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 25.h,
                        bottom: 2.v,
                      ),
                      child: Text(
                        "Bathrooms",
                        style: CustomTextStyles.titleMediumGray9000118,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 17.h,
                        top: 2.v,
                      ),
                      child: Text(
                        "Area square",
                        style: CustomTextStyles.titleMediumGray9000118,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 12.v),
              Padding(
                padding: EdgeInsets.only(left: 2.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 97.h,
                      padding: EdgeInsets.symmetric(vertical: 9.v),
                      decoration: AppDecoration.outlineBlack9005.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder10,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(
                              top: 6.v,
                              bottom: 5.v,
                            ),
                            child: Text(
                              "02",
                              style: theme.textTheme.titleMedium,
                            ),
                          ),
                          Container(
                            height: 36.v,
                            width: 38.h,
                            margin: EdgeInsets.only(top: 1.v),
                            child: Stack(
                              alignment: Alignment.bottomCenter,
                              children: [
                                Align(
                                  alignment: Alignment.center,
                                  child: Container(
                                    height: 35.v,
                                    width: 38.h,
                                    decoration: BoxDecoration(
                                      color: appTheme.gray10001,
                                      borderRadius: BorderRadius.circular(
                                        10.h,
                                      ),
                                      border: Border.all(
                                        color: appTheme.black900
                                            .withOpacity(0.08),
                                        width: 1.h,
                                      ),
                                    ),
                                  ),
                                ),
                                CustomImageView(
                                  imagePath: ImageConstant.imgThumbsup,
                                  height: 24.adaptSize,
                                  width: 24.adaptSize,
                                  alignment: Alignment.bottomCenter,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 10.h,
                        vertical: 9.v,
                      ),
                      decoration: AppDecoration.outlineBlack9005.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder10,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(
                              top: 6.v,
                              bottom: 5.v,
                            ),
                            child: Text(
                              "02",
                              style: theme.textTheme.titleMedium,
                            ),
                          ),
                          Container(
                            height: 36.v,
                            width: 38.h,
                            margin: EdgeInsets.only(
                              left: 15.h,
                              top: 1.v,
                            ),
                            child: Stack(
                              alignment: Alignment.bottomCenter,
                              children: [
                                Align(
                                  alignment: Alignment.center,
                                  child: Container(
                                    height: 35.v,
                                    width: 38.h,
                                    decoration: BoxDecoration(
                                      color: appTheme.gray10001,
                                      borderRadius: BorderRadius.circular(
                                        10.h,
                                      ),
                                      border: Border.all(
                                        color: appTheme.black900
                                            .withOpacity(0.08),
                                        width: 1.h,
                                      ),
                                    ),
                                  ),
                                ),
                                CustomImageView(
                                  imagePath: ImageConstant.imgThumbsup,
                                  height: 24.adaptSize,
                                  width: 24.adaptSize,
                                  alignment: Alignment.bottomCenter,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 12.h,
                        vertical: 9.v,
                      ),
                      decoration: AppDecoration.outlineBlack9005.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder10,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(
                              top: 8.v,
                              bottom: 3.v,
                            ),
                            child: Text(
                              "1,215 sqft",
                              style: theme.textTheme.titleMedium,
                            ),
                          ),
                          Container(
                            height: 36.v,
                            width: 38.h,
                            margin: EdgeInsets.only(
                              left: 17.h,
                              top: 1.v,
                            ),
                            child: Stack(
                              alignment: Alignment.bottomCenter,
                              children: [
                                Align(
                                  alignment: Alignment.center,
                                  child: Container(
                                    height: 35.v,
                                    width: 38.h,
                                    decoration: BoxDecoration(
                                      color: appTheme.gray10001,
                                      borderRadius: BorderRadius.circular(
                                        10.h,
                                      ),
                                      border: Border.all(
                                        color: appTheme.black900
                                            .withOpacity(0.08),
                                        width: 1.h,
                                      ),
                                    ),
                                  ),
                                ),
                                CustomImageView(
                                  imagePath: ImageConstant.imgThumbsup,
                                  height: 24.adaptSize,
                                  width: 24.adaptSize,
                                  alignment: Alignment.bottomCenter,
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
              SizedBox(height: 35.v),
              Padding(
                padding: EdgeInsets.only(left: 1.h),
                child: Text(
                  "Project name",
                  style: CustomTextStyles.titleMediumGray9000118,
                ),
              ),
              SizedBox(height: 12.v),
              Padding(
                padding: EdgeInsets.only(left: 2.h),
                child: CustomTextFormField(
                  controller: nameController,
                  hintText: "A beautiful house rent",
                  hintStyle: theme.textTheme.titleMedium!,
                  suffix: Container(
                    margin: EdgeInsets.fromLTRB(30.h, 15.v, 14.h, 16.v),
                    child: CustomImageView(
                      imagePath: ImageConstant.imgLinkedin,
                      height: 24.adaptSize,
                      width: 24.adaptSize,
                    ),
                  ),
                  suffixConstraints: BoxConstraints(
                    maxHeight: 55.v,
                  ),
                  borderDecoration: TextFormFieldStyleHelper.outlineBlack,
                  fillColor: theme.colorScheme.onErrorContainer,
                ),
              ),
              SizedBox(height: 19.v),
              Padding(
                padding: EdgeInsets.only(left: 2.h),
                child: Text(
                  "Property number",
                  style: CustomTextStyles.titleMediumGray9000118,
                ),
              ),
              SizedBox(height: 11.v),
              Padding(
                padding: EdgeInsets.only(left: 2.h),
                child: CustomTextFormField(
                  controller: eElevenController,
                  hintText: "1542e11",
                  hintStyle: theme.textTheme.titleMedium!,
                  contentPadding: EdgeInsets.symmetric(
                    horizontal: 20.h,
                    vertical: 15.v,
                  ),
                  borderDecoration: TextFormFieldStyleHelper.outlineBlack,
                  fillColor: theme.colorScheme.onErrorContainer,
                ),
              ),
              SizedBox(height: 18.v),
              Padding(
                padding: EdgeInsets.only(left: 2.h),
                child: Text(
                  "Property Price",
                  style: CustomTextStyles.titleMediumGray9000118,
                ),
              ),
              SizedBox(height: 12.v),
              Padding(
                padding: EdgeInsets.only(left: 2.h),
                child: CustomTextFormField(
                  controller: priceController,
                  hintText: "54,300,000 AED",
                  hintStyle: theme.textTheme.titleMedium!,
                  textInputAction: TextInputAction.done,
                  contentPadding: EdgeInsets.symmetric(
                    horizontal: 20.h,
                    vertical: 15.v,
                  ),
                  borderDecoration: TextFormFieldStyleHelper.outlineBlack,
                  fillColor: theme.colorScheme.onErrorContainer,
                ),
              ),
              SizedBox(height: 26.v),
              Container(
                margin: EdgeInsets.only(left: 2.h),
                decoration: AppDecoration.outlineBlack.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder10,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomElevatedButton(
                      width: 215.h,
                      text: "Single Payment",
                      buttonTextStyle:
                          CustomTextStyles.titleMediumOnErrorContainer_1,
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        top: 15.v,
                        right: 33.h,
                        bottom: 14.v,
                      ),
                      child: Text(
                        "Installments",
                        style: theme.textTheme.titleMedium,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
