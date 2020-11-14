import 'package:flutter/material.dart';

const gradientBoxDecoration = BoxDecoration(
    gradient: LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      stops: [0.1, 0.75, 0.85, 0.95],
      colors: [
        // Colors are easy thanks to Flutter's Colors class.
        Color(0xff004D40),
        Color(0xff00796B),
        Color(0xff26A69A),
        Color(0xffB2DFDB),
      ],
    )
);