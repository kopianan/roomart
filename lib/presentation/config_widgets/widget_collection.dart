import 'package:flutter/material.dart';

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
              image: AssetImage("assets/roomart_logo2.png"),
              fit: BoxFit.cover)),
    );
