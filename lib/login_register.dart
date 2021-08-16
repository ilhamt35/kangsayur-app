import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kangsayur_app/green_button.dart';
import 'package:kangsayur_app/white_button.dart';

import 'colors.dart';

class LoginRegister extends StatelessWidget {
  const LoginRegister({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return Scaffold(
        body: Column(
      children: [
        Container(
          height: height / 2,
          child: Stack(
            children: [
              Positioned(
                top: -110,
                left: -width * 2 / 3,
                child: Container(
                  width: width * 2,
                  height: height / 2,
                  decoration: BoxDecoration(
                      color: green,
                      borderRadius: BorderRadius.all(
                          Radius.elliptical(width * 2, height / 2))),
                ),
              ),
              Center(
                child: Positioned(
                    top: 150,
                    child: SvgPicture.asset(
                      'assets/two_people.svg',
                      width: 275,
                    )),
              )
            ],
          ),
        ),
        GreenButton(buttonText: 'Login'),
        SizedBox(
          height: 16,
        ),
        WhiteButton(buttonText: 'Register'),
        SizedBox(
          height: 30,
        ),
        Container(
          height: 60,
          margin: EdgeInsets.symmetric(horizontal: 16),
          child: Stack(
            children: [
              Center(
                child: Divider(
                  color: Color.fromRGBO(130, 130, 130, 1),
                  height: 1,
                ),
              ),
              Center(
                child: Container(
                  color: Theme.of(context).scaffoldBackgroundColor,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('Or login with'),
                  ),
                ),
              )
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 16),
          child: ElevatedButton.icon(
              onPressed: () {},
              label: Text(
                'Google',
                style: TextStyle(color: Color.fromRGBO(79, 79, 79, 1)),
              ),
              icon: SvgPicture.asset(
                'assets/google.svg',
                width: 18,
                height: 18,
              ),
              style: ButtonStyle(
                shape: MaterialStateProperty.all(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                    side: BorderSide(
                        width: 1.5, color: Color.fromRGBO(189, 189, 189, 1)))),
                elevation: MaterialStateProperty.all(0),
                minimumSize:
                    MaterialStateProperty.all(Size(double.infinity, 40)),
                backgroundColor: MaterialStateProperty.all(Colors.white),
              )),
        ),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 16),
          child: ElevatedButton.icon(
              onPressed: () {},
              label: Text(
                'Facebook',
                style: TextStyle(color: Colors.white),
              ),
              icon: SvgPicture.asset(
                'assets/facebook.svg',
                width: 18,
                height: 18,
              ),
              style: ButtonStyle(
                shape: MaterialStateProperty.all(RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                )),
                elevation: MaterialStateProperty.all(0),
                minimumSize:
                    MaterialStateProperty.all(Size(double.infinity, 40)),
                backgroundColor:
                    MaterialStateProperty.all(Color.fromRGBO(45, 156, 219, 1)),
              )),
        )
      ],
    ));
  }
}
