import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  const Logo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Text(
          'Health ',
          style: TextStyle(
              color: Color.fromARGB(255, 35, 116, 221),
              fontSize: 20,
              fontWeight: FontWeight.bold),
        ),
        Text(
          'Pro+',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
      ],
    );
  }
}
