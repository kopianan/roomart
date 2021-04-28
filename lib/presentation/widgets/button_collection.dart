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

class LoadingButton1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
        height: 45,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        color: Colors.grey[400],
        onPressed: () {},
        child: Center(
          child: CircularProgressIndicator(),
        ));
  }
}

class DefaultButton2 extends StatelessWidget {
  const DefaultButton2({
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
        shape: RoundedRectangleBorder(
          side: BorderSide(color: color, width: 2),
          borderRadius: BorderRadius.circular(15),
        ),
        color: Colors.white,
        onPressed: onPressed,
        child: Text(
          text,
          style: TextStyle(color: color, fontSize: 17),
        ));
  }
}
