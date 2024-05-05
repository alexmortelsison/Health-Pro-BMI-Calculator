import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  final IconData cardIcon;
  final Color cardColor;
  final VoidCallback onTap;

  const ReusableCard({
    super.key,
    required this.cardIcon,
    required this.onTap,
    required this.cardColor,
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
          color: cardColor,
        ),
        height: 200,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(24.0),
              child: Icon(
                size: 150,
                cardIcon,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
