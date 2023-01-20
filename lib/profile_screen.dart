import 'dart:convert';
import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_repo/widgets/custom_alert_box.dart';
import 'package:flutter_repo/widgets/custom_textfield.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:http/http.dart' as http;

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  var nameTxt = TextEditingController();
  var jobTxt = TextEditingController();

  Future<bool?> showToast(String toastMsg) {
    return Fluttertoast.showToast(
        msg: toastMsg,
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.grey,
        textColor: Colors.white,
        fontSize: 16.0);
  }

  void apiCall() async {
    final response = await http.post(
      Uri.parse('https://reqres.in/api/users'),
      headers: {HttpHeaders.contentTypeHeader: 'application/json'},
      body: jsonEncode(
          {'name': nameTxt.text.toString(), 'job': jobTxt.text.toString()}),
    );
    if (response.statusCode == 201) {
      print(response.body);
    }

// get api call

    // var response = await http
    //     .get(Uri.parse('https://reqres.in/api/users'));
    // if (response.statusCode == 200) {
    //   var data = json.decode(response.body);
    //   print(data);
    //   throw Exception('Failed to load post');
    // }
  }

  void validate() {
    if (nameTxt.text.toString().trim() == '') {
      showToast('Please enter your name');
    } else if (jobTxt.text.toString().trim() == '') {
      showToast('Please enter your job');
    } else {
      apiCall();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: SizedBox(
        width: 270,
        child: Drawer(
            child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: [
            const UserAccountsDrawerHeader(
              decoration: BoxDecoration(color: Colors.red),
              arrowColor: Colors.black,
              accountName: Text(
                "Ranjit Kumar",
                style:
                    TextStyle(fontWeight: FontWeight.bold, letterSpacing: 0.4),
              ),
              accountEmail: Text(
                "ranjit.earth@gmail.com",
                style:
                    TextStyle(fontWeight: FontWeight.bold, letterSpacing: 0.4),
              ),
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage('assets/images/man_one.jpg'),
              ),
            ),
            ListTile(
              leading: Icon(Icons.home_rounded),
              title: const Text('Home'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.person_rounded),
              title: const Text('Profile'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.group_rounded),
              title: const Text('Manager Dashboard'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.settings_rounded),
              title: const Text('Settings'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.notifications_rounded),
              title: const Text('Notifications'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        )),
      ),
      appBar: AppBar(
          title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Center(child: Text('Profile')),
          Icon(Icons.notifications_rounded),
        ],
      )),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.white,
        padding: EdgeInsets.all(8.0),
        child: Column(
          children: [
            CustomTextField(
                controllerTxt: nameTxt,
                keyboardType: TextInputType.text,
                hintText: 'Enter Your Name',
                prefixIcon: const Icon(Icons.person_rounded),
                labelText: 'Enter Your Name',
                onChanged: (nameTxt) {}),
            CustomTextField(
                controllerTxt: jobTxt,
                keyboardType: TextInputType.text,
                hintText: 'Enter Your Job',
                prefixIcon: const Icon(Icons.laptop_rounded),
                labelText: 'Enter Your Job',
                onChanged: (jobTxt) {}),
            Container(
              width: 335,
              height: 45,
              margin: const EdgeInsets.only(top: 30),
              child: ElevatedButton(
                  onPressed: () {
                    validate();
                  },
                  child: const Text(
                    'SUBMIT',
                    style: TextStyle(fontSize: 16, letterSpacing: 0.3),
                  )),
            ),
            CustomAlertBox(),
          ],
        ),
      ),
    );
  }
}
