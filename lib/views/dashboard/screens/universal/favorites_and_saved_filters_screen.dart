import 'package:flutter/material.dart';
import 'package:main/main.dart';
import 'package:main/views/dashboard/screens/mobile/favorites_and_saved_filters_screen_mobile.dart';
import 'package:main/views/dashboard/screens/tablet/favorites_and_saved_filters_screen_tablet.dart';
import 'package:main/views/dashboard/screens/web/filters_and_saved_filters_web_screen.dart';
import '../tablet/my_properties_tablet.dart';

class FavoritesAndSavedFiltersScreen extends StatelessWidget {
  const FavoritesAndSavedFiltersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    bool isMobile = true;
    if (ResponsiveUtils.isMobile(context)) {
      isMobile = true;
    } else if (ResponsiveUtils.isDesktop(context)) {
      isMobile = false;
    }
    else if (ResponsiveUtils.isTablet(context)) {
      isMobile = false;
    }
    return macOS||windows? const FilterAndSavedFilterWebScreen():isMobile? FavoritesAndSavedFiltersMobile():FavoritesAndSavedFiltersTablet();
  }
  }
