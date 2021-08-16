import 'package:flutter/material.dart';
import 'package:kangsayur_app/colors.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
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
          Container(
            margin: EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              'email',
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
            ),
          ),
          // Container(
          //   margin: EdgeInsets.fromLTRB(16, 16, 16, 16),
          //   child: TextField(
          //     decoration: InputDecoration(
          //         fillColor: Color.fromRGBO(242, 242, 242, 1),
          //         filled: true,
          //         hintText: 'yourmail@mail.com',
          //         border: OutlineInputBorder(
          //             borderSide: BorderSide(
          //               color: Color.fromRGBO(242, 242, 242, 1),
          //             ),
          //             borderRadius: BorderRadius.circular(10))),
          //   ),
          // )
        ],
      ),
    );
  }
}
