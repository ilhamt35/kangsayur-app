import 'package:flutter/material.dart';

import 'colors.dart';

class WhiteButton extends StatelessWidget {
  final String buttonText;
  const WhiteButton({Key? key, required this.buttonText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16),
      child: ElevatedButton(
        onPressed: () {},
        child: Text(
          buttonText,
          style: TextStyle(
              color: green, fontSize: 18, fontWeight: FontWeight.bold),
        ),
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.white),
            minimumSize: MaterialStateProperty.all(Size(double.infinity, 60)),
            shape: MaterialStateProperty.all(RoundedRectangleBorder(
                side: BorderSide(color: green, width: 1.5),
                borderRadius: BorderRadius.circular(10))),
            elevation: MaterialStateProperty.all(0)),
      ),
    );
  }
}
