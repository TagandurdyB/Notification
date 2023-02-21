import 'package:flutter/material.dart';
import 'package:notification/View/Scaffold/provider_navigation_bar.dart';
import 'package:notification/View/Screens/first_screen.dart';
import 'package:notification/View/Screens/second_screen.dart';

// ignore: must_be_immutable
class HomeScreens extends StatelessWidget {
  HomeScreens({super.key});

  @override
  Widget build(BuildContext context) {
    return buildScreens();
  }

  List<Widget> screens = const [
    FirstScreen(),
    SecondScreen(),
  ];

  Widget buildScreens() {
    return Stack(
      children: List.generate(
          screens.length,
          (index) => Builder(
                builder: (context) => Offstage(
                  offstage:
                      index != DistributorNavigationBar(context).screenIndex,
                  child: Scaffold(
                    body: screens[index],
                  ),
                ),
              )),
    );
  }
}