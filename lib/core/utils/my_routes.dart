import 'package:book/Features/home/presentation/views_model/views/book_details_view.dart';
import 'package:book/Features/favourite/presentation/views/favorites_view.dart';
import 'package:book/Features/home/presentation/views_model/views/home_view.dart';
import 'package:book/Features/home/presentation/views_model/views/settings_view.dart';
import 'package:book/Features/home/presentation/views_model/views/side_bar_view.dart';
import 'package:book/Features/search/presentation/views/search_view.dart';
import 'package:flutter/material.dart';

class MyRoutes {

  static const String kHome = '/';
  static const String kBookDetails = '/book details';
  static const String kSideBar = '/side bar';
  static const String kFavorites = '/favorites';
  static const String kSettings = '/setting';
  static const String kSearch = '/search';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case kHome||'/':
        return MaterialPageRoute(
          builder: (context) => const HomeView(),
        );
      case kBookDetails:
        var arg = settings.arguments as Map<String,dynamic>;
        return MaterialPageRoute(
          builder: (context) => BookDetailsView(book: arg),
        );

      case kSideBar:
        return MaterialPageRoute(
          builder: (context) => const SideBarView(),
        );

      case kFavorites:
        return MaterialPageRoute(
          builder: (context) => const FavoritesView(),
        );

      case kSettings:
        return MaterialPageRoute(
          builder: (context) => const SettingsView(),
        );

      case kSearch:
        return MaterialPageRoute(
          builder: (context) => const SearchView(),
        );

    }
    return MaterialPageRoute(
      builder: (context) => const Scaffold(
        body: Text('no route defined'),
      ),
    );
  }
}
