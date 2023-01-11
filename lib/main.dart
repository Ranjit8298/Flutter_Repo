import 'package:flutter/material.dart';

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
      home: const MyHomePage(title: 'Flutter Container Example'),
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
      body: Center(
        child: Container(
            width: 300,
            height: 300,
            child: Image.asset('assets/images/man_one.jpg')),
      ),
    );
  }
}
