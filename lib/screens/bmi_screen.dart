import 'package:bmi_calculator/components/logo.dart';
import 'package:bmi_calculator/components/title_screen.dart';
import 'package:bmi_calculator/utils/const.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../components/profile_picture.dart';

class BMIScreen extends StatefulWidget {
  const BMIScreen({super.key});

  @override
  State<BMIScreen> createState() => _BMIScreenState();
}

class _BMIScreenState extends State<BMIScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 24,
                vertical: 20,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Logo(),
                  ProfilePicture(
                    profilePic: AssetImage('images/propic.jpg'),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(
                horizontal: 24,
              ),
              child: const TitleScreen(title: 'BMI Calculator'),
            ),
          ],
        ),
      ),
    );
  }
}
