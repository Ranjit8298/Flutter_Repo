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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: const Text('Profile')),
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

      body: ListView(
        children: [
          InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return UserDetailsScreen();
              }));
            },
            child: Hero(
              tag: 'background',
              child: Container(
                width: 335,
                height: 60,
                margin: const EdgeInsets.all(10),
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                      topRight: Radius.circular(10),
                      bottomLeft: Radius.circular(10)),
                  color: Colors.grey.shade400,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 45.0,
                      height: 45.0,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage('assets/images/man_one.jpg'),
                        ),
                      ),
                    ),
                    const Text(
                      'Ranjit Kumar',
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 0.3),
                    ),
                    Text(
                      'View',
                      style: TextStyle(fontSize: 18, color: Colors.red),
                    )
                  ],
                ),
              ),
            ),
          ),
          Container(
            width: 335,
            height: 60,
            margin: const EdgeInsets.all(10),
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(10),
                  bottomLeft: Radius.circular(10)),
              color: Colors.grey.shade400,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 45.0,
                  height: 45.0,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage('assets/images/the_chef_logo.png'),
                    ),
                  ),
                ),
                const Text(
                  'Aanand Kumar',
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 0.3),
                ),
                InkWell(
                  onTap: () {
                    print('object');
                  },
                  child: const Text(
                    'View',
                    style: TextStyle(fontSize: 18, color: Colors.red),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
