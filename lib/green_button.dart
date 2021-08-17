import 'package:flutter/material.dart';

import 'colors.dart';

class GreenButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final String buttonText;
  const GreenButton(
      {Key? key, required this.buttonText, required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16),
      child: ElevatedButton(
        onPressed: onPressed,
        child: Text(
          buttonText,
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(green),
            minimumSize: MaterialStateProperty.all(Size(double.infinity, 60)),
            shape: MaterialStateProperty.all(RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10))),
            elevation: MaterialStateProperty.all(0)),
      ),
    );
  }
}
