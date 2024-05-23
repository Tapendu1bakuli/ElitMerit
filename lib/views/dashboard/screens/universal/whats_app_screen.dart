import 'package:flutter/material.dart';
import 'package:main/views/dashboard/screens/mobile/whats_app_screen_mobile.dart';
import 'package:main/views/dashboard/screens/tablet/whats_app_screen_tablet.dart';
import 'package:responsive_builder/responsive_builder.dart';
class WhatsAppScreen extends StatelessWidget {
  const WhatsAppScreen({Key? key}) : super(key: key);

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
            mobile: (BuildContext context) => const WhatsAppScreenMobile(),
            tablet:  (BuildContext context) =>  WhatsAppScreenTablet(),
          )
      ),
    );
  }
}
