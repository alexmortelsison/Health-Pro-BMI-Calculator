import 'package:bmi_calculator/screens/bmi_screen.dart';
import 'package:bmi_calculator/screens/splash_screen.dart';
import 'package:bmi_calculator/utils/const.dart';
import 'package:flutter/material.dart';
import '../components/logo.dart';
import '../components/rounded_button.dart';

class ResultPage extends StatefulWidget {
  const ResultPage({super.key});

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
                  height: 10,
                ),
                const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Your BMI Result is:',
                      style: kPrimaryTextStyle,
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      '72',
                      style: kPrimaryTextStyle,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 150,
                ),
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'You should eat less.',
                      style: kSecondaryTextStyle,
                    ),
                    Text(
                      'Train more.',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
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
                            return const BMIScreen();
                          },
                        ),
                      );
                    },
                    title: 'WHAT??',
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
