import 'package:flutter/material.dart';

import '../utils/const.dart';

class TitleScreen extends StatelessWidget {
  final String title;
  const TitleScreen({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: kTitleScreenTextStyle,
    );
  }
}
