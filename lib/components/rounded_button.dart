import 'package:flutter/material.dart';
import 'package:loginandwelcm/constant.dart';

class RoudedButton extends StatelessWidget {
  final String text;
  final Function press;
  final Color color,textColor;
  const RoudedButton({
     Key key,
     this.text,
     this.press,
     this.color = primaryColor,
     this.textColor = Colors.white,
}):super(key:key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.8,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(29),
        child: FlatButton(
          padding: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
          onPressed: () {},
          color: color,
          child: Text(
            text,
            style: TextStyle(color: textColor),
          ),
        ),
      ),
    );
  }
}
