import 'package:flutter/material.dart';
import '../components/logo.dart';
import '../components/rounded_button.dart';
import 'bmi_screen.dart'; // Import your BMI screen file
import '../utils/const.dart'; // Import your constants file

class ResultPage extends StatefulWidget {
  final String bmiResult;
  final String result1;
  final String result2;
  final String result3;
  final String bmi;

  const ResultPage({
    super.key,
    required this.bmiResult,
    required this.result1,
    required this.result2,
    required this.result3,
    required this.bmi,
  });

  @override
  State<ResultPage> createState() => _ResultPageState();
}

class _ResultPageState extends State<ResultPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: kMainBackgroundImage,
            fit: BoxFit.cover,
            colorFilter: kMainBackgroundImageFilter,
          ),
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const Logo(),
                const SizedBox(
                  height: 30,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Your BMI Result is:',
                      style: kPrimaryTextStyle,
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      widget.bmiResult, // Access the bmiResult from the widget
                      style: kPrimaryTextStyle,
                    ),
                    Text(
                      widget.result1,
                      style: const TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        color: kBlueColor,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 150,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.result3,
                      style: kSecondaryTextStyle,
                    ),
                    Text(
                      widget.result2,
                      style: const TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(
                      height: 320,
                    ),
                  ],
                ),
                Center(
                  child: RoundedButton(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return BMIScreen(
                              widget.bmiResult,
                              bmi: '',
                            ); // Pass bmiResult to BMIScreen
                          },
                        ),
                      );
                    },
                    title: 'OK',
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
