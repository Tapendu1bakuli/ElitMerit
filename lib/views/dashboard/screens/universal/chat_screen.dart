import 'package:flutter/material.dart';
import 'package:main/views/dashboard/screens/mobile/chat_screen_mobile.dart';
import 'package:main/views/dashboard/screens/tablet/chat_screen_tablet.dart';
import 'package:responsive_builder/responsive_builder.dart';
class ChatScreen extends StatelessWidget {
  const ChatScreen({Key? key}) : super(key: key);

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
            mobile: (BuildContext context) => const ChatScreenMobile(),
            tablet:  (BuildContext context) =>  ChatScreenTablet(),
          )
      ),
    );
  }
}
