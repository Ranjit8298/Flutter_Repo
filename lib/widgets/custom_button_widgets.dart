import 'package:flutter/material.dart';

class CustomButtonWidgets extends StatelessWidget {
  final String btnName;
  final Icon? btnIcon;
  final Color? btnColor;
  final TextStyle? btnTextStyle;
  final VoidCallback? callback;

  const CustomButtonWidgets(
      {super.key,
      required this.btnName,
      this.btnIcon,
      this.btnColor = Colors.blue,
      this.btnTextStyle,
      this.callback});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {
          callback!();
        },
        child: btnIcon != null
            ? Row(
                children: [
                  btnIcon!,
                  Text(
                    btnName,
                    style: btnTextStyle,
                  )
                ],
              )
            : Text(
                btnName,
                style: btnTextStyle,
              ));
  }
}
