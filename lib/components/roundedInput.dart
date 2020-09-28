import 'package:flutter/material.dart';
import 'package:loginandwelcm/constant.dart';

import 'login/textfiled_container.dart';

class RoundedInputField extends StatelessWidget {
  final String hintText;
  final IconData icon;
  final ValueChanged<String> onChange;

  const RoundedInputField({
    Key key,
    this.hintText,
    this.icon = Icons.person,
    this.onChange,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        decoration: InputDecoration(
            icon: Icon(icon,color: assetsColor,),
            hintText: hintText,
            border: InputBorder.none),
      ),
    );
  }
}
