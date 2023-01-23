import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_repo/login_screen.dart';
import 'package:flutter_repo/profile_screen.dart';
import 'package:flutter_repo/screen_one.dart';
import 'package:flutter_repo/screen_three.dart';
import 'package:flutter_repo/screen_two.dart';

class TabBarScreen extends StatelessWidget {
  const TabBarScreen({super.key});
  TabBar get _tabBar => const TabBar(
        indicatorColor: Colors.white,
        tabs: [
          Tab(icon: Icon(Icons.smart_screen_rounded), text: "Screen One"),
          Tab(icon: Icon(Icons.screen_lock_portrait), text: "Screen Two"),
          Tab(icon: Icon(Icons.screen_lock_rotation), text: "Screen Three"),
        ],
      );

  @override
  Widget build(BuildContext context) {
    return Material(
        child: DefaultTabController(
            length: 3,
            animationDuration: Duration(seconds: 2),
            child: Scaffold(
              appBar: AppBar(
                title: const Text('Tab Bar'),
                bottom: PreferredSize(
                  preferredSize: _tabBar.preferredSize,
                  child: Material(
                    color: Colors.red, //<-- SEE HERE
                    child: _tabBar,
                  ),
                ),
                backgroundColor: Colors.red,
              ),
              body: const TabBarView(
                  children: [ScreenOne(), ScreenTwo(), ScreenThree()]),
            )));
  }
}
