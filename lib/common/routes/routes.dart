import 'package:get/get.dart';
import 'package:task1/pages/home_page.dart';
import 'package:task1/pages/profile_page/profile_view.dart';
import 'package:task1/pages/search_for_donors/view/search_for_donors_view.dart';
import 'package:task1/pages/search_page/view/search_view.dart';

class AppRoutes {
  static const String responsiveRoute = '/';
  static const String searchRoute = '/search_route/';
  static const String searchForDonorsRoute = '/search_for_donors_route/';
  static const String profileRoute = '/profile_route/';

  static String getResponsiveHome() => responsiveRoute;
  static String getSearchRoute() => searchRoute;
  static String getSearcForDonorsRoute() => searchForDonorsRoute;
  static String getProfileRoute() => profileRoute;

  static List<GetPage> routes = [
    GetPage(name: responsiveRoute, page: () => const HomePage()),
    GetPage(name: searchRoute, page: () => const SearchView()),
    GetPage(
        name: searchForDonorsRoute, page: () => const SearchForDonorsView()),
    GetPage(name: profileRoute, page: () => const ProfileView())
  ];
}
