import 'package:flutter/material.dart';
import 'package:flutter_repo/bottom_tab.dart';

class ScreenOne extends StatelessWidget {
  const ScreenOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return const BottomTabScreen();
                    },
                  ));
                },
                child: Text('NEXT')),
          ],
        ),
      ),
    );
  }
}
