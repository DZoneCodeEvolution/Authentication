import 'package:flutter/material.dart';
import 'package:loginandwelcm/constant.dart';

class Divider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: size.height * 0.02),
      width: size.width * 0.8,
      child: Row(
        children: <Widget>[
          buildDivider(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child:Text(
              "OR",
              style: TextStyle(
               color: Colors.black,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
            buildDivider(),
        ],
      ),
    );
  }

  Expanded buildDivider() {
    return Expanded(
      child: Divider(
        //color: Colors.black,
      //  height: 1.5,
      ),
    );
  }
}
