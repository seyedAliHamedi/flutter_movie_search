import 'package:flutter/material.dart';
import 'package:movie_search/view/movie_detail_page.dart';
import 'package:movie_search/view/movie_home_page.dart';
import 'package:movie_search/view/movie_splash_page.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/splash',
      routes: {
        '/splash': (context) => const SplashScreen(),
        '/home': (context) => const HomeScreen(),
        '/detail': (context) => const DetailScreen(),
      },
    ),
  );
}
