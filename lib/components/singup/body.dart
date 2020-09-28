import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:loginandwelcm/components/allreadyhave_account.dart';
import 'package:loginandwelcm/components/roudedinput_password.dart';
import 'package:loginandwelcm/components/roundedInput.dart';
import 'package:loginandwelcm/components/rounded_button.dart';
import 'package:loginandwelcm/components/scalIcon.dart';
import 'package:loginandwelcm/components/singup/background.dart';
import 'package:loginandwelcm/constant.dart';
import 'package:loginandwelcm/screen/login.dart';

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
              "SIGNUP",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: size.height * 0.03,
            ),
            SvgPicture.asset("assets/icons/signup.svg",
                height: size.height * 0.30),
            SizedBox(
              height: size.height * 0.02,
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
              height: size.height * 0.02,
            ),
            RoudedButton(
              text: "SIGNUP",
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
                      return LoginScreen();
                    },
                  ),
                );
              },
            ),
            Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
               ScalIcon(
                 iconSrc: "assets/icons/facebook.svg",
                 press: (){},
               ),
                ScalIcon(
                  iconSrc: "assets/icons/google-plus.svg",
                  press: (){},
                ),
                ScalIcon(
                  iconSrc: "assets/icons/twitter.svg",
                  press: (){},
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
