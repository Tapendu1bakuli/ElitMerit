import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get/get_rx/get_rx.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:sizing/sizing.dart';

import '../models/lsit_of_number.dart';
import '../models/property_model.dart';
import '../models/property_type_model.dart';
import '../widget/mobile/similar_properties_list_Widget.dart';
import '../widget/tablet/similar_properties_list_tablet.dart';

class HomeController extends GetxController {
  RxBool isOnFrame = false.obs;
  RxBool isOnClad = true.obs;
  RxBool isPartial = false.obs;
  RxBool isFull = true.obs;
  RxBool isNo = false.obs;
  RxList<String> apartmentStatus = <String>["Clad","on Frame"].obs;
  RxList<String> furnitureOptions = <String>["Full","Partial", "no"].obs;
  int currentPage = 0;
  PageController pageController = PageController();
  RxInt activeIndex = 0.obs;
  RxInt activeIndexTablet = 0.obs;
  List<Widget> images = [
    Container(padding:EdgeInsets.only(bottom: 20.ss),child: SimilarPropertiesListWidget()),
    Container(padding:EdgeInsets.only(bottom: 20.ss),child: SimilarPropertiesListWidget()),
    Container(padding:EdgeInsets.only(bottom: 20.ss),child: SimilarPropertiesListWidget()),
    Container(padding:EdgeInsets.only(bottom: 20.ss),child: SimilarPropertiesListWidget()),
  ];
  List<Widget> imagesTablet = [
    Container(padding:EdgeInsets.only(bottom: 20.ss),child: SimilarPropertiesListWidgetTablet()),
    Container(padding:EdgeInsets.only(bottom: 20.ss),child: SimilarPropertiesListWidgetTablet()),
    Container(padding:EdgeInsets.only(bottom: 20.ss),child: SimilarPropertiesListWidgetTablet()),
    Container(padding:EdgeInsets.only(bottom: 20.ss),child: SimilarPropertiesListWidgetTablet()),
  ];
  List<Widget> imagesWeb = [
    Container(padding:EdgeInsets.only(bottom: 20.ss),child: SimilarPropertiesListWidgetTablet()),
    Container(padding:EdgeInsets.only(bottom: 20.ss),child: SimilarPropertiesListWidgetTablet()),
    Container(padding:EdgeInsets.only(bottom: 20.ss),child: SimilarPropertiesListWidgetTablet()),
    Container(padding:EdgeInsets.only(bottom: 20.ss),child: SimilarPropertiesListWidgetTablet()),
  ];
  RxString temporaryVehicleImageName = "".obs;
  RxString temporaryVehicleImagePath = "".obs;
  RxString temporaryDocImageName = "".obs;
  RxString temporaryDocImagePath = "".obs;
  var selectedIndex = 0.obs;
  TextEditingController searchPropertiesController = TextEditingController();
  List<String> locations = ['A', 'B', 'C', 'D']; // Option 2
  String? selectedLocation;
  var isAgreeTermsAndPrivacy = false.obs;
  RxBool isSelected = true.obs;
  RxBool favotitesSelected = true.obs;
  RxBool isSelected3 = true.obs;
  RxBool favotitesSelected3 = true.obs;
  RxBool isSelected1 = true.obs;
  RxBool favotitesSelected1 = true.obs;
  RxBool isSelected2 = true.obs;
  RxBool favotitesSelected2 = true.obs;
  RxBool savedSelected = false.obs;
  RxBool savedSelected1 = false.obs;
  RxBool savedSelected2 = false.obs;
  RxBool savedSelected3 = false.obs;
  final ScrollController scrollController = ScrollController();
  List<PropertyListModelListModel> topMenuList = [
    PropertyListModelListModel(
        image: "asset/icons/tablet/first_property_image.png",
        amount: "54,300,000",
        title: "Excepteur sint occaecat cupidatat",
        subTitle: "12 no Excepteur sint occaecat cupidatat",
        bed: "3",
        bathroom: "2",
        squrefoot: "12,245",
        location: "2"),
    PropertyListModelListModel(
        image: "asset/icons/tablet/first_property_image.png",
        amount: "54,300,000",
        title: "Excepteur sint occaecat cupidatat",
        subTitle: "12 no Excepteur sint occaecat cupidatat",
        bed: "3",
        bathroom: "2",
        squrefoot: "12,245",
        location: "2"),
    PropertyListModelListModel(
        image: "asset/icons/tablet/first_property_image.png",
        amount: "54,300,000",
        title: "Excepteur sint occaecat cupidatat",
        subTitle: "12 no Excepteur sint occaecat cupidatat",
        bed: "3",
        bathroom: "2",
        squrefoot: "12,245",
        location: "2"),
  ];
  RxList<ListOfNumbersModel> listOfNumber = [
    ListOfNumbersModel(title: "1", isColoured: true),
    ListOfNumbersModel(title: "2",isColoured: false),
    ListOfNumbersModel(title: "3",isColoured: false),
    ListOfNumbersModel(title: "4",isColoured: false),
    ListOfNumbersModel(title: "5",isColoured: false),
    ListOfNumbersModel(title: "6",isColoured: false),
    ListOfNumbersModel(title: "7",isColoured: false),
    ListOfNumbersModel(title: "8+",isColoured: false),
  ].obs;
  RxList<ListOfNumbersModel> listOfNumberSecond = [
    ListOfNumbersModel(title: "1", isColoured: true),
    ListOfNumbersModel(title: "2",isColoured: false),
    ListOfNumbersModel(title: "3",isColoured: false),
    ListOfNumbersModel(title: "4",isColoured: false),
    ListOfNumbersModel(title: "5",isColoured: false),
    ListOfNumbersModel(title: "6",isColoured: false),
    ListOfNumbersModel(title: "7",isColoured: false),
    ListOfNumbersModel(title: "8+",isColoured: false),
  ].obs;
  RxList<ListOfNumbersModel> propertyTypeModel = [
    ListOfNumbersModel(title: "1", isColoured: true),
    ListOfNumbersModel(title: "2",isColoured: false),
    ListOfNumbersModel(title: "3",isColoured: false),
    ListOfNumbersModel(title: "4",isColoured: false),
    ListOfNumbersModel(title: "5",isColoured: false),
    ListOfNumbersModel(title: "6",isColoured: false),
    ListOfNumbersModel(title: "7",isColoured: false),
    ListOfNumbersModel(title: "8+",isColoured: false),
  ].obs;
  RxList<PropertyTypeModel> propertyType = [
    PropertyTypeModel(
        isColoured: true,
        image: "asset/icons/tablet/ic_apartment.png",
        title: "Apartment",
        onTap: () {}),
    PropertyTypeModel(
        isColoured: false,
        image: "asset/icons/tablet/ic_green_villa.png",
        title: "Villa",
        onTap: () {}),
    PropertyTypeModel(
        isColoured: false,
        image: "asset/icons/tablet/ic_townhouse_green.png",
        title: "Townhouse",
        onTap: () {}),
    PropertyTypeModel(
        isColoured: false,
        image: "asset/icons/tablet/ic_green_land.png",
        title: "Land",
        onTap: () {}),
  ].obs;
  RxList<PropertyTypeModel> propertyTypeForFilter = [
    PropertyTypeModel(
        isColoured: true,
        image: "asset/icons/tablet/apartment_mobile.svg",
        title: "Apartment",
        onTap: () {}),
    PropertyTypeModel(
        isColoured: false,
        image: "asset/icons/tablet/villa_mobile.svg",
        title: "Villa",
        onTap: () {}),
    PropertyTypeModel(
        isColoured: false,
        image: "asset/icons/tablet/hotel_apartment_mobile.svg",
        title: "Hotel Apartment",
        onTap: () {}),
    PropertyTypeModel(
        isColoured: false,
        image: "asset/icons/tablet/townhouse_mobile.svg",
        title: "Townhouse",
        onTap: () {}),
  ].obs;
  TextEditingController addLeaseContractEmail = TextEditingController();
RxBool isEmailError = false.obs;
  String? validateEmail(String? email) {
    String pattern =
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
    RegExp regex = RegExp(pattern);
    Future.delayed(Duration.zero, () async {
      if (email == null || email.isEmpty) {
        isEmailError.value = true;
        return null;
      } else if (!regex.hasMatch(email)) {
        isEmailError.value = true;
        return null;
      } else {
        isEmailError.value = false;
      }
      isEmailError.value = false;
    });
    return null;
  }
  String? validatePanNumber(String panNumber) {
    // Regular expression for PAN number validation
    RegExp regex = RegExp(r'^[A-Z]{5}[0-9]{4}[A-Z]{1}$');
    return regex.hasMatch(panNumber) ? null : "Enter valid PAN no";
  }
}
