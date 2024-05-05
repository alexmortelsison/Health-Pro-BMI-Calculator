import 'package:bmi_calculator/utils/const.dart';
import 'package:flutter/material.dart';

class ReusableCard2 extends StatelessWidget {
  final String label;
  final VoidCallback onTap;

  const ReusableCard2({
    super.key,
    required this.onTap,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(
            width: 1,
            color: Colors.white,
          ),
          borderRadius: BorderRadius.circular(30),
        ),
        height: 200,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(24.0),
              child: Column(
                children: [
                  Text(
                    label,
                    style: kPrimaryTextStyle,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
