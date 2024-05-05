import 'package:bmi_calculator/screens/bmi_screen.dart';
import 'package:bmi_calculator/utils/const.dart';
import 'package:flutter/material.dart';
import '../components/logo.dart';
import '../components/rounded_button.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
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
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Logo(),
                const SizedBox(
                  height: 350,
                ),
                const Text(
                  'Check Your BMI.',
                  style: kPrimaryTextStyle,
                ),
                const Text(
                  'Get Professional Advice.',
                  style: kSecondaryTextStyle,
                ),
                const SizedBox(
                  height: 320,
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
                    title: 'Get Started',
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
