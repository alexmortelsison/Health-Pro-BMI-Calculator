import 'package:bmi_calculator/utils/const.dart';
import 'package:flutter/material.dart';

class TitleScreen extends StatelessWidget {
  final String title;
  const TitleScreen({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: 24,
      ),
      child: Text(
        title,
        style: kTitleScreenTextStyle,
      ),
    );
  }
}
