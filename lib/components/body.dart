import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:loginandwelcm/components/background.dart';
import 'package:loginandwelcm/components/rounded_button.dart';
import 'package:loginandwelcm/constant.dart';
import 'package:loginandwelcm/screen/login.dart';
import 'package:loginandwelcm/screen/signup_screen.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return BackGround(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "Welcome To DZone",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: size.height * 0.05,
            ),
            SvgPicture.asset("assets/icons/chat.svg",
                height: size.height * 0.45),
            SizedBox(
              height: size.height * 0.03,
            ),
            RoudedButton(
              text: "Login",
              textColor: Colors.white,
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return LoginScreen();
                    },
                  ),
                );
              },
            ),
            SizedBox(
              height: size.height * 0.02,
            ),
            RoudedButton(
              text: "SIGN UP",
              color: assetsColor,
              textColor: Colors.black,
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return SignUpScreen();
                    },
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
