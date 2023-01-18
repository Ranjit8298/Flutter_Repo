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
  var arrData = [
    {
      'id': '1',
      'name': 'Ranjit Kumar',
      'mobile': '9110951612',
      'msg_count': '5'
    },
    {
      'id': '2',
      'name': 'Aanand Kumar',
      'mobile': '85510951612',
      'msg_count': '3'
    },
    {'id': '3', 'name': 'Sonu Kumar', 'mobile': '9580951612', 'msg_count': '7'},
    {
      'id': '4',
      'name': 'Chandan Kumar',
      'mobile': '9750951612',
      'msg_count': '6'
    },
    {'id': '5', 'name': 'Aman Kumar', 'mobile': '8020951612', 'msg_count': '2'},
    {'id': '6', 'name': 'Sam Kumar', 'mobile': '7510951612', 'msg_count': '1'},
  ];

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

      // body: Container(
      //   width: double.infinity,
      //   height: double.infinity,
      //   decoration: BoxDecoration(
      //       gradient: LinearGradient(
      //           colors: [Colors.red, Colors.white, Colors.green],
      //           begin: FractionalOffset(1.0, 0.0),
      //           end: FractionalOffset(0.0, 1.0))),
      //   child: ListWheelScrollView(
      //       itemExtent: 200,
      //       children: arrData
      //           .map((item) => Padding(
      //                 padding: const EdgeInsets.all(8.0),
      //                 child: Container(
      //                     child: Center(
      //                         child: Text(
      //                       '$item',
      //                       style: TextStyle(fontSize: 20, color: Colors.black),
      //                     )),
      //                     width: double.infinity,
      //                     decoration: BoxDecoration(
      //                       borderRadius: BorderRadius.circular(20),
      //                       color: Colors.white,
      //                       // boxShadow: const [
      //                       //   BoxShadow(
      //                       //     color: Colors.blue,
      //                       //     offset: Offset(
      //                       //       3.0,
      //                       //       3.0,
      //                       //     ),
      //                       //     blurRadius: 10.0,
      //                       //     spreadRadius: 2.0,
      //                       //   ), //BoxShadow
      //                       // ]),
      //                     )),
      //               ))
      //           .toList()),
      // ),

      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
            gradient: LinearGradient(
          colors: [Colors.white, Colors.white24],
          // begin: FractionalOffset(1.0, 0.0),
          // end: FractionalOffset(0.0, 1.0)
        )),
        child: ListView(
          children: arrData
              .map((item) => ListTile(
                    isThreeLine: true,
                    leading: Icon(Icons.account_circle_rounded),
                    title: Text(item['name']!),
                    subtitle: Text(item['mobile']!),
                    trailing: CircleAvatar(
                      backgroundColor: Colors.green.shade800,
                      radius: 12,
                      child: Text(
                        item['msg_count']!,
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ))
              .toList(),
        ),
      ),
    );
  }
}
