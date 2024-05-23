import 'package:flutter/material.dart';
import 'package:main/utils/core/utils/updated_size_utils.dart';
import 'package:main/utils/theme/theme_helper.dart';
import 'package:sizing/sizing.dart';

import '../screen_constants.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  //Web
  static get regular18Web => TextStyle(
    height: 2,
      fontFamily: "Poppins",
      fontSize: 12.fss,
      color: Color(0xFF232323).withOpacity(0.2),
      fontWeight: FontWeight.w400);
  static get regular18333333Web => TextStyle(
      fontFamily: "Poppins",
      fontSize: 12.fss,
      color: Color(0xFF333333).withOpacity(0.89),
      fontWeight: FontWeight.w400);
  static get hintStyleAccountWithHeightSettingsTablet => TextStyle(
    height: 2,
      fontFamily: "Poppins",
      fontSize: 18,
      color: Color(0xff232323).withOpacity(0.56),
      fontWeight: FontWeight.w400);
  static get medium12WithHeightTextStyleTablet => TextStyle(
    height: 2,
    fontFamily: "Poppins",
    fontSize: 12.fss,
    color: Color(0xFF6A6A6A),
    fontWeight: FontWeight.w500,);
  static get medium12WithHeight1TextStyleTablet => TextStyle(
    height: 1.2.ss,
    fontFamily: "Poppins",
    fontSize: 18,
    color: Color(0xFF6A6A6A),
    fontWeight: FontWeight.w500,);
  static get medium12WithOutHeightTextStyleTablet => TextStyle(
    height: 2.3,
    fontFamily: "Poppins",
    fontSize: 18,
    color: Color(0xFF6A6A6A),
    fontWeight: FontWeight.w500,);
  //Tablet

  static get poppinsWhiteA700 => TextStyle(
    color: appTheme.whiteA700,
    fontSize: 5.fSize,
    fontWeight: FontWeight.w600,
  ).poppins;
  static get bold32Tablet => TextStyle(
      fontFamily: "Poppins",
      fontSize: 32,
      color: Color(0xFF232323),
      fontWeight: FontWeight.bold,
      letterSpacing: 0);
  static get bold28Tablet => TextStyle(
      fontFamily: "Poppins",
      fontSize: 24,
      color: Color(0xFF232323),
      fontWeight: FontWeight.bold,
      letterSpacing: 0);
  static get regular18Tablet => TextStyle(
      fontFamily: "Poppins",
      fontSize: 18,
      color: Color(0xFF969696),
      fontWeight: FontWeight.w400);
  static get medium15Tablet => TextStyle(
      fontFamily: "Poppins",
      fontSize: 15,
      color: Color(0xFF222222),
      fontWeight: FontWeight.w500);
  static get medium156A6A6ATablet => TextStyle(
      fontFamily: "Poppins",
      fontSize: 15,
      color: Color(0xFF6A6A6A),
      fontWeight: FontWeight.w500);
  static get light14FD1600Tablet => TextStyle(
      fontFamily: "Poppins",
      fontSize: 14.fSize,
      color: Color(0xFFFD1600),
      fontWeight: FontWeight.w300);
  static get light14WithoutFsizeFD1600Tablet => TextStyle(
      fontFamily: "Poppins",
      fontSize: 14,
      color: Color(0xFFFD1600),
      fontWeight: FontWeight.w300);
  static get regular18232323Tablet => TextStyle(
      fontFamily: "Poppins",
      fontSize: 18,
      color: Color(0xFF232323).withOpacity(0.2),
      fontWeight: FontWeight.w400);
  static get medium16Tablet => TextStyle(
      fontFamily: "Poppins",
      fontSize: 16,
      color: Color(0xFF232323),
      fontWeight: FontWeight.w500);
  static get regular14WithUnderLineTablet => TextStyle(
      fontFamily: "Poppins",
      fontSize: 14,
      color: Color(0xFF0A2342),
      fontWeight: FontWeight.w400,
      decoration: TextDecoration.underline);
  static get customButtonTextStyleTablet => TextStyle(
      fontFamily: "Poppins",
      fontSize: 20,
      color: Color(0xFFFFFFFF),
      fontWeight: FontWeight.w600);
  static get orTextStyleTablet => TextStyle(
      fontFamily: "Poppins",
      fontSize: 16,
      color: Color(0xFF6E6E6E),
      fontWeight: FontWeight.w500);
  static get regular186C6C6CTextStyleTablet => TextStyle(
      fontFamily: "Poppins",
      fontSize: 18,
      color: Color(0xFF6C6C6C),
      fontWeight: FontWeight.w400);
  static get semiBold16TextStyleTablet => TextStyle(
      fontFamily: "Poppins",
      fontSize: 16,
      color: Color(0xFF232323),
      fontWeight: FontWeight.w600);
  static get light20TextStyleTablet => TextStyle(
      fontFamily: "Poppins",
      fontSize: 20,
      color: Color(0xFF333333),
      fontWeight: FontWeight.w300);
  static get regular18TextStyleTablet => TextStyle(
      fontFamily: "Poppins",
      fontSize: 20,
      color: Color(0xFF969696),
      fontWeight: FontWeight.w300);
  static get regular18WithHeightTextStyleTablet => TextStyle(
    height: 1,
      fontFamily: "Poppins",
      fontSize: 20,
      color: Color(0xFF969696),
      fontWeight: FontWeight.w300);
  static get regular18000000TextStyleTablet => TextStyle(
      fontFamily: "Poppins",
      fontSize: 20,
      color: Color(0xFF000000),
      fontWeight: FontWeight.w300);
  static get regular16TextStyleTablet => TextStyle(
      fontFamily: "Poppins",
      fontSize: 16,
      color: Color(0xFF6C6C6C),
      fontWeight: FontWeight.w400);
  static get semiBold1650C878TextStyleTablet => TextStyle(
      fontFamily: "Poppins",
      fontSize: 16,
      color: Color(0xFF50C878),
      fontWeight: FontWeight.w600,
      decoration: TextDecoration.underline,
      decorationColor: Color(0xFF50C878));
  static get medium18TextStyleTablet => TextStyle(
      fontFamily: "Poppins",
      fontSize: 18,
      color: Color(0xFF0A2342),
      fontWeight: FontWeight.w500,
  );
  static get regular18232323WithOutOpacityTablet => TextStyle(
      fontFamily: "Poppins",
      fontSize: 18,
      color: Color(0xFF232323),
      fontWeight: FontWeight.w400);
  static get bold22TextStyleTablet => const TextStyle(
      fontFamily: "Poppins",
      fontSize: 22,
      color: Color(0xFF0A2342),
      fontWeight: FontWeight.bold);
  static get light18TextStyleTablet => const TextStyle(
      fontFamily: "Poppins",
      fontSize: 18,
      color: Color(0xFF000000),
      fontWeight: FontWeight.w300);
  static get medium18000000TextStyleTablet => const TextStyle(
      fontFamily: "Poppins",
      fontSize: 18,
      color: Color(0xFF000000),
      fontWeight: FontWeight.w500);
  static get regular15TextStyleTablet => const TextStyle(
      fontFamily: "Poppins",
      fontSize: 15,
      color: Color(0xFF6A6A6A),
      fontWeight: FontWeight.w400);
  static get regular15ssTextStyleTablet =>  TextStyle(
      fontFamily: "Poppins",
      fontSize: 13.fss,
      color: Color(0xFF6A6A6A),
      fontWeight: FontWeight.w400);
  static get regular15ssDropDownTextStyleTablet =>  TextStyle(
      fontFamily: "Poppins",
      fontSize: 17,
      color: Color(0xFF6A6A6A),
      fontWeight: FontWeight.w400);
  static get medium16TextStyleTablet => TextStyle(
      fontFamily: "Poppins",
      fontSize: 16,
      color: Color(0xFF6A6A6A),
      fontWeight: FontWeight.w500);
  static get light14TextStyleTablet => TextStyle(
      fontFamily: "Poppins",
      fontSize: 14,
      color: Color(0xFF6A6A6A),
      fontWeight: FontWeight.w300,);
  static get medium20TextStyleTablet => TextStyle(
    fontFamily: "Poppins",
    fontSize: 20,
    color: Color(0xFFFFFFFF),
    fontWeight: FontWeight.w500,);
  static get semiBold14TextStyleTablet => TextStyle(
    fontFamily: "Poppins",
    fontSize: 14.fss,
    color: Color(0xFFFFFFFF),
    fontWeight: FontWeight.w600,);
  static get semiBold22TextStyleTablet => TextStyle(
    fontFamily: "Poppins",
    fontSize: 22,
    color: Color(0xFFFFFFFF),
    fontWeight: FontWeight.w600,);
  static get semiBold10TextStyleTablet => CustomTextStyles.light14TextStyleTablet.copyWith(
      color : Colors.white,
      fontWeight : FontWeight.w600
  );
  static get medium16ToggleTextStyleTablet => TextStyle(
    fontFamily: "Poppins",
    fontSize: 16,
    fontWeight: FontWeight.w500,);
  static get light14WithOutFssFD1600Tablet => TextStyle(
      fontFamily: "Poppins",
      fontSize: 14,
      color: Color(0xFFFD1600),
      fontWeight: FontWeight.w300);
  //Tablet MyProperties
  static get elevatedButtonView =>  TextStyle(
    fontFamily: "Poppins",
    fontSize:  14.fss,
    color: Colors.white,
    fontWeight: FontWeight.w600,
    decorationColor: Colors.black,
    // Adjust the value as needed for a line height of 20
  );
  static get medium12TextStyleTablet => TextStyle(
    fontFamily: "Poppins",
    fontSize: 12.fss,
    color: Color(0xFF6A6A6A),
    fontWeight: FontWeight.w500,);
  static get medium12WithHeight2TextStyleTablet => TextStyle(
    height: 1.5,
    fontFamily: "Poppins",
    fontSize: 12.fss,
    color: Color(0xFF6A6A6A),
    fontWeight: FontWeight.w500,);
  static get light14FFFFFFTextStyleTablet => TextStyle(
    fontFamily: "Poppins",
    fontSize: 14.fss,
    color: Color(0xFFFFFFFF),
    fontWeight: FontWeight.w300,);
  static get light14WithoutFssFFFFFFTextStyleTablet => TextStyle(
    fontFamily: "Poppins",
    fontSize: 16,
    color: Color(0xFFFFFFFF),
    fontWeight: FontWeight.w300,);
  static get semiBold14WithOutFssTextStyleTablet => TextStyle(
    fontFamily: "Poppins",
    fontSize: 18,
    color: Color(0xFFFFFFFF),
    fontWeight: FontWeight.w600,);
  static get dropdownTextStyleTablet => TextStyle(
    fontFamily: "Poppins",
    fontSize: 16,
    color: Color(0xFF6A6A6A),
    fontWeight: FontWeight.w400,);
  static get lightbodyBlackTablet => TextStyle(
    fontFamily: "Poppins",
    fontSize: 10.fss,
    color: Colors.black,
    fontWeight: FontWeight.w300,
  );
  static get medium9bodyBlackTablet => TextStyle(
    fontFamily: "Poppins",
    fontSize: 9.fss,
    color: Colors.black,
    fontWeight: FontWeight.w300,

    decorationColor: Colors.black,);
  static get light9bodyBlackTablet => TextStyle(
    fontFamily: "Poppins",
    fontSize: 9.fss,
    color: Colors.black,
    fontWeight: FontWeight.w300,
  );
  static get light9WithOutFssbodyBlackTablet => TextStyle(
    fontFamily: "Poppins",
    fontSize: 12,
    color: Colors.black,
    fontWeight: FontWeight.w300,
  );

  static get light14bodyBlackTablet => TextStyle(
    fontFamily: "Poppins",
    fontSize: 12.fss,
    color: Colors.black,
    fontWeight: FontWeight.w300,
  );
  static get light12TextStyleTablet => TextStyle(
    fontFamily: "Poppins",
    fontSize: 12.fss,
    color: Color(0xFF50C878),
    fontWeight: FontWeight.w300,
  );

  static get light10TextStyleTablet => TextStyle(
    fontFamily: "Poppins",
    fontSize: 10.fss,
    color: Color(0xFF50C878),
    fontWeight: FontWeight.w300,
  );
  static get light10000000TextStyleTablet => TextStyle(
    fontFamily: "Poppins",
    fontSize: 9.fss,
    color: Color(0xFF000000),
    fontWeight: FontWeight.w300,
  );
  static get medium10000000TextStyleTablet => TextStyle(
    fontFamily: "Poppins",
    fontSize: 9.fss,
    color: Color(0xFF000000),
    fontWeight: FontWeight.w500,
  );
  static get light12BlackTextStyleTablet => TextStyle(
    fontFamily: "Poppins",
    fontSize: 12.fss,
    color: Color(0xFF000000),
    fontWeight: FontWeight.w300,
  );
  static get light12222222TextStyleTablet => TextStyle(
    fontFamily: "Poppins",
    fontSize: 12.fss,
    color: Color(0xFF222222),
    fontWeight: FontWeight.w300,
  );


  //Favourites
  static get medium14TextStyleTablet => TextStyle(
    fontFamily: "Poppins",
    fontSize: 14,
    color: Color(0xFFFFFFFF),
    fontWeight: FontWeight.w500,
  );
  static get medium18FFFFFFTextStyleTablet => TextStyle(
    fontFamily: "Poppins",
    fontSize: 18.fss,
    color: Color(0xFFFFFFFF),
    fontWeight: FontWeight.w500,
  );

  static get light20000000TextStyleTablet => TextStyle(
      fontFamily: "Poppins",
      fontSize: 20.fss,
      color: Color(0xFF000000),
      fontWeight: FontWeight.w300);

  static get medium200A2342TextStyleTablet => TextStyle(
    fontFamily: "Poppins",
    fontSize: 20.fss,
    color: Color(0xFF0A2342),
    fontWeight: FontWeight.w500,);
  static get medium206S6S6STextStyleTablet => TextStyle(
    fontFamily: "Poppins",
    fontSize: 20.fss,
    color: Color(0xFF6A6A6A),
    fontWeight: FontWeight.w500,);

  static get semiBold20TextStyleTablet => TextStyle(
    fontFamily: "Poppins",
    fontSize: 20.fss,
    color: Color(0xFF50C878),
    fontWeight: FontWeight.w600,);

  static get medium166A6A6ATextStyleTablet => TextStyle(
    fontFamily: "Poppins",
    fontSize: 15.fss,
    color: Color(0xFF6A6A6A),
    fontWeight: FontWeight.w500,);
  static get medium136A6A6ATextStyleTablet => TextStyle(
    fontFamily: "Poppins",
    fontSize: 10.fss,
    color: Color(0xFF6A6A6A),
    fontWeight: FontWeight.w500,);
  static get medium146A6A6ATextStyleTablet => TextStyle(
    fontFamily: "Poppins",
    fontSize: 12.fss,
    color: Color(0xFF6A6A6A),
    fontWeight: FontWeight.w500,);
  static get medium146A6A6AwithheightTextStyleTablet => TextStyle(
    height: 2,
    fontFamily: "Poppins",
    fontSize: 12.fss,
    color: Color(0xFF6A6A6A),
    fontWeight: FontWeight.w500,);

  static get light14WithFssTextStyleTablet => TextStyle(
    fontFamily: "Poppins",
    fontSize: 14.fss,
    color: Color(0xFF6A6A6A),
    fontWeight: FontWeight.w300,);
  static get medium12Tablet => TextStyle(
      fontFamily: "Poppins",
      fontSize: 12.fss,
      color: Color(0xFFFFFFFF),
      fontWeight: FontWeight.w500);


