import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UserDetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Center(child: Text('User Details'))),
      body: Hero(
          tag: 'background', child: Image.asset('assets/images/man_one.jpg')),
    );
  }
}
