import 'package:get/get.dart';
import 'package:main/routers/route_constants.dart';
import 'package:main/views/authentication/screens/universal/login_screen.dart';
import 'package:main/views/authentication/screens/universal/new_account_screen.dart';
import 'package:main/views/authentication/screens/universal/password_recovery.dart';
import 'package:main/views/customButton/screens/universal/elevated_button_screen.dart';
import 'package:main/views/dashboard/screens/universal/account_settings_screen.dart';
import 'package:main/views/dashboard/screens/universal/add_apartment_expenses_screen.dart';
import 'package:main/views/dashboard/screens/universal/add_apartment_screen.dart';
import 'package:main/views/dashboard/screens/universal/add_lease_contract_screen.dart';
import 'package:main/views/dashboard/screens/universal/chat_screen.dart';
import 'package:main/views/dashboard/screens/universal/current_deals_in_progress_screen.dart';
import 'package:main/views/dashboard/screens/universal/favorites_and_saved_filters_screen.dart';
import 'package:main/views/dashboard/screens/universal/filter_screen.dart';
import 'package:main/views/dashboard/screens/universal/financial_overview_screen.dart';
import 'package:main/views/dashboard/screens/universal/home_bottom_sheet_screen.dart';
import 'package:main/views/dashboard/screens/universal/home_screen.dart';
import 'package:main/views/dashboard/screens/universal/location_screen.dart';
import 'package:main/views/dashboard/screens/universal/my_properties_screen.dart';
import 'package:main/views/dashboard/screens/universal/progress_detail_screen.dart';
import 'package:main/views/dashboard/screens/universal/property_detail_screen.dart';
import 'package:main/views/dashboard/screens/universal/search_screen.dart';
import 'package:main/views/dashboard/screens/universal/slide_menu.dart';
import 'package:main/views/dashboard/screens/universal/tag_screen.dart';
import 'package:main/views/dashboard/screens/universal/upcoming_installments_screen.dart';
import 'package:main/views/dashboard/screens/universal/whats_app_screen.dart';
import 'package:main/views/transaction/screens/universal/transaction_history_screen.dart';

import '../views/dashboard/screens/universal/user_property_info_screen.dart';
import '../views/splash/screens/universal/splash_screen.dart';

class NavRouter {
  static final generateRoute = [
    GetPage(
      name: splash,
      page: () => const SplashScreen(),
    ),
    GetPage(
      name: elevatedButton,
      page: () => const ElevatedButtonScreen(),
    ),
    GetPage(
      name: login,
      page: () => const LoginScreen(),
    ),
    GetPage(
      name: newAccount,
      page: () => const NewAccountScreen(),
    ),
    GetPage(
      name: passwordRecovery,
      page: () => const PasswordRecoveryScreen(),
    ),
    GetPage(
      name: accountSettings,
      page: () => const AccountSettingsScreen(),
    ),
    GetPage(
      name: homeBottomSheet,
      page: () => const HomeBottomSheet(),
    ),
    GetPage(
      name: home,
      page: () => const HomeScreen(),
    ),
    GetPage(
      name: search,
      page: () => const SearchScreen(),
    ),
    GetPage(
      name: tag,
      page: () => const TagScreen(),
    ),
    GetPage(
      name: location,
      page: () => const LocationScreen(),
    ),
    GetPage(
      name: whatsapp,
      page: () => const WhatsAppScreen(),
    ),
    GetPage(
      name: chat,
      page: () => const ChatScreen(),
    ),
    GetPage(
      name: addExpenses,
      page: () => const AddExpensesScreen(),
    ),
    GetPage(
      name: currentDeals,
      page: () => const CurrentDealsInProgress(),
    ),
    GetPage(
      name: addApartment,
      page: () => const AddApartmentScreen(),
    ),
    GetPage(
      name: financialOverview,
      page: () => const FinancialOverviewScreen(),
    ),
    GetPage(
      name: myPropertiesScreen,
      page: () => MyPropertiesScreen(),
    ),
    GetPage(
      name: transactionHistoryScreen,
      page: () => TransactionHistoryScreen(),
    ),
    GetPage(
      name: upComingInstallments,
      page: () => UpcomingInstallmentsScreen(),
    ),
    GetPage(
      name: slideMenu,
      page: () => SlideMenu(),
    ),
    GetPage(
      name: favoritesAndFilterScreen,
      page: () => FavoritesAndSavedFiltersScreen(),
    ),
    GetPage(
      name: addLeaseContract,
      page: () => AddLeaseContractScreen(),
    ),
    GetPage(
      name: filter,
      page: () => FilterScreen(),
    ),
    GetPage(
      name: propertyDetails,
      page: () => PropertyDetailScreen(),
    ),
    GetPage(
      name: progressDetail,
      page: () => ProgressDetailScreen(),
    ),
    GetPage(
      name: userPropertyInfo,
      page: () => UserPropertyInfoScreen(),
    )


  ];
}
