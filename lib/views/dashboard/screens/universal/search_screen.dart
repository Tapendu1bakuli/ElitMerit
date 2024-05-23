import 'package:flutter/material.dart';
import 'package:main/views/dashboard/screens/mobile/search_screen_mobile.dart';
import 'package:main/views/dashboard/screens/tablet/search_screen_tablet.dart';
import 'package:responsive_builder/responsive_builder.dart';
class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context,sizingInfo)=> Scaffold(
          body: ScreenTypeLayout.builder(
            breakpoints: const ScreenBreakpoints(
                tablet: 800,
                desktop: 1200,
                watch: 300
            ),
            mobile: (BuildContext context) => const SearchScreenMobile(),
            tablet:  (BuildContext context) =>  SearchScreenTablet(),
          )
      ),
    );
  }
}
