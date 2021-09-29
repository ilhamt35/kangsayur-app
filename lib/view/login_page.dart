import 'package:flutter/material.dart';
import 'package:kangsayur_app/colors.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kangsayur_app/component/green_button.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
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
                  Positioned(
                      top: 4,
                      left: 4,
                      child: SafeArea(
                        child: IconButton(
                          icon: Icon(
                            Icons.arrow_back,
                            color: Colors.white,
                          ),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                        ),
                      )),
                  Positioned(
                    right: 16,
                    top: 60,
                    child: SvgPicture.asset(
                      'assets/people.svg',
                      width: 160,
                    ),
                  ),
                  Positioned(
                      top: 150,
                      left: 16,
                      child: Text(
                        'Login',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 34,
                            color: Colors.white),
                      )),
                ],
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 16),
                child: Text(
                  'email',
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(16, 8, 16, 16),
              child: TextField(
                style: TextStyle(
                  fontSize: 12,
                ),
                decoration: InputDecoration(
                    fillColor: Color.fromRGBO(242, 242, 242, 1),
                    filled: true,
                    hintText: 'yourmail@mail.com',
                    hintStyle: TextStyle(color: Colors.grey),
                    border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(10))),
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 16),
                child: Text(
                  'email',
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(16, 8, 16, 8),
              child: TextField(
                obscureText: true,
                style: TextStyle(
                  fontSize: 12,
                ),
                decoration: InputDecoration(
                    suffixIcon: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: SvgPicture.asset(
                        'assets/eye.svg',
                      ),
                    ),
                    fillColor: Color.fromRGBO(242, 242, 242, 1),
                    filled: true,
                    hintText: 'your password',
                    hintStyle: TextStyle(color: Colors.grey),
                    border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(10))),
              ),
            ),
            Align(
              alignment: Alignment.centerRight,
              child: Container(
                margin: EdgeInsets.only(right: 16, bottom: 16),
                child: Text(
                  'Forgot Password',
                  style: TextStyle(
                    color: green,
                    fontSize: 10,
                  ),
                ),
              ),
            ),
            GreenButton(
              buttonText: 'Login',
              onPressed: () {},
            ),
            Container(
              margin: EdgeInsets.only(top: 16),
              child: RichText(
                text: TextSpan(style: TextStyle(color: green), children: [
                  TextSpan(text: 'Not have account? '),
                  TextSpan(
                      text: 'Register',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                ]),
              ),
            )
          ],
        ),
      ),
    );
  }
}
