import 'package:flutter/material.dart';

const kTextColor = Color(0xFF707070);
const kTextLightColor = Color(0xFF555555);

const kDefaultPadding = 20.0;

final kDefaultShadow = BoxShadow(
  offset: const Offset(0, 50),
  blurRadius: 50,
  color: Colors.black.withOpacity(0.15),
);

final kDefaultCardShadow = BoxShadow(
  offset: const Offset(0, 20),
  blurRadius: 20,
  color: Colors.black.withOpacity(0.5),
);

const kDefaultInputDecorationTheme = InputDecorationTheme(
  border: kDefaultOutlineInputBorder,
  enabledBorder: kDefaultOutlineInputBorder,
  focusedBorder: kDefaultOutlineInputBorder,
);

const kDefaultOutlineInputBorder = OutlineInputBorder(
  borderSide: BorderSide(
    color: Color.fromARGB(255, 145, 145, 145),
  ),
);
