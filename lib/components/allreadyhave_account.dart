import 'package:flutter/material.dart';

class AllreadyAccount extends StatelessWidget {
  final bool login;
  final Function press;

  const AllreadyAccount({
    Key key,
    this.press,
    this.login = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          login ? "Don't have an Account ? " : "Already have an Account ? ",
          style: TextStyle(color: Colors.grey),
        ),
        GestureDetector(
          onTap: press,
          child: Text(
            login ? "Sign Up" : "Sign In",
            style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),
          ),
        )
      ],
    );
  }
}
