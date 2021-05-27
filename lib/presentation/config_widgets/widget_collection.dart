import 'package:flutter/material.dart';
import 'package:roomart/utils/constants.dart';

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
                color: Colors.grey[300])
          ],
          image: DecorationImage(
              image: AssetImage(Constants.logo),
              fit: BoxFit.cover)),
    );
