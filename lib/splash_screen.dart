import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_repo/home_screen.dart';
import 'package:flutter_repo/profile_screen.dart';
import 'package:flutter_repo/signup_screen.dart';
import 'package:flutter_repo/main.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Future<void> initState() async {
    super.initState();

    var prefs = await SharedPreferences.getInstance();
    var checkLogin = prefs.getBool('isLogin');

    if (checkLogin != null) {
      if (checkLogin) {
        Timer(const Duration(seconds: 3), (() {
          Navigator.pushReplacement(context,
              MaterialPageRoute(builder: (context) {
            return const ProfileScreen();
          }));
        }));
      } else {
        Timer(const Duration(seconds: 3), (() {
          Navigator.pushReplacement(context,
              MaterialPageRoute(builder: (context) {
            return const SignupScreen();
          }));
        }));
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          color: Colors.red,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('assets/images/the_chef_logo.png'),
                const Text(
                  '“A recipe has no soul. You, as the cook, must bring soul to the recipe.”',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontFamily: 'Ubuntu-Bold',
                    letterSpacing: 0.3,
                    wordSpacing: 0.2,
                    fontWeight: FontWeight.w500,
                  ),
                  textAlign: TextAlign.center,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
