import 'package:flutter/material.dart';

const kPrimaryTextStyle = TextStyle(
  fontSize: 40,
  color: Colors.white,
  fontWeight: FontWeight.bold,
);

const kSecondaryTextStyle = TextStyle(
  fontSize: 35,
  color: Colors.white,
  fontWeight: FontWeight.bold,
);

const AssetImage kMainBackgroundImage = AssetImage(
  'images/run.png',
);

final ColorFilter kMainBackgroundImageFilter =
    ColorFilter.mode(Colors.black.withOpacity(0.5), BlendMode.srcATop);
