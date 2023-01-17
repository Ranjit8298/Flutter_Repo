import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_repo/intro_screen.dart';
import 'package:flutter_repo/splash_screen.dart';
import 'package:flutter_repo/user_data_screen.dart';
import 'package:flutter_repo/widgets/custom_textfield.dart';
// import 'package:flutter_repo/Widgets/CustomButtonWidgets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      // home: const MyHomePage(title: 'Flutter Example'),
      home: SplashScreen(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var mobileNoTxt = TextEditingController();
  var addresstxt = TextEditingController();
  var nameTxt = TextEditingController();

  RangeValues rangeValues = RangeValues(18, 100);

  @override
  Widget build(BuildContext context) {
    RangeLabels rangeLabels = RangeLabels(rangeValues.start.toInt().toString(),
        rangeValues.end.toInt().toString());
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      // body: Container(
      //     width: 150,
      //     height: 50,
      //     margin: const EdgeInsets.only(left: 20.0, right: 20.0, top: 20.0),
      //     color: Colors.red,

      //     child: const Center(
      //       child: Text(
      //         'Hello Dev',
      //         style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),
      //       ),
      //     )),

      // Add Button in Flutter
      // body: Center(
      //   // child: ElevatedButton(
      //   //   onPressed: (){
      //   //     print('Elevated Button');
      //   //   },
      //   //   child: const Text('Elevated'),
      //   // ),
      //   child: OutlinedButton(
      //     child: const Text('Outlined Button'),
      //     onPressed: () {
      //       print('outlined button');
      //     },
      //   ),
      // ));

      // image widget
      // body: Center(
      //   child: Container(
      //       width: 300,
      //       height: 300,
      //       child: Image.asset('assets/images/man_one.jpg')),
      // ),

      // Row and Columns
      // body: Center(
      //   child: Column(children: <Widget>[
      //     Text('data'),
      //     Text('data 2'),
      //     Text('data 3'),
      //     Text('data 4'),
      //     Text('data 5'),
      //     Container(
      //       width: 100,
      //       height: 100,
      //       child: Image.asset('assets/images/man_one.jpg'),
      //     )
      //   ]),
      // ),

      // Columns
      // body: Center(
      //   child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //     children: <Widget>[
      //     Container(
      //       width: 50,
      //       height: 50,
      //       child: Image.asset('assets/images/man_one.jpg'),
      //     ),
      //     Container(
      //       width: 100,
      //       height: 100,
      //       child: Image.asset('assets/images/man_one.jpg'),
      //     ),
      //   ]),
      // ),

      //InkWell
      // body: Center(
      //   child: InkWell(
      //     onTap: () {
      //       print('object inkwell');
      //     },
      //     child: Image.asset('assets/images/man_one.jpg'),
      //   ),
      // ),

      // ScrollView

      // body: Padding(
      //   padding: const EdgeInsets.all(15.0),
      //   child: SingleChildScrollView(
      //     child: Column(
      //         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //         children: <Widget>[
      //           SingleChildScrollView(
      //             scrollDirection: Axis.horizontal,
      //             child: Row(
      //               children: [
      //                 Container(
      //                   height: 250,
      //                   width: 200,
      //                   margin:  const EdgeInsets.all(10),
      //                   child: Image.asset('assets/images/man_one.jpg'),
      //                 ),
      //                 Container(
      //                   height: 250,
      //                   width: 200,
      //                   margin: const EdgeInsets.all(10),
      //                   child: Image.asset('assets/images/man_one.jpg'),
      //                 ),
      //                 Container(
      //                   height: 250,
      //                   width: 200,
      //                   margin: const EdgeInsets.all(10),
      //                   child: Image.asset('assets/images/man_one.jpg'),
      //                 ),
      //                 Container(
      //                   height: 250,
      //                   width: 200,
      //                   margin: const EdgeInsets.all(10),
      //                   child: Image.asset('assets/images/man_one.jpg'),
      //                 ),
      //                 Container(
      //                   height: 250,
      //                   width: 200,
      //                   margin: const EdgeInsets.all(10),
      //                   child: Image.asset('assets/images/man_one.jpg'),
      //                 ),
      //                 Container(
      //                   height: 250,
      //                   width: 200,
      //                   margin: const EdgeInsets.all(10),
      //                   child: Image.asset('assets/images/man_one.jpg'),
      //                 ),
      //                 Container(
      //                   height: 250,
      //                   width: 200,
      //                   margin: const EdgeInsets.all(10),
      //                   child: Image.asset('assets/images/man_one.jpg'),
      //                 ),
      //                 Container(
      //                   height: 250,
      //                   width: 200,
      //                   margin: const EdgeInsets.all(10),
      //                   child: Image.asset('assets/images/man_one.jpg'),
      //                 ),
      //                 Container(
      //                   height: 250,
      //                   width: 200,
      //                   margin: const EdgeInsets.all(10),
      //                   child: Image.asset('assets/images/man_one.jpg'),
      //                 ),
      //                 Container(
      //                   height: 250,
      //                   width: 200,
      //                   margin: const EdgeInsets.all(10),
      //                   child: Image.asset('assets/images/man_one.jpg'),
      //                 ),
      //                 Container(
      //                   height: 250,
      //                   width: 200,
      //                   margin: const EdgeInsets.all(10),
      //                   child: Image.asset('assets/images/man_one.jpg'),
      //                 ),
      //               ],
      //             ),
      //           ),
      //           SizedBox(
      //             height: 250,
      //             child: Image.asset('assets/images/man_one.jpg'),
      //           ),
      //           SizedBox(
      //             height: 250,
      //             child: Image.asset('assets/images/man_one.jpg'),
      //           ),
      //           SizedBox(
      //             height: 250,
      //             child: Image.asset('assets/images/man_one.jpg'),
      //           ),
      //           SizedBox(
      //             height: 250,
      //             child: Image.asset('assets/images/man_one.jpg'),
      //           ),
      //           SizedBox(
      //             height: 250,
      //             child: Image.asset('assets/images/man_one.jpg'),
      //           ),
      //           SizedBox(
      //             height: 250,
      //             child: Image.asset('assets/images/man_one.jpg'),
      //           ),
      //           SizedBox(
      //             height: 250,
      //             child: Image.asset('assets/images/man_one.jpg'),
      //           ),
      //           SizedBox(
      //             height: 250,
      //             child: Image.asset('assets/images/man_one.jpg'),
      //           ),
      //           SizedBox(
      //             height: 250,
      //             child: Image.asset('assets/images/man_one.jpg'),
      //           ),
      //         ]),
      //   ),
      // ),
      // body: ListView(
      //   reverse: false,
      //   children: [
      //     Padding(
      //       padding: const EdgeInsets.all(8.0),
      //       child: Container(
      //         height: 60,
      //         decoration: BoxDecoration(
      //             color: Colors.blueGrey,
      //             borderRadius: BorderRadius.circular(8),
      //             border: Border.all(width: 1, color: Colors.black),
      //             boxShadow: [
      //               BoxShadow(
      //                 color: Colors.red.shade200,
      //                 blurRadius: 5,
      //                 spreadRadius: 5,
      //               )
      //             ]),
      //         child: Padding(
      //           padding: const EdgeInsets.all(8.0),
      //           child: Row(
      //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //             children: <Widget>[
      //               Container(
      //                 width: 50,
      //                 height: 50,
      //                 decoration: BoxDecoration(
      //                     borderRadius: BorderRadius.circular(25.0)),
      //                 child: Image.asset(
      //                   'assets/images/man_one.jpg',
      //                   fit: BoxFit.contain,
      //                 ),
      //               ),
      //               const Text(
      //                 'Ranjit Kumar',
      //                 style: TextStyle(
      //                     color: Colors.white,
      //                     fontSize: 18,
      //                     fontWeight: FontWeight.w500),
      //               ),
      //               const InkWell(
      //                 child: Text(
      //                   'SEND',
      //                   style: TextStyle(
      //                       color: Colors.white,
      //                       fontSize: 16,
      //                       fontWeight: FontWeight.bold),
      //                 ),
      //               )
      //             ],
      //           ),
      //         ),
      //       ),
      //     ),
      //     Padding(
      //       padding: const EdgeInsets.all(8.0),
      //       child: Container(
      //         height: 60,
      //         color: Colors.blueGrey,
      //         child: Padding(
      //           padding: const EdgeInsets.all(8.0),
      //           child: Row(
      //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //             children: <Widget>[
      //               Image.asset(
      //                 'assets/images/man_one.jpg',
      //                 fit: BoxFit.contain,
      //                 width: 50,
      //                 height: 50,
      //               ),
      //               const Text(
      //                 'Ranjit Kumar',
      //                 style: TextStyle(
      //                     color: Colors.white,
      //                     fontSize: 18,
      //                     fontWeight: FontWeight.w500),
      //               ),
      //               const InkWell(
      //                 child: Text(
      //                   'SEND',
      //                   style: TextStyle(
      //                       color: Colors.white,
      //                       fontSize: 16,
      //                       fontWeight: FontWeight.bold),
      //                 ),
      //               )
      //             ],
      //           ),
      //         ),
      //       ),
      //     ),
      //     Padding(
      //       padding: const EdgeInsets.all(8.0),
      //       child: Container(
      //         height: 60,
      //         color: Colors.blueGrey,
      //         child: Padding(
      //           padding: const EdgeInsets.all(8.0),
      //           child: Row(
      //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //             children: <Widget>[
      //               Image.asset(
      //                 'assets/images/man_one.jpg',
      //                 fit: BoxFit.contain,
      //                 width: 50,
      //                 height: 50,
      //               ),
      //               const Text(
      //                 'Ranjit Kumar',
      //                 style: TextStyle(
      //                     color: Colors.white,
      //                     fontSize: 18,
      //                     fontWeight: FontWeight.w500),
      //               ),
      //               const InkWell(
      //                 child: Text(
      //                   'SEND',
      //                   style: TextStyle(
      //                       color: Colors.white,
      //                       fontSize: 16,
      //                       fontWeight: FontWeight.bold),
      //                 ),
      //               )
      //             ],
      //           ),
      //         ),
      //       ),
      //     ),
      //     Padding(
      //       padding: const EdgeInsets.all(8.0),
      //       child: Container(
      //         height: 60,
      //         color: Colors.blueGrey,
      //         child: Padding(
      //           padding: const EdgeInsets.all(8.0),
      //           child: Row(
      //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //             children: <Widget>[
      //               Image.asset(
      //                 'assets/images/man_one.jpg',
      //                 fit: BoxFit.contain,
      //                 width: 50,
      //                 height: 50,
      //               ),
      //               const Text(
      //                 'Ranjit Kumar',
      //                 style: TextStyle(
      //                     color: Colors.white,
      //                     fontSize: 18,
      //                     fontWeight: FontWeight.w500),
      //               ),
      //               const InkWell(
      //                 child: Text(
      //                   'SEND',
      //                   style: TextStyle(
      //                       color: Colors.white,
      //                       fontSize: 16,
      //                       fontWeight: FontWeight.bold),
      //                 ),
      //               )
      //             ],
      //           ),
      //         ),
      //       ),
      //     ),
      //     Padding(
      //       padding: const EdgeInsets.all(8.0),
      //       child: Container(
      //         height: 60,
      //         color: Colors.blueGrey,
      //         child: Padding(
      //           padding: const EdgeInsets.all(8.0),
      //           child: Row(
      //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //             children: <Widget>[
      //               Image.asset(
      //                 'assets/images/man_one.jpg',
      //                 fit: BoxFit.contain,
      //                 width: 50,
      //                 height: 50,
      //               ),
      //               const Text(
      //                 'Ranjit Kumar',
      //                 style: TextStyle(
      //                     color: Colors.white,
      //                     fontSize: 18,
      //                     fontWeight: FontWeight.w500),
      //               ),
      //               const InkWell(
      //                 child: Text(
      //                   'SEND',
      //                   style: TextStyle(
      //                       color: Colors.white,
      //                       fontSize: 16,
      //                       fontWeight: FontWeight.bold),
      //                 ),
      //               )
      //             ],
      //           ),
      //         ),
      //       ),
      //     ),
      //     Padding(
      //       padding: const EdgeInsets.all(8.0),
      //       child: Container(
      //         height: 60,
      //         color: Colors.blueGrey,
      //         child: Padding(
      //           padding: const EdgeInsets.all(8.0),
      //           child: Row(
      //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //             children: <Widget>[
      //               Image.asset(
      //                 'assets/images/man_one.jpg',
      //                 fit: BoxFit.contain,
      //                 width: 50,
      //                 height: 50,
      //               ),
      //               const Text(
      //                 'Ranjit Kumar',
      //                 style: TextStyle(
      //                     color: Colors.white,
      //                     fontSize: 18,
      //                     fontWeight: FontWeight.w500),
      //               ),
      //               const InkWell(
      //                 child: Text(
      //                   'SEND',
      //                   style: TextStyle(
      //                       color: Colors.white,
      //                       fontSize: 16,
      //                       fontWeight: FontWeight.bold),
      //                 ),
      //               )
      //             ],
      //           ),
      //         ),
      //       ),
      //     ),
      //     Padding(
      //       padding: const EdgeInsets.all(8.0),
      //       child: Container(
      //         height: 60,
      //         color: Colors.blueGrey,
      //         child: Padding(
      //           padding: const EdgeInsets.all(8.0),
      //           child: Row(
      //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //             children: <Widget>[
      //               Image.asset(
      //                 'assets/images/man_one.jpg',
      //                 fit: BoxFit.contain,
      //                 width: 50,
      //                 height: 50,
      //               ),
      //               const Text(
      //                 'Ranjit Kumar',
      //                 style: TextStyle(
      //                     color: Colors.white,
      //                     fontSize: 18,
      //                     fontWeight: FontWeight.w500),
      //               ),
      //               const InkWell(
      //                 child: Text(
      //                   'SEND',
      //                   style: TextStyle(
      //                       color: Colors.white,
      //                       fontSize: 16,
      //                       fontWeight: FontWeight.bold),
      //                 ),
      //               )
      //             ],
      //           ),
      //         ),
      //       ),
      //     ),
      //     Padding(
      //       padding: const EdgeInsets.all(8.0),
      //       child: Container(
      //         height: 60,
      //         color: Colors.blueGrey,
      //         child: Padding(
      //           padding: const EdgeInsets.all(8.0),
      //           child: Row(
      //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //             children: <Widget>[
      //               Image.asset(
      //                 'assets/images/man_one.jpg',
      //                 fit: BoxFit.contain,
      //                 width: 50,
      //                 height: 50,
      //               ),
      //               const Text(
      //                 'Ranjit Kumar',
      //                 style: TextStyle(
      //                     color: Colors.white,
      //                     fontSize: 18,
      //                     fontWeight: FontWeight.w500),
      //               ),
      //               const InkWell(
      //                 child: Text(
      //                   'SEND',
      //                   style: TextStyle(
      //                       color: Colors.white,
      //                       fontSize: 16,
      //                       fontWeight: FontWeight.bold),
      //                 ),
      //               )
      //             ],
      //           ),
      //         ),
      //       ),
      //     ),
      //     Padding(
      //       padding: const EdgeInsets.all(8.0),
      //       child: Container(
      //         height: 60,
      //         color: Colors.blueGrey,
      //         child: Padding(
      //           padding: const EdgeInsets.all(8.0),
      //           child: Row(
      //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //             children: <Widget>[
      //               Image.asset(
      //                 'assets/images/man_one.jpg',
      //                 fit: BoxFit.contain,
      //                 width: 50,
      //                 height: 50,
      //               ),
      //               const Text(
      //                 'Ranjit Kumar',
      //                 style: TextStyle(
      //                     color: Colors.white,
      //                     fontSize: 18,
      //                     fontWeight: FontWeight.w500),
      //               ),
      //               const InkWell(
      //                 child: Text(
      //                   'SEND',
      //                   style: TextStyle(
      //                       color: Colors.white,
      //                       fontSize: 16,
      //                       fontWeight: FontWeight.bold),
      //                 ),
      //               )
      //             ],
      //           ),
      //         ),
      //       ),
      //     ),
      //     Padding(
      //       padding: const EdgeInsets.all(8.0),
      //       child: Container(
      //         height: 60,
      //         color: Colors.blueGrey,
      //         child: Padding(
      //           padding: const EdgeInsets.all(8.0),
      //           child: Row(
      //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //             children: <Widget>[
      //               Image.asset(
      //                 'assets/images/man_one.jpg',
      //                 fit: BoxFit.contain,
      //                 width: 50,
      //                 height: 50,
      //               ),
      //               const Text(
      //                 'Ranjit Kumar',
      //                 style: TextStyle(
      //                     color: Colors.white,
      //                     fontSize: 18,
      //                     fontWeight: FontWeight.w500),
      //               ),
      //               const InkWell(
      //                 child: Text(
      //                   'SEND',
      //                   style: TextStyle(
      //                       color: Colors.white,
      //                       fontSize: 16,
      //                       fontWeight: FontWeight.bold),
      //                 ),
      //               )
      //             ],
      //           ),
      //         ),
      //       ),
      //     ),
      //     Padding(
      //       padding: const EdgeInsets.all(8.0),
      //       child: Container(
      //         height: 60,
      //         color: Colors.blueGrey,
      //         child: Padding(
      //           padding: const EdgeInsets.all(8.0),
      //           child: Row(
      //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //             children: <Widget>[
      //               Image.asset(
      //                 'assets/images/man_one.jpg',
      //                 fit: BoxFit.contain,
      //                 width: 50,
      //                 height: 50,
      //               ),
      //               const Text(
      //                 'Ranjit Kumar',
      //                 style: TextStyle(
      //                     color: Colors.white,
      //                     fontSize: 18,
      //                     fontWeight: FontWeight.w500),
      //               ),
      //               const InkWell(
      //                 child: Text(
      //                   'SEND',
      //                   style: TextStyle(
      //                       color: Colors.white,
      //                       fontSize: 16,
      //                       fontWeight: FontWeight.bold),
      //                 ),
      //               )
      //             ],
      //           ),
      //         ),
      //       ),
      //     ),
      //     Padding(
      //       padding: const EdgeInsets.all(8.0),
      //       child: Container(
      //         height: 60,
      //         color: Colors.blueGrey,
      //         child: Padding(
      //           padding: const EdgeInsets.all(8.0),
      //           child: Row(
      //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //             children: <Widget>[
      //               Image.asset(
      //                 'assets/images/man_one.jpg',
      //                 fit: BoxFit.contain,
      //                 width: 50,
      //                 height: 50,
      //               ),
      //               const Text(
      //                 'Ranjit Kumar',
      //                 style: TextStyle(
      //                     color: Colors.white,
      //                     fontSize: 18,
      //                     fontWeight: FontWeight.w500),
      //               ),
      //               const InkWell(
      //                 child: Text(
      //                   'SEND',
      //                   style: TextStyle(
      //                       color: Colors.white,
      //                       fontSize: 16,
      //                       fontWeight: FontWeight.bold),
      //                 ),
      //               )
      //             ],
      //           ),
      //         ),
      //       ),
      //     ),
      //     Padding(
      //       padding: const EdgeInsets.all(8.0),
      //       child: Container(
      //         height: 60,
      //         color: Colors.blueGrey,
      //         child: Padding(
      //           padding: const EdgeInsets.all(8.0),
      //           child: Row(
      //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //             children: <Widget>[
      //               Image.asset(
      //                 'assets/images/man_one.jpg',
      //                 fit: BoxFit.contain,
      //                 width: 50,
      //                 height: 50,
      //               ),
      //               const Text(
      //                 'Ranjit Kumar',
      //                 style: TextStyle(
      //                     color: Colors.white,
      //                     fontSize: 18,
      //                     fontWeight: FontWeight.w500),
      //               ),
      //               const InkWell(
      //                 child: Text(
      //                   'SEND',
      //                   style: TextStyle(
      //                       color: Colors.white,
      //                       fontSize: 16,
      //                       fontWeight: FontWeight.bold),
      //                 ),
      //               )
      //             ],
      //           ),
      //         ),
      //       ),
      //     ),
      //     Padding(
      //       padding: const EdgeInsets.all(8.0),
      //       child: Container(
      //         height: 60,
      //         color: Colors.blueGrey,
      //         child: Padding(
      //           padding: const EdgeInsets.all(8.0),
      //           child: Row(
      //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //             children: <Widget>[
      //               Image.asset(
      //                 'assets/images/man_one.jpg',
      //                 fit: BoxFit.contain,
      //                 width: 50,
      //                 height: 50,
      //               ),
      //               const Text(
      //                 'Ranjit Kumar',
      //                 style: TextStyle(
      //                     color: Colors.white,
      //                     fontSize: 18,
      //                     fontWeight: FontWeight.w500),
      //               ),
      //               const InkWell(
      //                 child: Text(
      //                   'SEND',
      //                   style: TextStyle(
      //                       color: Colors.white,
      //                       fontSize: 16,
      //                       fontWeight: FontWeight.bold),
      //                 ),
      //               )
      //             ],
      //           ),
      //         ),
      //       ),
      //     ),
      //     Padding(
      //       padding: const EdgeInsets.all(8.0),
      //       child: Container(
      //         height: 60,
      //         color: Colors.blueGrey,
      //         child: Padding(
      //           padding: const EdgeInsets.all(8.0),
      //           child: Row(
      //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //             children: <Widget>[
      //               Image.asset(
      //                 'assets/images/man_one.jpg',
      //                 fit: BoxFit.contain,
      //                 width: 50,
      //                 height: 50,
      //               ),
      //               const Text(
      //                 'Ranjit Kumar',
      //                 style: TextStyle(
      //                     color: Colors.white,
      //                     fontSize: 18,
      //                     fontWeight: FontWeight.w500),
      //               ),
      //               const InkWell(
      //                 child: Text(
      //                   'SEND',
      //                   style: TextStyle(
      //                       color: Colors.white,
      //                       fontSize: 16,
      //                       fontWeight: FontWeight.bold),
      //                 ),
      //               )
      //             ],
      //           ),
      //         ),
      //       ),
      //     ),
      //     Padding(
      //       padding: const EdgeInsets.all(8.0),
      //       child: Container(
      //         height: 60,
      //         color: Colors.blueGrey,
      //         child: Padding(
      //           padding: const EdgeInsets.all(8.0),
      //           child: Row(
      //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //             children: <Widget>[
      //               Image.asset(
      //                 'assets/images/man_one.jpg',
      //                 fit: BoxFit.contain,
      //                 width: 50,
      //                 height: 50,
      //               ),
      //               const Text(
      //                 'Aanand Kumar',
      //                 style: TextStyle(
      //                     color: Colors.white,
      //                     fontSize: 18,
      //                     fontWeight: FontWeight.w500),
      //               ),
      //               InkWell(
      //                 onTap: () {
      //                   print('last object');
      //                 },
      //                 child: const Text(
      //                   'SEND',
      //                   style: TextStyle(
      //                       color: Colors.white,
      //                       fontSize: 16,
      //                       fontWeight: FontWeight.bold),
      //                 ),
      //               )
      //             ],
      //           ),
      //         ),
      //       ),
      //     )
      //   ],
      // ),

      //card widgets
      // body : Card (
      //   elevation: 10,
      //   margin: EdgeInsets.all(10),
      //   child: Padding(
      //     padding: EdgeInsets.all(10),
      //     child: Text('Card Widgets'),
      //   )
      // )

// textFiled
      // body: Center(
      //     child: Container(
      //         width: 335,
      //         child: Column(
      //           mainAxisAlignment: MainAxisAlignment.center,
      //           children: [
      //             Container(
      //               margin: EdgeInsets.all(10),
      //               child: TextField(
      //                 controller: emailTxt,
      //                 keyboardType: TextInputType.emailAddress,
      //                 decoration: InputDecoration(
      //                     hintText: 'Enter your email',
      //                     prefixIcon: Icon(Icons.email_rounded),
      //                     border: OutlineInputBorder(
      //                         borderRadius: BorderRadius.circular(15),
      //                         borderSide: BorderSide(color: Colors.grey))),
      //               ),
      //             ),
      //             Container(
      //               margin: EdgeInsets.all(10),
      //               child: TextField(
      //                 controller: passwordTxt,
      //                 keyboardType: TextInputType.visiblePassword,
      //                 obscureText: true,
      //                 decoration: InputDecoration(
      //                     hintText: 'Enter your password',
      //                     prefixIcon: Icon(Icons.password_rounded),
      //                     border: OutlineInputBorder(
      //                         borderRadius: BorderRadius.circular(15),
      //                         borderSide: BorderSide(color: Colors.grey))),
      //               ),
      //             ),
      //             Container(
      //               width: 290,
      //               height: 45,
      //               margin: EdgeInsets.only(top: 20),
      //               child: ElevatedButton(
      //                   onPressed: () {
      //                     print(
      //                         'Email is ${emailTxt} and password is ${passwordTxt}');
      //                   },
      //                   child: Text('Submit')),
      //             ),
      //           ],
      //         ))),

// date picker modal
      // body: Center(
      //   child: Column(
      //     mainAxisAlignment: MainAxisAlignment.center,
      //     children: [
      //       Text('Select Date'),
      //       Container(
      //           margin: EdgeInsets.only(top: 10),
      //           child: ElevatedButton(
      //               onPressed: () async {
      //                 DateTime? datePicker = await showDatePicker(
      //                   context: context,
      //                   initialDate: DateTime.now(),
      //                   firstDate: DateTime(1900),
      //                   lastDate: DateTime(2004),
      //                 );
      //               },
      //               child: Text('Show')))
      //     ],
      //   ),
      // ),

      // Grid View
      // body: Padding(
      //   padding: const EdgeInsets.all(10.0),
      //   child: GridView.count(
      //     crossAxisCount: 3,
      //     children: [
      //       Padding(
      //         padding: const EdgeInsets.all(8.0),
      //         child: Container(
      //           color: Colors.black,
      //         ),
      //       ),
      //       Padding(
      //         padding: const EdgeInsets.all(8.0),
      //         child: Container(
      //           color: Colors.blue,
      //         ),
      //       ),
      //       Padding(
      //         padding: const EdgeInsets.all(8.0),
      //         child: Container(
      //           color: Colors.green,
      //         ),
      //       ),
      //       Padding(
      //         padding: const EdgeInsets.all(8.0),
      //         child: Container(
      //           color: Colors.amberAccent,
      //         ),
      //       ),
      //       Padding(
      //         padding: const EdgeInsets.all(8.0),
      //         child: Container(
      //           color: Colors.orange,
      //         ),
      //       ),
      //       Padding(
      //         padding: const EdgeInsets.all(8.0),
      //         child: Container(
      //           color: Colors.yellow,
      //         ),
      //       ),
      //       Padding(
      //         padding: const EdgeInsets.all(8.0),
      //         child: Container(
      //           color: Colors.purple,
      //         ),
      //       ),
      //       Padding(
      //         padding: const EdgeInsets.all(8.0),
      //         child: Container(
      //           color: Colors.indigo,
      //         ),
      //       ),
      //       Padding(
      //         padding: const EdgeInsets.all(8.0),
      //         child: Container(
      //           color: Colors.deepPurpleAccent,
      //         ),
      //       ),
      //     ],
      //   ),
      // ),

      //custom button call
      // body: CustomButtonWidgets(
      //   btnName: 'Submit',
      //   btnColor: Colors.red,
      //   btnIcon: Icon(Icons.login_rounded),
      //   callback: (() {
      //     print('object clicked');
      //   }),
      // ),

      // Wrap Widgets
      // body: Padding(
      //   padding: const EdgeInsets.all(5.0),
      //   child: Container(
      //     width: double.infinity,
      //     child: Wrap(
      //       spacing: 10,
      //       runSpacing: 10,
      //       direction: Axis.horizontal,
      //       alignment: WrapAlignment.center,
      //       children: [
      //       Container(
      //         width: 100,
      //         height: 100,
      //         color: Colors.red,
      //       ),
      //       Container(
      //         width: 100,
      //         height: 100,
      //         color: Colors.blue,
      //       ),
      //       Container(
      //         width: 100,
      //         height: 100,
      //         color: Colors.black,
      //       ),
      //       Container(
      //         width: 100,
      //         height: 100,
      //         color: Colors.green,
      //       ),
      //       Container(
      //         width: 100,
      //         height: 100,
      //         color: Colors.yellow,
      //       ),
      //       Container(
      //         width: 100,
      //         height: 100,
      //         color: Colors.orange,
      //       ),
      //       Container(
      //         width: 100,
      //         height: 100,
      //         color: Colors.redAccent,
      //       ),
      //       Container(
      //         width: 100,
      //         height: 100,
      //         color: Colors.purple,
      //       ),
      //       Container(
      //         width: 100,
      //         height: 100,
      //         color: Colors.amber,
      //       ),
      //       Container(
      //         width: 100,
      //         height: 100,
      //         color: Colors.pink,
      //       ),
      //       Container(
      //         width: 100,
      //         height: 100,
      //         color: Colors.deepPurple,
      //       ),
      //       Container(
      //         width: 100,
      //         height: 100,
      //         color: Colors.indigo,
      //       ),
      //     ]),
      //   ),
      // ),

      // riched text
      // body: RichText(
      //     text: TextSpan(
      //         style: TextStyle(color: Colors.grey, fontSize: 20),
      //         children: <TextSpan>[
      //       TextSpan(
      //         text: 'Hello',
      //       ),
      //       TextSpan(text: 'World', style: TextStyle(color: Colors.blue, fontSize: 30))
      //     ])),

      // positioned widgets
      // body: Container(
      //   width: double.infinity,
      //   height: double.infinity,
      //   color: Colors.white10,
      //   child: Stack(
      //     children: [
      //       Positioned(
      //         right: -100,
      //         top: -40,
      //         child: Container(
      //           width: 150,
      //           height: 150,
      //           decoration: BoxDecoration(
      //             color: Colors.red.withOpacity(0.3),
      //             borderRadius: BorderRadius.circular(75),
      //           ),
      //         ),
      //       ),
      //        Positioned(
      //         right: -30,
      //         top: -90,
      //         child: Container(
      //           width: 150,
      //           height: 150,
      //           decoration: BoxDecoration(
      //             color: Colors.lightBlue.withOpacity(0.3),
      //             borderRadius: BorderRadius.circular(75),
      //           ),
      //         ),
      //       ),
      //     ],
      //   ),
      // ),

      // body: Container(
      //   color: Colors.white24,
      //   child: Center(
      //     child: Column(
      //       children: [
      //         Container(
      //           margin: const EdgeInsets.all(10),
      //           child: TextField(
      //             controller: numberOne,
      //             keyboardType: TextInputType.number,
      //             decoration: InputDecoration(
      //                 hintText: 'Enter first Number',
      //                 prefixIcon: const Icon(Icons.numbers_rounded),
      //                 border: OutlineInputBorder(
      //                     borderRadius: BorderRadius.circular(15),
      //                     borderSide: const BorderSide(color: Colors.grey))),
      //           ),
      //         ),
      //         Container(
      //           margin: const EdgeInsets.all(10),
      //           child: TextField(
      //             controller: numberTwo,
      //             keyboardType: TextInputType.number,
      //             decoration: InputDecoration(
      //                 hintText: 'Enter second Number',
      //                 prefixIcon: const Icon(Icons.numbers_rounded),
      //                 border: OutlineInputBorder(
      //                     borderRadius: BorderRadius.circular(15),
      //                     borderSide: const BorderSide(color: Colors.grey))),
      //           ),
      //         ),
      //         CustomTextField(
      //           controllerTxt: customTxt,
      //           keyboardType: TextInputType.emailAddress,
      //           hintText: 'Enter Email',
      //           labelText: 'Email',
      //           prefixIcon: const Icon(Icons.date_range_rounded),
      //           onChanged: (customTxt) {
      //             print(customTxt);
      //           },
      //         ),
      //         Row(
      //           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //           children: [
      //             ElevatedButton.icon(
      //                 onPressed: () {
      //                   var no1 = int.parse(numberOne.text.toString());
      //                   var no2 = int.parse(numberTwo.text.toString());
      //                   var sum = no1 + no2;
      //                   resultNumber = "sum of $no1 and $no2 is: $sum";
      //                   setState(() {});
      //                 },
      //                 icon: const Icon(Icons.add),
      //                 label: const Text('Add')),
      //             ElevatedButton.icon(
      //                 onPressed: () {
      //                   var no1 = int.parse(numberOne.text.toString());
      //                   var no2 = int.parse(numberTwo.text.toString());
      //                   var sub = no1 - no2;
      //                   resultNumber = "substraction of $no1 and $no2 is: $sub";
      //                   setState(() {});
      //                 },
      //                 icon: const Icon(Icons.minimize_rounded),
      //                 label: const Text('Sub')),
      //             ElevatedButton.icon(
      //                 onPressed: () {
      //                   var no1 = int.parse(numberOne.text.toString());
      //                   var no2 = int.parse(numberTwo.text.toString());
      //                   var multi = no1 * no2;
      //                   resultNumber =
      //                       "multiplication of $no1 and $no2 is: $multi";
      //                   setState(() {});
      //                 },
      //                 icon: const Icon(Icons.star_border_rounded),
      //                 label: const Text('Multi')),
      //             ElevatedButton.icon(
      //                 onPressed: () {
      //                   var no1 = int.parse(numberOne.text.toString());
      //                   var no2 = int.parse(numberTwo.text.toString());
      //                   var div = no1 / no2;
      //                   resultNumber = "division of $no1 and $no2 is: $div";
      //                   setState(() {});
      //                 },
      //                 icon: const Icon(Icons.safety_divider_rounded),
      //                 label: const Text('Div'))
      //           ],
      //         ),
      //         Container(
      //             margin: const EdgeInsets.only(top: 20),
      //             child: Text(
      //               '$resultNumber',
      //               style: TextStyle(fontSize: 20),
      //             )),
      //         ElevatedButton(
      //             onPressed: () {
      //               print(customTxt);
      //               setState(() {});
      //             },
      //             child: Text('Print')),
      //         ElevatedButton(
      //             onPressed: () {
      //               Navigator.push(context,
      //                   MaterialPageRoute(builder: (context) {
      //                 return IntroScreen();
      //               }));
      //             },
      //             child: Text(
      //               'Go To Intro Screen',
      //             ))
      //       ],
      //     ),
      //   ),
      // ),

      // passing data from one screen to another
      body: Center(
        child: Column(
          children: [
            CustomTextField(
              controllerTxt: nameTxt,
              keyboardType: TextInputType.name,
              hintText: 'Enter Name',
              labelText: 'Name',
              prefixIcon: const Icon(Icons.person),
              onChanged: (nameTxt) {
                print(nameTxt);
              },
            ),
            CustomTextField(
              controllerTxt: addresstxt,
              keyboardType: TextInputType.streetAddress,
              hintText: 'Enter Address',
              labelText: 'Address',
              prefixIcon: const Icon(Icons.location_on_rounded),
              onChanged: (addresstxt) {
                print(addresstxt);
              },
            ),
            CustomTextField(
              controllerTxt: mobileNoTxt,
              keyboardType: TextInputType.number,
              hintText: 'Enter Mobile No',
              labelText: 'Mobile No',
              prefixIcon: const Icon(Icons.phone_android_rounded),
              onChanged: (mobileNoTxt) {
                print(mobileNoTxt);
              },
            ),
            RangeSlider(
              values: rangeValues,
              labels: rangeLabels,
              activeColor: Colors.red,
              inactiveColor: Colors.red.shade100,
              divisions: 100,
              min: 18,
              max: 100,
              onChanged: (value) {
                rangeValues = value;
                setState(() {});
              },
            ),
            Container(
              width: 335,
              height: 45,
              margin: EdgeInsets.only(top: 30),
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return UserDataScreen(
                          nameTxt.text.toString(),
                          addresstxt.text.toString(),
                          mobileNoTxt.text.toString());
                    }));
                  },
                  child: Text(
                    'SEND DATA',
                    style: TextStyle(fontSize: 18),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
