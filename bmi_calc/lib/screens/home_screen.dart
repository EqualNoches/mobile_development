import 'package:bmi_calc/components/cardChild.dart';
import 'package:bmi_calc/components/reusable_card.dart';
import 'package:bmi_calc/components/round_button.dart';
import 'package:bmi_calc/constants.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

enum Gender {
  male,
  female,
}

class _HomeScreenState extends State<HomeScreen> {
  Gender? gender;
  var height = 120;
  int age = 18;
  int weight = 63;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bmi calculator'),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
              child: Row(children: [
            Expanded(
                child: ReusableCard(
              onPress: () {
                setState(() {
                  gender = Gender.female;
                });
              },
              color: kInitiativeCardColor,
              cardChild: Cardchild(
                icon: Icons.female,
                label: "FEMALE",
              ),
            )),
            Expanded(
                child: ReusableCard(
              onPress: () {
                setState(() {
                  gender = Gender.male;
                });
              },
              color: gender == Gender.male
                  ? kInitiativeCardColor
                  : kActiveCardColor,
              cardChild: Cardchild(icon: Icons.male, label: "MALE"),
            )),
          ])),
          Expanded(
            child: ReusableCard(
                color: kInitiativeCardColor,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Height',
                      style: kLabelTextStyle,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        Text(
                          height.toString(),
                          style: kNumberTextStule,
                        ),
                        Text('cm')
                      ],
                    ),
                    SliderTheme(
                      data: SliderTheme.of(context).copyWith(
                        inactiveTrackColor: Color(0xFF8D8E98),
                        activeTrackColor: Colors.white,
                        thumbColor: Color(0Xffeb15555),
                        overlayShape:
                            RoundSliderThumbShape(enabledThumbRadius: 15),
                        overlayColor: Color(0X29EB1555),
                        // thumbShape:
                        //     RoundSliderOverlayShape(overlayRadius: 30)
                      ),
                      child: Slider(
                          min: 120,
                          max: 220,
                          value: height.toDouble(),
                          onChanged: (value) {
                            setState(() {
                              height = value.round();
                            });
                          }),
                    )
                  ],
                )),
          ),
          Expanded(
              child: Row(
            children: [
              Expanded(
                child: ReusableCard(
                    color: kInitiativeCardColor,
                    cardChild: ReusableCard(
                        color: kActiveCardColor,
                        cardChild: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              'Age',
                              style: kLabelTextStyle,
                            ),
                            Text(
                              age.toString(),
                              style: kLabelTextStyle,
                            ),
                            Wrap(
                              children: [
                                MyRoundButton(
                                  icon: Icons.remove,
                                  onPressed: () {
                                    setState(() {
                                      if (age > 18) {
                                        age--;
                                      }
                                    });
                                  },
                                ),
                                MyRoundButton(
                                    icon: Icons.add,
                                    onPressed: () {
                                      setState(() {
                                        if (age < 100) {
                                          age++;
                                        }
                                      });
                                    }),
                              ],
                            )
                          ],
                        ))),
              ),
              Expanded(
                  child: ReusableCard(
                      color: kInitiativeCardColor,
                      cardChild: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            'Weight',
                            style: kLabelTextStyle,
                          ),
                          Text(
                            weight.toString(),
                            style: kLabelTextStyle,
                          ),
                          Wrap(
                            children: [
                              MyRoundButton(
                                icon: Icons.remove,
                                onPressed: () {
                                  setState(() {
                                    if (weight >= 64) {
                                      weight--;
                                    }
                                  });
                                },
                              ),
                              MyRoundButton(
                                icon: Icons.add,
                                onPressed: () {
                                  setState(() {
                                    if (weight <= 200) {
                                      weight++;
                                    }
                                  });
                                },
                              )
                            ],
                          )
                        ],
                      ))),
            ],
          ))
        ],
      ),
    );
  }
}
