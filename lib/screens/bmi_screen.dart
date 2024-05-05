import 'package:bmi_calculator/components/logo.dart';
import 'package:bmi_calculator/components/title_screen.dart';
import 'package:bmi_calculator/utils/const.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
            const TitleScreen(
              title: 'BMI Calculator',
            ),
            const SizedBox(
              height: 30,
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                              border: Border.all(
                                width: 1,
                                color: Colors.white,
                              ),
                              borderRadius: BorderRadius.circular(30)),
                          height: 200,
                          child: const Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.all(24.0),
                                child: Icon(
                                  size: 150,
                                  FontAwesomeIcons.mars,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 12,
                      ),
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                              color: kBlueColor,
                              border: Border.all(
                                width: 1,
                                color: Colors.white,
                              ),
                              borderRadius: BorderRadius.circular(30)),
                          height: 200,
                          child: const Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.all(24.0),
                                child: Icon(
                                  size: 150,
                                  FontAwesomeIcons.venus,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
