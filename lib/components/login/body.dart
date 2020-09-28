import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:loginandwelcm/components/allreadyhave_account.dart';
import 'package:loginandwelcm/components/login/background.dart';
import 'package:loginandwelcm/components/login/textfiled_container.dart';
import 'package:loginandwelcm/components/roudedinput_password.dart';
import 'package:loginandwelcm/components/roundedInput.dart';
import 'package:loginandwelcm/components/rounded_button.dart';
import 'package:loginandwelcm/constant.dart';
import 'package:loginandwelcm/screen/signup_screen.dart';

class Body extends StatelessWidget {
  const Body({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return BackGround(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "Login",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: size.height * 0.03,
            ),
            SvgPicture.asset("assets/icons/login.svg",
                height: size.height * 0.35),
            SizedBox(
              height: size.height * 0.03,
            ),
            RoundedInputField(
              hintText: "Your Email",
              onChange: (value) {},
            ),
            RoundedInputFieldPassword(
              hintText: "Password",
              onChange: (value) {},
            ),
            SizedBox(
              height: size.height * 0.03,
            ),
            RoudedButton(
              text: "Login",
              press: () {},
            ),
            SizedBox(
              height: size.height * 0.02,
            ),
            AllreadyAccount(
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
            )
          ],
        ),
      ),
    );
  }
}
