import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_repo/user_Details_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var _width = 300.0;
  var _height = 200.0;
  bool flag = true;
  Color bgColor = Colors.blue;
  var arrData = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Profile')),
      ),
      // body: Center(
      //   child: Column(
      //     mainAxisAlignment: MainAxisAlignment.center,
      //     children: [
      //       AnimatedContainer(
      //         duration: Duration(seconds: 3),
      //         width: _width,
      //         height: _height,
      //         curve: Curves.easeInOut,
      //         color: bgColor,
      //       ),
      //       ElevatedButton(
      //           onPressed: () {
      //             setState(() {
      //               if (flag) {
      //                 _width = 200.0;
      //                 _height = 300.0;
      //                 flag = false;
      //                 bgColor = Colors.blue;
      //               } else {
      //                 _width = 300.0;
      //                 _height = 200.0;
      //                 flag = true;
      //                 bgColor = Colors.red;
      //               }
      //             });
      //           },
      //           child: Text('Animate'))
      //     ],
      //   ),
      // ),

      //

      body: ListWheelScrollView(
          itemExtent: 200,
          children: arrData
              .map((item) => Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      child: Center(
                          child: Text(
                        '$item',
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      )),
                      width: double.infinity,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.red,
                          boxShadow: const [
                            BoxShadow(
                              color: Colors.blue,
                              offset: Offset(
                                3.0,
                                3.0,
                              ),
                              blurRadius: 10.0,
                              spreadRadius: 2.0,
                            ), //BoxShadow
                          ]),
                    ),
                  ))
              .toList()),
    );
  }
}
