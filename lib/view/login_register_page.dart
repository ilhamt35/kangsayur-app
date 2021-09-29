import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kangsayur_app/colors.dart';
import 'package:kangsayur_app/component/green_button.dart';
import 'package:kangsayur_app/component/white_button.dart';
import 'package:kangsayur_app/view/login_page.dart';

class LoginRegisterPage extends StatelessWidget {
  const LoginRegisterPage({Key? key}) : super(key: key);

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
                        Radius.elliptical(width * 2, height / 2),
                      ),
                    ),
                  ),
                ),
                Center(
                  child: SvgPicture.asset(
                    'assets/two_people.svg',
                    width: 275,
                  ),
                )
              ],
            ),
          ),
          GreenButton(
            buttonText: 'Login',
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return LoginPage();
                  },
                ),
              );
            },
          ),
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
          SizedBox(
            height: 30,
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 16),
            width: double.infinity,
            height: 40,
            decoration: BoxDecoration(
              border: Border.all(
                width: 1.5,
                color: Color.fromRGBO(189, 189, 189, 1),
              ),
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Material(
              color: Colors.transparent,
              child: InkWell(
                borderRadius: BorderRadius.circular(10),
                child: Stack(
                  children: [
                    Center(
                      child: Text(
                        'Google',
                        style: TextStyle(
                          color: Color.fromRGBO(79, 79, 79, 1),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 20),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: SvgPicture.asset(
                          'assets/google.svg',
                          width: 18,
                          height: 18,
                        ),
                      ),
                    )
                  ],
                ),
                onTap: () {},
              ),
            ),
          ),
          // Container(
          //   margin: EdgeInsets.symmetric(horizontal: 16),
          //   child: ElevatedButton.icon(
          //       onPressed: () {},
          //       label: Text(
          //         'Google',
          //         style: TextStyle(color: Color.fromRGBO(79, 79, 79, 1)),
          //       ),
          //       icon: SvgPicture.asset(
          //         'assets/google.svg',
          //         width: 18,
          //         height: 18,
          //       ),
          //       style: ButtonStyle(
          //         shape: MaterialStateProperty.all(RoundedRectangleBorder(
          //             borderRadius: BorderRadius.circular(10),
          //             side: BorderSide(
          //                 width: 1.5, color: Color.fromRGBO(189, 189, 189, 1)))),
          //         elevation: MaterialStateProperty.all(0),
          //         minimumSize:
          //             MaterialStateProperty.all(Size(double.infinity, 40)),
          //         backgroundColor: MaterialStateProperty.all(Colors.white),
          //       )),
          // ),
          SizedBox(
            height: 16,
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 16),
            width: double.infinity,
            height: 40,
            decoration: BoxDecoration(
              color: Color.fromRGBO(45, 156, 219, 1),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Material(
              color: Colors.transparent,
              child: InkWell(
                borderRadius: BorderRadius.circular(10),
                child: Stack(
                  children: [
                    Center(
                      child: Text(
                        'Facebook',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 20),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: SvgPicture.asset(
                          'assets/facebook.svg',
                          width: 18,
                          height: 18,
                        ),
                      ),
                    )
                  ],
                ),
                onTap: () {},
              ),
            ),
          ),
          // Container(
          //   margin: EdgeInsets.symmetric(horizontal: 16),
          //   child: ElevatedButton.icon(
          //       onPressed: () {},
          //       label: Text(
          //         'Facebook',
          //         style: TextStyle(color: Colors.white),
          //       ),
          //       icon: SvgPicture.asset(
          //         'assets/facebook.svg',
          //         width: 18,
          //         height: 18,
          //       ),
          //       style: ButtonStyle(
          //         shape: MaterialStateProperty.all(RoundedRectangleBorder(
          //           borderRadius: BorderRadius.circular(10),
          //         )),
          //         elevation: MaterialStateProperty.all(0),
          //         minimumSize:
          //             MaterialStateProperty.all(Size(double.infinity, 40)),
          //         backgroundColor:
          //             MaterialStateProperty.all(Color.fromRGBO(45, 156, 219, 1)),
          //       )),
          // )
        ],
      ),
    );
  }
}
