import 'package:flutter/material.dart';
import 'package:movie_search/resources/constants.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: MyColors.secondaryAccentColor,
        child: const Center(child: Text("ali")),
      ),
    );
  }
}