//Mobile
  static get bold24Mobile => TextStyle(
      fontFamily: "Poppins",
      fontSize: 24,
      color: Color(0xFF232323),
      fontWeight: FontWeight.bold);
  static get regular18Mobile => TextStyle(
      fontFamily: "Poppins",
      fontSize: 18.fSize,
      color: Color(0xFF969696),
      fontWeight: FontWeight.w400);
  static get medium15Mobile => TextStyle(
      fontFamily: "Poppins",
      fontSize: 15.fSize,
      color: Color(0xFF222222),
      fontWeight: FontWeight.w500);
  static get light14FD1600Mobile => TextStyle(
      fontFamily: "Poppins",
      fontSize: 14.fSize,
      color: Color(0xFFFD1600),
      fontWeight: FontWeight.w300);
  static get regular18232323Mobile => TextStyle(
      fontFamily: "Poppins",
      fontSize: 18.fSize,
      color: Color(0xFF232323).withOpacity(0.2),
      fontWeight: FontWeight.w400);
  static get regular189A9A9AMobile => TextStyle(
      fontFamily: "Poppins",
      fontSize: 18.fSize,
      color: Color(0xFF9A9A9A),
      fontWeight: FontWeight.w400);
  static get medium16Mobile => TextStyle(
      fontFamily: "Poppins",
      fontSize: 16,
      color: Color(0xFF232323),
      fontWeight: FontWeight.w500);
  static get regular14WithUnderLineMobile => TextStyle(
      fontFamily: "Poppins",
      fontSize: 14,
      color: Color(0xFF0A2342),
      fontWeight: FontWeight.w400,
      decoration: TextDecoration.underline);
  static get customButtonTextStyleMobile => TextStyle(
      fontFamily: "Poppins",
      fontSize: 18,
      color: Color(0xFFFFFFFF),
      fontWeight: FontWeight.w600);
  static get semiBold16TextStyleMobile => TextStyle(
      fontFamily: "Poppins",
      fontSize: 16,
      color: Color(0xFF232323),
      fontWeight: FontWeight.w600);
  static get bold24TextStyleMobile => TextStyle(
      fontFamily: "Poppins",
      fontSize: 24.fSize,
      color: Color(0xFF232323),
      fontWeight: FontWeight.bold,
      letterSpacing: 0);
  static get regular333333TextStyleMobile => TextStyle(
      fontFamily: "Poppins",
      fontSize: 18.fSize,
      color: Color(0xFF333333).withOpacity(0.8),
      fontWeight: FontWeight.w400);
  static get regular16TextStyleMobile => TextStyle(
      fontFamily: "Poppins",
      fontSize: 16.fSize,
      color: Color(0xFF6C6C6C),
      fontWeight: FontWeight.w400);
  static get semiBold1650C878TextStyleMobile => TextStyle(
      fontFamily: "Poppins",
      fontSize: 16.fSize,
      color: Color(0xFF50C878),
      fontWeight: FontWeight.w600,
      decoration: TextDecoration.underline,
      decorationColor: Color(0xFF50C878));
  static get regular16232323TextStyleMobile => TextStyle(
      fontFamily: "Poppins",
      fontSize: 16.fSize,
      color: Color(0xFF232323),
      fontWeight: FontWeight.w400,
  );
  static get medium18Mobile => TextStyle(
      fontFamily: "Poppins",
      fontSize: 18.fSize,
      color: Color(0xFF0A2342),
      fontWeight: FontWeight.w500);
  static get medium14Mobile => TextStyle(
      fontFamily: "Poppins",
      fontSize: 14.fSize,
      color: Color(0xFF000000),
      fontWeight: FontWeight.w500);
  static get bold22Mobile => TextStyle(
      fontFamily: "Poppins",
      fontSize: 22.fSize,
      color: Color(0xFF0A2342),
      fontWeight: FontWeight.bold);
  static get light14Mobile => TextStyle(
      fontFamily: "Poppins",
      fontSize: 14.fSize,
      color: Color(0xFF000000),
      fontWeight: FontWeight.w300);
  static get regular15Mobile => TextStyle(
      fontFamily: "Poppins",
      fontSize: 15.fSize,
      color: Color(0xFF6A6A6A),
      fontWeight: FontWeight.w400);
  static get medium166a6a6aMobile => TextStyle(
    overflow: TextOverflow.ellipsis,
      fontFamily: "Poppins",
      fontSize: 16.fSize,
      color: Color(0xFF6A6A6A),
      fontWeight: FontWeight.w500);
  static get light146a6a6aMobile => TextStyle(
      fontFamily: "Poppins",
      fontSize: 14.fSize,
      color: Color(0xFF6A6A6A),
      fontWeight: FontWeight.w300);
  static get medium25Mobile => TextStyle(
      fontFamily: "Poppins",
      fontSize: 25.fSize,
      color: Color(0xFFFFFFFF),
      fontWeight: FontWeight.w500);
  static get semiBold22Mobile => TextStyle(
      fontFamily: "Poppins",
      fontSize: 12,
      color: Color(0xFFFFFFFF),
      fontWeight: FontWeight.w600);
  static get medium16FFFFFFMobile => TextStyle(
      fontFamily: "Poppins",
      fontSize: 16,
      color: Color(0xFFFFFFFF),
      fontWeight: FontWeight.w500);
  //My properties
  static get medium12TextStyleMobile => TextStyle(
      fontFamily: "Poppins",
      fontSize: 12.fSize,
      color: Color(0xFF6A6A6A),
      fontWeight: FontWeight.w500);
  static get light14TextStyleMobile => TextStyle(
      fontFamily: "Poppins",
      fontSize: 14.fSize,
      color: Color(0xFFFFFFFF),
      fontWeight: FontWeight.w300);
  static get semiBold14TextStyleMobile => TextStyle(
      fontFamily: "Poppins",
      fontSize: 14.fSize,
      color: Color(0xFFFFFFFF),
      fontWeight: FontWeight.w600);
  static get light10TextStyleMobile => TextStyle(
      fontFamily: "Poppins",
      fontSize: 10.fSize,
      color: Color(0xFF000000),
      fontWeight: FontWeight.w300);
  static get semiBold10TextStyleMobile => TextStyle(
      fontFamily: "Poppins",
      fontSize: 10.fSize,
      color: Color(0xFF50C878),
      fontWeight: FontWeight.w600);
  static get light9TextStyleMobile => TextStyle(
      fontFamily: "Poppins",
      fontSize: 9.fSize,
      color: Color(0xFF000000),
      fontWeight: FontWeight.w300);

  static get medium9TextStyleMobile => TextStyle(
      fontFamily: "Poppins",
      fontSize: 9.fSize,
      color: Color(0xFF000000),
      fontWeight: FontWeight.w500);
  static get light12TextStyleMobile => TextStyle(
      fontFamily: "Poppins",
      fontSize: 12.fSize,
      color: Color(0xFF50C878),
      fontWeight: FontWeight.w300);
  static get light12000000TextStyleMobile => TextStyle(
      fontFamily: "Poppins",
      fontSize: 12.fSize,
      color: Color(0xFF000000),
      fontWeight: FontWeight.w300);
  static get medium14TextStyleMobile => TextStyle(
      fontFamily: "Poppins",
      fontSize: 14.fSize,
      color: Color(0xFFFFFFFF),
      fontWeight: FontWeight.w500);

  static get light12Mobile => TextStyle(
      fontFamily: "Poppins",
      fontSize: 12.fSize,
      color: Color(0xFF232323),
      fontWeight: FontWeight.w300);
  static get medium16BlackMobile => TextStyle(
      fontFamily: "Poppins",
      fontSize: 16.fSize,
      color: Color(0xFF000000),
      fontWeight: FontWeight.w500);

  static get semiBold14Mobile => TextStyle(
      fontFamily: "Poppins",
      fontSize: 14.fSize,
      color: Color(0xFFFFFFFF),
      fontWeight: FontWeight.w600);
  static get light10Mobile => TextStyle(
      fontFamily: "Poppins",
      fontSize: 10.fSize,
      color: Color(0xFF232323),
      fontWeight: FontWeight.w300);
  static get light9Mobile => TextStyle(
      fontFamily: "Poppins",
      fontSize: 9.fSize,
      color: Color(0xFF232323),
      fontWeight: FontWeight.w300);
  static get light14FFFFFFMobile => TextStyle(
      fontFamily: "Poppins",
      fontSize: 14.fSize,
      color: Color(0xFFFFFFFF),
      fontWeight: FontWeight.w300,
    decoration: TextDecoration.lineThrough,
  );
  static get bold24FssMobile => TextStyle(
      fontFamily: "Poppins",
      fontSize: 24.fSize,
      color: Color(0xFF232323),
      fontWeight: FontWeight.bold);
  static get Medium16Mobile => TextStyle(
      fontFamily: "Poppins",
      fontSize: 16.fSize,
      color: Color(0xFFFFFFFF),
      fontWeight: FontWeight.w500);
  static get Medium18Mobile => TextStyle(
      fontFamily: "Poppins",
      fontSize: 18.fSize,
      color: Color(0xFF0A2342),
      fontWeight: FontWeight.w500);
  static get Medium166A6A6AMobile => TextStyle(
      fontFamily: "Poppins",
      fontSize: 16.fSize,
      color: Color(0xFF6A6A6A),
      fontWeight: FontWeight.w500);
  static get light14Fd1600Mobile => TextStyle(
      fontFamily: "Poppins",
      fontSize: 14.fSize,
      color: Color(0xFFFD1600),
      fontWeight: FontWeight.w300);
  static get light146A6A6AMobile => TextStyle(
      fontFamily: "Poppins",
      fontSize: 14.fSize,
      color: Color(0xFF6A6A6A),
      fontWeight: FontWeight.w300);

  static get medium12Mobile => TextStyle(
      fontFamily: "Poppins",
      fontSize: 12.fSize,
      color: Color(0xFFFFFFFF),
      fontWeight: FontWeight.w500);
  static get medium12WithoutFsizeMobile => TextStyle(
      fontFamily: "Poppins",
      fontSize: 12,
      color: Color(0xFFFFFFFF),
      fontWeight: FontWeight.w500);

  static get light8Mobile => TextStyle(
      fontFamily: "Poppins",
      fontSize: 8.fSize,
      color: Color(0xFF000000),
      fontWeight: FontWeight.w300);
  static get light8WithoutFsizeMobile => TextStyle(
      fontFamily: "Poppins",
      fontSize: 8,
      color: Color(0xFF000000),
      fontWeight: FontWeight.w300);
  static get medium8WithoutFsizeMobile => TextStyle(
      fontFamily: "Poppins",
      fontSize: 8,
      color: Color(0xFF000000),
      fontWeight: FontWeight.w500);
  static get medium8Mobile => TextStyle(
      fontFamily: "Poppins",
      fontSize: 8.fSize,
      color: Color(0xFF000000),
      fontWeight: FontWeight.w500);
  static get medium14FFFFFFMobile => TextStyle(
      fontFamily: "Poppins",
      fontSize: 14.fSize,
      color: Color(0xFFFFFFFF),
      fontWeight: FontWeight.w500);
  static get medium14WithOutFsizeFFFFFFMobile => TextStyle(
      fontFamily: "Poppins",
      fontSize: 14,
      color: Color(0xFFFFFFFF),
      fontWeight: FontWeight.w500);
  // Body text style

  static get bodySmallBlack900 => theme.textTheme.bodySmall!.copyWith(
      color: appTheme.black900,
      fontSize: 9.fSize,
      fontFamily: "Poppins",
      fontWeight: FontWeight.w300);
  static get bodyLarge16 => theme.textTheme.bodyLarge!.copyWith(
        fontSize: 16.fSize,
      );
  static get bodyLarge33232323 => theme.textTheme.bodyLarge!.copyWith(
        color: const Color(0X33232323),
        fontSize: 16.fSize,
      );
  static get bodyLargeGray500 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.gray500,
      );
  static get bodyLargeGray50001 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.gray50001,
      );
  static get bodyLargeGray600 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.gray600,
        fontSize: 16.fSize,
      );
  static get bodyLargeGray90001 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.gray90001.withOpacity(0.2),
      );
  static get bodyLargeGray9000116 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.gray90001.withOpacity(0.63),
        fontSize: 16.fSize,
      );
  static get bodyLargeGray9000116_1 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.gray90001.withOpacity(0.2),
        fontSize: 16.fSize,
      );
  static get bodyLargeGray90001_1 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.gray90001.withOpacity(0.63),
      );
  static get bodyLargeGray90001_2 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.gray90001.withOpacity(0.56),
      );
  static get bodyLargeInterGray90001 =>
      theme.textTheme.bodyLarge!.inter.copyWith(
        color: appTheme.gray90001.withOpacity(0.2),
        fontWeight: FontWeight.w300,
      );
  static get bodyLargeff6c6c6c => theme.textTheme.bodyLarge!.copyWith(
        color: Color(0XFF6C6C6C),
        fontSize: 16.fSize,
      );
  static get bodyMediumBluegray900 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.blueGray900,
      );
  static get bodyMediumDeeporangeA700 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.deepOrangeA700,
        fontWeight: FontWeight.w400,
      );
  static get bodyMediumDeeporangeA700_1 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.deepOrangeA700,
      );
  static get bodyMediumGray700 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray700,
      );
  static get bodyMediumGray700Regular => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray700,
        fontSize: 15.fSize,
        fontWeight: FontWeight.w400,
      );
  static get bodyMediumGray900 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray900,
        fontWeight: FontWeight.w400,
      );
  static get bodyMediumGray90001 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray90001,
        fontSize: 15.fSize,
        fontWeight: FontWeight.w400,
      );
  static get bodyMediumGray90001Regular => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray90001.withOpacity(0.56),
        fontWeight: FontWeight.w400,
      );
  static get bodyMediumGreen40001 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.green40001,
        fontWeight: FontWeight.w400,
      );
  static get bodyMediumPrimary => theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w400,
      );
  static get bodyMediumPrimaryRegular => theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w400,
      );
  // static get test => TextStyle(
  //     fontFamily: "Poppins",
  //     fontSize: 24.fSize,
  //     color: Colors.black,
  //     fontWeight: FontWeight.bold);
  static get backTextMobile => TextStyle(
      fontFamily: "Poppins",
      fontSize: 18.fSize,
      color: Color(0xff232323),
      fontWeight: FontWeight.w400);
  static get accountSettingsTextMobile => TextStyle(
      fontFamily: "Poppins",
      fontSize: 24.fSize,
      color: Color(0xff232323),
      fontWeight: FontWeight.w700);
  static get johndoeaccountSettingsTextMobile => TextStyle(
      fontFamily: "Poppins",
      fontSize: 24.fSize,
      color: Color(0xff232323),
      fontWeight: FontWeight.w700);
  static get loremipsumAccountSettingsMobile => TextStyle(
      fontFamily: "Poppins",
      fontSize: 15.fss,
      color: Color(0xff232323),
      fontWeight: FontWeight.w400);
  static get changePasswordAccountSettingsMobile => TextStyle(
      fontFamily: "Poppins",
      fontSize: 16.fSize,
      color: Color(0xff0A2342),
      fontWeight: FontWeight.w500);
  static get hintStyleAcoountSettings => TextStyle(
      fontFamily: "Poppins",
      fontSize: 18.fSize,
      color: Color(0xff232323).withOpacity(0.56),
      fontWeight: FontWeight.w400);
  static get hintStyleAcoountSettings2 => TextStyle(
      fontFamily: "Poppins",
      fontSize: 16.fSize,
      color: Color(0xff232323).withOpacity(0.63),
      fontWeight: FontWeight.w400);
  static get passwordResetTextAccountSettings => TextStyle(
      decoration: TextDecoration.underline,
      fontFamily: "Poppins",
      fontSize: 14.fSize,
      color: Color(0xff222222),
      fontWeight: FontWeight.w400);
  static get measuremmentSettingsTextAccountSettings => TextStyle(
      fontFamily: "Poppins",
      fontSize: 16.fSize,
      color: Color(0xff0A2342),
      fontWeight: FontWeight.w500);
  static get unittextStyleAccountSettings => TextStyle(
      fontFamily: "Poppins",
      fontSize: 16.fSize,
      // color: Color(0xff0A2342),
      fontWeight: FontWeight.w400);

  static get test => TextStyle(
      fontFamily: "Poppins",
      fontSize: 24.fSize,
      color: Colors.black,
      fontWeight: FontWeight.bold);

  //account settings tablet
  static get backTextTablet => TextStyle(
      fontFamily: "Poppins",
      fontSize: 18,
      color: Color(0xff232323),
      fontWeight: FontWeight.w400);

  static get headingAccountSettingsTablet => TextStyle(
      fontFamily: "Poppins",
      fontSize: 32,
      color: Color(0xff232323),
      fontWeight: FontWeight.w700);

  static get nameAccountSettingsTablet => TextStyle(
      fontFamily: "Poppins",
      fontSize: 24,
      color: Color(0xff232323),
      fontWeight: FontWeight.w700);
  static get loremAccountSettingsTablet => TextStyle(
      fontFamily: "Poppins",
      fontSize: 15,
      color: Color(0xff232323),
      fontWeight: FontWeight.w400);
  static get changePassowrdAccountSettingsTablet => TextStyle(
      fontFamily: "Poppins",
      fontSize: 16,
      color: Color(0xff0A2342),
      fontWeight: FontWeight.w500);
  static get hintStyleAccountSettingsTablet => TextStyle(
      fontFamily: "Poppins",
      fontSize: 14,
      color: Color(0xff232323).withOpacity(0.56),
      fontWeight: FontWeight.w400);
  static get passwordResetAccountSettingsTablet => TextStyle(
      decoration: TextDecoration.underline,
      fontFamily: "Poppins",
      fontSize: 14,
      color: Color(0xff222222),
      fontWeight: FontWeight.w400);
  static get measurementAccountSettingsTablet => TextStyle(
      fontFamily: "Poppins",
      fontSize: 16,
      color: Color(0xff0A2342),
      fontWeight: FontWeight.w500);

  // property add
  static get medium24Tablet => TextStyle(
      fontFamily: "Poppins",
      fontSize: 24,
      color: Color(0xff232323),
      fontWeight: FontWeight.w500);
  static get medium22Tablet => TextStyle(
      fontFamily: "Poppins",
      fontSize: 22,
      color: Color(0xff232323),
      fontWeight: FontWeight.w500);
  static get medium16FFFFFFTablet => TextStyle(
      fontFamily: "Poppins",
      fontSize: 16,
      color: Color(0xffFFFFFF),
      fontWeight: FontWeight.w500);

  static get medium166A6A6ATablet => TextStyle(
      fontFamily: "Poppins",
      fontSize: 16,
      color: Color(0xff6A6A6A),
      fontWeight: FontWeight.w500);

  //end---------------------------------

  static get bodyMediumRegular => theme.textTheme.bodyMedium!.copyWith(
        fontWeight: FontWeight.w400,
      );
  static get bodyMediumff000000 => theme.textTheme.bodyMedium!.copyWith(
        color: Color(0XFF000000),
      );
  static get bodyMediumffffffff => theme.textTheme.bodyMedium!.copyWith(
        color: Color(0XFFFFFFFF),
      );
  static get bodySmall12 => theme.textTheme.bodySmall!.copyWith(
        fontSize: 12.fSize,
      );
  static get bodySmall9 => theme.textTheme.bodySmall!.copyWith(
        fontSize: 9.fSize,
      );
  static get bodySmallBluegray30001 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.blueGray30001,
        fontSize: 12.fSize,
        fontWeight: FontWeight.w400,
      );
  static get bodySmallBluegray900 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.blueGray900,
        fontSize: 12.fSize,
        fontWeight: FontWeight.w400,
      );
  static get bodySmallBluegray90002 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.blueGray90002,
        fontSize: 12.fSize,
        fontWeight: FontWeight.w400,
      );
  static get bodySmallGreen40001 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.green40001,
        fontSize: 12.fSize,
      );
  static get bodySmallInterGray800 => theme.textTheme.bodySmall!.inter.copyWith(
        color: appTheme.gray800,
        fontWeight: FontWeight.w400,
      );
  static get bodySmallOnErrorContainer => theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.onErrorContainer,
        fontSize: 8.fSize,
      );
  static get bodySmallOnErrorContainerRegular =>
      theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.onErrorContainer,
        fontWeight: FontWeight.w400,
      );
  static get bodySmallPrimary => theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w400,
      );
  static get bodySmallPrimary12 => theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 12.fSize,
      );
  static get bodySmallPrimary_1 => theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get bodySmallRegular => theme.textTheme.bodySmall!.copyWith(
        fontSize: 12.fSize,
        fontWeight: FontWeight.w400,
      );
  static get bodySmallRegular8 => theme.textTheme.bodySmall!.copyWith(
        fontSize: 8.fSize,
        fontWeight: FontWeight.w400,
      );
  static get bodySmallRegular_1 => theme.textTheme.bodySmall!.copyWith(
        fontWeight: FontWeight.w400,
      );
  static get bodySmallRegular_2 => theme.textTheme.bodySmall!.copyWith(
        fontWeight: FontWeight.w400,
      );
  static get bodySmallff000000 => theme.textTheme.bodySmall!.copyWith(
        color: Color(0XFF000000),
        fontSize: 10.fSize,
      );
  static get bodySmallff00000012 => theme.textTheme.bodySmall!.copyWith(
        color: Color(0XFF000000),
        fontSize: 12.fSize,
      );
  static get bodySmallff0000009 => theme.textTheme.bodySmall!.copyWith(
      color: Color(0XFF000000),
      fontSize: 9.fSize,
      fontFamily: "Poppins",
      fontWeight: FontWeight.w300);
  static get bodySmallff000000_1 => theme.textTheme.bodySmall!.copyWith(
      color: Color(0XFF000000),
      fontFamily: "Poppins",
      fontWeight: FontWeight.w300);
  static get bodySmallff0a2342 => theme.textTheme.bodySmall!.copyWith(
        color: Color(0XFF0A2342),
        fontWeight: FontWeight.w400,
        fontFamily: "Poppins",
      );
  static get bodySmallff0a234212 => theme.textTheme.bodySmall!.copyWith(
      color: Color(0XFF0A2342),
      fontSize: 12.fSize,
      fontFamily: "Poppins",
      fontWeight: FontWeight.w300);
  static get bodySmallff0a2342_1 => theme.textTheme.bodySmall!.copyWith(
      color: Color(0XFF0A2342),
      fontFamily: "Poppins",
      fontWeight: FontWeight.w300);
  static get bodySmallff222222 => theme.textTheme.bodySmall!.copyWith(
        color: Color(0XFF222222),
        fontSize: 12.fSize,
      );
  static get bodySmallff222222_1 => theme.textTheme.bodySmall!.copyWith(
        color: Color(0XFF222222),
      );
  static get bodySmallff50c878 => theme.textTheme.bodySmall!.copyWith(
        color: Color(0XFF50C878),
        fontSize: 12.fSize,
      );
  static get bodySmallfffc1500 => theme.textTheme.bodySmall!.copyWith(
        color: Color(0XFFFC1500),
      );
  static get bodySmallffffffff => theme.textTheme.bodySmall!.copyWith(
        color: Color(0XFFFFFFFF),
        fontWeight: FontWeight.w400,
      );
  // Headline style
  static get headlineSmall_1 => theme.textTheme.headlineSmall!;
  // Label text style
  static get labelLarge13 => theme.textTheme.labelLarge!.copyWith(
        fontSize: 13.fSize,
      );
  static get labelLargeBlack900 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.black900,
      );
  static get labelLargeBlack90013 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.black900,
        fontSize: 13.fSize,
      );
  static get labelLargeGray5001 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.gray5001,
      );
  static get labelLargeOnErrorContainer => theme.textTheme.labelLarge!.copyWith(
        color: theme.colorScheme.onErrorContainer,
        fontSize: 13.fSize,
      );
  static get labelLargeOnErrorContainer13 =>
      theme.textTheme.labelLarge!.copyWith(
        color: theme.colorScheme.onErrorContainer,
        fontSize: 13.fSize,
      );
  static get labelLargeOnErrorContainerSemiBold =>
      theme.textTheme.labelLarge!.copyWith(
        color: theme.colorScheme.onErrorContainer,
        fontWeight: FontWeight.w600,
      );
  static get labelLargeOnErrorContainer_1 =>
      theme.textTheme.labelLarge!.copyWith(
        color: theme.colorScheme.onErrorContainer,
      );
  static get labelLargePrimary => theme.textTheme.labelLarge!.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 13.fSize,
      );
  static get labelLargeff000000 => theme.textTheme.labelLarge!.copyWith(
        color: Color(0XFF000000),
        fontWeight: FontWeight.w600,
      );
  static get labelMediumBlack900 => theme.textTheme.labelMedium!.copyWith(
        color: appTheme.black900,
        fontWeight: FontWeight.w500,
      );
  static get labelMediumBlack900_1 => theme.textTheme.labelMedium!.copyWith(
        color: appTheme.black900,
      );
  static get labelMediumBold => theme.textTheme.labelMedium!.copyWith(
        fontWeight: FontWeight.w700,
      );
  static get labelMediumMedium => theme.textTheme.labelMedium!.copyWith(
        fontWeight: FontWeight.w500,
      );
  static get labelMediumOnErrorContainer =>
      theme.textTheme.labelMedium!.copyWith(
        color: theme.colorScheme.onErrorContainer,
      );
  static get labelMediumOnErrorContainerMedium =>
      theme.textTheme.labelMedium!.copyWith(
        color: theme.colorScheme.onErrorContainer,
        fontWeight: FontWeight.w500,
      );
  static get labelMediumOnErrorContainerMedium_1 =>
      theme.textTheme.labelMedium!.copyWith(
        color: theme.colorScheme.onErrorContainer,
        fontWeight: FontWeight.w500,
      );
  static get labelMediumPrimary => theme.textTheme.labelMedium!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get labelMediumff50c878 => theme.textTheme.labelMedium!
      .copyWith(color: Color(0XFF50C878), fontSize: 10);
  static get labelSmallPrimary => theme.textTheme.labelSmall!.copyWith(
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w600,
      );
  static get labelSmallff000000 => theme.textTheme.labelSmall!.copyWith(
        color: Color(0XFF000000),
        fontSize: 9.fSize,
      );
  static get labelSmallff000000_1 => theme.textTheme.labelSmall!.copyWith(
        color: Color(0XFF000000),
      );
  static get labelSmallff0a2342 => theme.textTheme.labelSmall!.copyWith(
        color: Color(0XFF0A2342),
      );
  static get labelSmallff50c878 => theme.textTheme.labelSmall!.copyWith(
        color: Color(0XFF50C878),
        fontSize: 9.fSize,
        fontWeight: FontWeight.w600,
      );
  // Poppins text style
  static get poppinsOnErrorContainer => TextStyle(
        color: theme.colorScheme.onErrorContainer,
        fontSize: 5.fSize,
        fontWeight: FontWeight.w600,
      ).poppins;
  static get poppinsOnErrorContainerLight => TextStyle(
        color: theme.colorScheme.onErrorContainer,
        fontSize: 6.fSize,
        fontWeight: FontWeight.w300,
      ).poppins;
  static get poppinsOnErrorContainerMedium => TextStyle(
        color: theme.colorScheme.onErrorContainer,
        fontSize: 6.fSize,
        fontWeight: FontWeight.w500,
      ).poppins;
  // Title text style
  static get titleMediumBlack900 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.black900,
      );
  static get titleMediumBlack90018 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.black900,
        fontSize: 18.fSize,
      );
  static get titleMediumGray90001 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray90001,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumGray9000118 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray90001,
        fontSize: 18.fSize,
      );
  static get titleMediumGray90001_1 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray90001,
      );
  static get titleMediumOnErrorContainer =>
      theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.onErrorContainer,
        fontSize: 18.fSize,
        fontWeight: FontWeight.w600,
      );

  static get titleMediumSignIn => theme.textTheme.titleMedium!.copyWith(
        color: const Color(0xFF50C878),
        fontSize: 18.fSize,
        fontWeight: FontWeight.w600,
      );

  static get titleMediumOnErrorContainer_1 =>
      theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.onErrorContainer,
      );
  static get titleMediumPrimary => theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get titleMediumPrimary18 => theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 18.fSize,
      );
  static get titleMediumPrimaryContainer =>
      theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.primaryContainer,
      );
  static get titleMediumPrimarySemiBold =>
      theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumff000000 => theme.textTheme.titleMedium!.copyWith(
        color: Color(0XFF000000),
      );
  static get titleMediumff0a2342 => theme.textTheme.titleMedium!.copyWith(
        color: Color(0XFF0A2342),
        fontSize: 18.fSize,
      );
  static get titleMediumff50c878 => theme.textTheme.titleMedium!.copyWith(
        color: Color(0XFF50C878),
        fontWeight: FontWeight.w600,
      );
  static get titleSmallBlack900 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.black900,
      );
  static get titleSmallGray900 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.gray900,
        fontSize: 15.fSize,
      );
  static get titleSmallPrimary => theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get titleSmallSemiBold => theme.textTheme.titleSmall!.copyWith(
        fontWeight: FontWeight.w600,
      );
  static get titleSmallff000000 => theme.textTheme.titleSmall!.copyWith(
        color: Color(0XFF000000),
      );
  static get titleSmallff50c878 => theme.textTheme.titleSmall!.copyWith(
        color: Color(0XFF50C878),
        fontWeight: FontWeight.w600,
      );
  static get titleSmallffffffff => theme.textTheme.titleSmall!.copyWith(
        color: Color(0XFFFFFFFF),
      );
  static get titleSmallffffffffSemiBold => theme.textTheme.titleSmall!.copyWith(
        color: Color(0XFFFFFFFF),
        fontWeight: FontWeight.w600,
      );


  static get semiBoldbodyGreenTablet => TextStyle(
      fontFamily: "Poppins",
      fontSize: 10.fss,
      color: Color(0xFF50C878),
      fontWeight: FontWeight.w600,

      decorationColor: Color(0xFF50C878));

  static get semiBoldbodyBlackTablet => TextStyle(
      fontFamily: "Poppins",
      fontSize: 20.fSize,
      color: Colors.black,
      fontWeight: FontWeight.w600,
);


  static get lightbodyBlackTablet16 => TextStyle(
    fontFamily: "Poppins",
    fontSize: 16.fss,
    color: Colors.black,
    fontWeight: FontWeight.w500,
  );
  static get lightbodyWithOutBlackTablet16 => TextStyle(
    fontFamily: "Poppins",
    fontSize: 18,
    color: Colors.black,
    fontWeight: FontWeight.w500,
  );

  static get lightbodyGreenTablet => TextStyle(
    fontFamily: "Poppins",
    fontSize: 10.fSize,
    color: Color(0xFF50C878),
    fontWeight: FontWeight.w300,
  );

  static get mediumbodyBlackTablet => TextStyle(
      fontFamily: "Poppins",
      fontSize: 10.fss,
      color: Colors.black,
      fontWeight: FontWeight.w500,

      decorationColor: Colors.black,);


  static get elevatedButton1 =>  TextStyle(
    fontFamily: "Poppins",
    fontSize: FontSize.s14,
    color: Colors.white,
    fontWeight: FontWeight.w300,
    decorationColor: Colors.black,

   // Adjust the value as needed for a line height of 20
  );

  static get elevatedButton2 =>  TextStyle(
    fontFamily: "Poppins",
    fontSize:  14.fss,
    color: Colors.white,
    fontWeight: FontWeight.w600,
    decorationColor: Colors.black,
   // Adjust the value as needed for a line height of 20
  );

  static get elevatedButton3 =>  TextStyle(
    fontFamily: "Poppins",
    fontSize:  FontSize.s14,
    color: Colors.white,
    fontWeight: FontWeight.w600,
    decorationColor: Colors.black,
    // Adjust the value as needed for a line height of 20
  );
  static get elevatedButton4 =>  TextStyle(
    fontFamily: "Poppins",
    fontSize: 14.fss,
    color: Colors.white,
    fontWeight: FontWeight.w300,
      decoration: TextDecoration.lineThrough,
    decorationColor: Colors.white,

    // Adjust the value as needed for a line height of 20
  );
  static get regular10Tablet => TextStyle(
      fontFamily: "Poppins",
      fontSize: 10.fss,
      color: Color(0xFFFFFFFF),
      fontWeight: FontWeight.w400);
  static get light6Tablet => TextStyle(
      fontFamily: "Poppins",
      fontSize: 6.fss,
      color: Color(0xFFFFFFFF),
      fontWeight: FontWeight.w300);
  static get light8Tablet => TextStyle(
      fontFamily: "Poppins",
      fontSize: 8.fss,
      color: Color(0xFFFFFFFF),
      fontWeight: FontWeight.w300);
  static get light12Tablet => TextStyle(
      fontFamily: "Poppins",
      fontSize: 12.fss,
      color: Color(0xFF000000),
      fontWeight: FontWeight.w300);

  // - asset: asset/fonts/Poppins-Regular.ttf
  // weight: 400
  //
  // - asset: asset/fonts/PoppinsMedium.ttf
  // weight: 500
  // - asset: asset/fonts/PoppinsSemiBold.ttf
  // weight: 600
  // - asset: asset/fonts/PoppinsLight.ttf
  // weight: 300
  // - asset: asset/fonts/PoppinsRegular.ttf
  // weight: 400
  // - asset: asset/fonts/PoppinsBold.ttf
  // weight: 700

}

extension on TextStyle {
  TextStyle get inter {
    return copyWith(
      fontFamily: 'Inter',
    );
  }

  TextStyle get poppins {
    return copyWith(
      fontFamily: 'Poppins',
    );
  }
}
