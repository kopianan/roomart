import 'package:flutter/material.dart';

class DefaultButton1 extends StatelessWidget {
  const DefaultButton1({
    Key key,
    @required this.color,
    @required this.text,
    @required this.onPressed,
  }) : super(key: key);

  final Color color;
  final String text;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
        height: 45,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        color: color,
        onPressed: onPressed,
        child: Text(
          text,
          style: TextStyle(color: Colors.white, fontSize: 17),
        ));
  }
}
