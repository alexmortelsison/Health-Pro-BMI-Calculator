import 'package:flutter/material.dart';

import '../utils/const.dart';

class RoundIconButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback onTap;

  const RoundIconButton({
    super.key,
    required this.icon,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      constraints: const BoxConstraints.tightFor(
        width: 40,
        height: 40,
      ),
      shape: const CircleBorder(
        side: BorderSide(
          width: 1,
          color: kBlueColor,
        ),
      ),
      fillColor: const Color.fromARGB(0, 156, 35, 35),
      onPressed: onTap,
      child: Icon(
        icon,
        color: kBlueColor,
      ),
    );
  }
}
