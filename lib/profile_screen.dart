import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

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
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  letterSpacing: 0.4
                ),
              ),
              accountEmail: Text(
                "ranjit.earth@gmail.com",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  letterSpacing: 0.4
                ),
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
      body: Center(child: Text('Profile')),
    );
  }
}
