import 'package:flutter/material.dart';
import 'package:roomart/utils/constants.dart';
import 'package:roomart/utils/formater.dart';

Container get getLogoOnAuthPage => Container(
      height: 200,
      width: 200,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
                blurRadius: 2,
                spreadRadius: 2,
                offset: Offset(2, 2),
                color: Colors.grey[300]!)
          ],
          image: DecorationImage(
              image: AssetImage(Constants.logo), fit: BoxFit.cover)),
    );

Widget resellerPrice(bool isReseller, String? itemPrice, String? resellerPrice) {
  return (isReseller)
      ? Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            (double.parse(itemPrice!) <= double.parse(resellerPrice!))
                ? SizedBox()
                : Text(
                    Formatter().formatStringCurrency(itemPrice),
                    style: TextStyle(
                        decoration: TextDecoration.lineThrough,
                        color: Colors.red),
                  ),
            SizedBox(height: 3),
            Text(Formatter().formatStringCurrency(resellerPrice),
                style: TextStyle(
                    fontSize: 18,
                    color: Colors.purple,
                    fontWeight: FontWeight.bold))
          ],
        )
      : Text(
          Formatter().formatStringCurrency(itemPrice!),
          style: TextStyle(
              fontSize: 18, color: Colors.purple, fontWeight: FontWeight.bold),
        );
}
