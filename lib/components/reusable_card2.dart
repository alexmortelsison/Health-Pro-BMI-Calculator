import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../utils/const.dart';
import 'round_icon_button.dart';

class ReusableCard2 extends StatefulWidget {
  final String label;
  final int value;
  final VoidCallback onIncrement;
  final VoidCallback onDecrement;

  const ReusableCard2({
    super.key,
    required this.label,
    required this.value,
    required this.onIncrement,
    required this.onDecrement,
  });

  @override
  State<ReusableCard2> createState() => _ReusableCard2State();
}

class _ReusableCard2State extends State<ReusableCard2> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
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
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              children: [
                Text(
                  widget.label,
                  style: kSliderTextStyle,
                  textAlign: TextAlign.center,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    RoundIconButton(
                      icon: FontAwesomeIcons.minus,
                      onTap: widget.onDecrement,
                    ),
                    Text(
                      '${widget.value}',
                      style: kSliderTextStyle,
                      textAlign: TextAlign.center,
                    ),
                    RoundIconButton(
                      icon: FontAwesomeIcons.plus,
                      onTap: widget.onIncrement,
                    ),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
