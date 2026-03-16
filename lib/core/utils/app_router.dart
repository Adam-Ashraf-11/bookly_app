import 'package:flutter_bookly_app/features/home/presentation/view/book_details_view.dart';
import 'package:flutter_bookly_app/features/home/presentation/view/home_view.dart';
import 'package:flutter_bookly_app/features/search/presentation/view/search_view.dart';
import 'package:flutter_bookly_app/features/splash/Presentation/views/splash_view.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
static const kHomeView = '/HomeView' ;
static const kBookDetailsView = '/BookDetailsView' ;
static const kSearchView = '/SearchView' ;
static 
final router = GoRouter(
  routes: [
      //!  Navigat to Splash view
    GoRoute(
      path: '/',
      builder: (context, state) => const SplashView(),
    ),
  //!  Navigat to home view
    GoRoute(
    path:kHomeView ,
      builder: (context, state) => const HomeView(),
    ),
      //!  Navigat to book details view
     GoRoute(
      path: kBookDetailsView ,
      builder: (context, state) => const BookDetailsView(),
    ),
      //!  Navigat to Search view
     GoRoute(
      path: kSearchView,
      builder: (context, state) => const SearchView(),
    ),
  ],
);
}