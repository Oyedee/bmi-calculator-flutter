import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'reusable_card.dart';
import 'card_content.dart';

const bottomContainerHeight = 80.0;
const activeCardColor = Color(0xFF1D1E33);
const inactiveCardColor = Color(0xFF111328);
const bottomContainerColor = Color(0xFFEB1555);

enum GenderType { male, female, neutral }

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  late GenderType selectedGender = GenderType.neutral;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('BMI CALCULATOR'),
        ),
        body: Column(
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedGender = GenderType.male;
                        });
                      },
                      child: ReusableCard(
                        colour: selectedGender == GenderType.male
                            ? activeCardColor
                            : inactiveCardColor,
                        cardChild: CardContent(
                          icon: FontAwesomeIcons.mars,
                          label: 'MALE',
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedGender = GenderType.female;
                        });
                      },
                      child: ReusableCard(
                        colour: selectedGender == GenderType.female
                            ? activeCardColor
                            : inactiveCardColor,
                        cardChild: CardContent(
                          icon: FontAwesomeIcons.venus,
                          label: 'FEMALE',
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ReusableCard(
                colour: activeCardColor,
                cardChild: CardContent(
                  label: 'MIDCARD',
                  icon: FontAwesomeIcons.facebook,
                ),
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: ReusableCard(
                      colour: activeCardColor,
                      cardChild: CardContent(
                        icon: FontAwesomeIcons.play,
                        label: 'WEIGHT',
                      ),
                    ),
                  ),
                  Expanded(
                    child: ReusableCard(
                      colour: activeCardColor,
                      cardChild: CardContent(
                        icon: FontAwesomeIcons.male,
                        label: 'HEIGHT',
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              color: bottomContainerColor,
              margin: EdgeInsets.only(top: 10),
              width: double.infinity,
              height: bottomContainerHeight,
            )
          ],
        ));
  }
}
