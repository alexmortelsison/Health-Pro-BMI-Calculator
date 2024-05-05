import 'package:bmi_calculator/components/logo.dart';
import 'package:bmi_calculator/components/reusable_card2.dart';
import 'package:bmi_calculator/components/rounded_button.dart';
import 'package:bmi_calculator/components/title_screen.dart';
import 'package:bmi_calculator/utils/const.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../components/profile_picture.dart';
import '../components/reusable_card.dart';

const Color activeColor = kBlueColor;
const Color inactiveColor = Colors.transparent;
Gender? selectedGender;
int height = 180;
int weight = 60;
int age = 18;

enum Gender {
  male,
  female,
}

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
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: [
                  Expanded(
                    child: ReusableCard(
                      cardIcon: FontAwesomeIcons.mars,
                      onTap: () {
                        setState(
                          () {
                            selectedGender = Gender.male;
                          },
                        );
                      },
                      cardColor: selectedGender == Gender.male
                          ? activeColor
                          : inactiveColor,
                    ),
                  ),
                  const SizedBox(
                    width: 12,
                  ),
                  Expanded(
                    child: ReusableCard(
                      cardIcon: FontAwesomeIcons.venus,
                      onTap: () {
                        setState(
                          () {
                            selectedGender = Gender.female;
                          },
                        );
                      },
                      cardColor: selectedGender == Gender.female
                          ? activeColor
                          : inactiveColor,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Expanded(
                child: Center(
                  child: Container(
                    height: 200,
                    decoration: BoxDecoration(
                      border: Border.all(width: 1, color: Colors.white),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Text(
                          'HEIGHT',
                          style: kSliderTextStyle,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                '$height',
                                style: const TextStyle(
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold,
                                  color: kBlueColor,
                                ),
                              ),
                              const Text(
                                'cm',
                                style: kSliderTextStyle,
                              )
                            ],
                          ),
                        ),
                        Slider(
                          min: 120.0,
                          max: 220.0,
                          activeColor: kBlueColor,
                          inactiveColor:
                              const Color.fromARGB(255, 151, 191, 224),
                          onChanged: (value) {
                            setState(() {
                              height = value.round();
                            });
                          },
                          value: height.toDouble(),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: [
                  ReusableCard2(
                    label: 'WEIGHT',
                    value: weight,
                    onIncrement: () {
                      setState(() {
                        weight++;
                      });
                    },
                    onDecrement: () {
                      setState(() {
                        weight--;
                      });
                    },
                  ),
                  const SizedBox(
                    width: 12,
                  ),
                  ReusableCard2(
                    label: 'AGE',
                    value: age,
                    onIncrement: () {
                      setState(() {
                        age++;
                      });
                    },
                    onDecrement: () {
                      setState(() {
                        age--;
                      });
                    },
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
              child: RoundedButton(
                onTap: () {},
                title: 'Get BMI',
              ),
            )
          ],
        ),
      ),
    );
  }
}
