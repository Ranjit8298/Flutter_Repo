import 'package:flutter/material.dart';
import 'package:flutter_repo/Widgets/CustomButtonWidgets.dart';

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
      home: const MyHomePage(title: 'Flutter Example'),
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
  var emailTxt = TextEditingController();
  var passwordTxt = TextEditingController();
  @override
  Widget build(BuildContext context) {
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
      body: CustomButtonWidgets(
        btnName: 'Submit',
        btnColor: Colors.red,
        btnIcon: Icon(Icons.login_rounded),
        callback: (() {
          print('object clicked');
        }),
      ),
    );
  }
}
