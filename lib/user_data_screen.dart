import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UserDataScreen extends StatelessWidget {
  // const UserDataScreen({super.key});

  var name;
  var address;
  var mobile;
  UserDataScreen(this.name, this.address, this.mobile);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('User Data Screen'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Text(name), Text(address), Text(mobile)],
        ),
      ),
    );
  }
}
