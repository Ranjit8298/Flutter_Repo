import 'package:flutter/material.dart';

class CustomToast extends StatelessWidget {
  final String message;
  final Duration duration;

  CustomToast({
    required this.message,
    this.duration = const Duration(seconds: 3),
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Card(
        child: Padding(
          padding: EdgeInsets.all(8),
          child: Text(message),
        ),
      ),
    );
  }
}

// ...

// Overlay.of(context).insert(OverlayEntry(
//   builder: (context) => CustomToast(
//     message: "This is a custom toast message",
//   ),
// ));
