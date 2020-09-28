import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:loginandwelcm/constant.dart';



class ScalIcon extends StatelessWidget {
  final String iconSrc;
  final Function press;
  const ScalIcon({
    this.press,
    this.iconSrc,
    Key key,
}):super(key:key);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child:  Container(
        margin: EdgeInsets.symmetric(horizontal: 10),
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          border: Border.all(
            width: 2,
            color: Colors.black12,
          ),
          shape: BoxShape.circle,
        ),
        child: SvgPicture.asset(iconSrc,
          height: 20,width: 20,),
      ),
    );
  }
}
