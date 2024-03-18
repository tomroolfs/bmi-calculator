// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_content.dart';
import 'reusable_card.dart';

const double bottomContainerHeight = 80;
const bottomContainerColour = Color(0xFFEB1555);
const activeCardColour = Color(0xFF1D1E33);

class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'BMI Calculator',
        ),
      ),
      body: Column(
        children: <Widget>[
          // First row
          const Expanded(
              child: Row(
            children: <Widget>[
              Expanded(
                  child: ReusableCard(
                      colour: activeCardColour,
                      cardChild: IconContent(
                          icon: FontAwesomeIcons.mars, label: 'MALE'))),
              Expanded(
                  child: ReusableCard(
                      colour: activeCardColour,
                      cardChild: IconContent(
                          icon: FontAwesomeIcons.venus, label: 'FEMALE'))),
            ],
          )),
          // Second row
          const Expanded(
              child: ReusableCard(
                  colour: activeCardColour,
                  cardChild: IconContent(
                      icon: FontAwesomeIcons.textWidth, label: 'HEIGHT'))),
          // Third row
          const Expanded(
              child: Row(
            children: <Widget>[
              Expanded(
                  child: ReusableCard(
                      colour: activeCardColour,
                      cardChild: IconContent(
                          icon: FontAwesomeIcons.weightScale,
                          label: 'WEIGHT'))),
              Expanded(
                  child: ReusableCard(
                      colour: activeCardColour,
                      cardChild: IconContent(
                          icon: FontAwesomeIcons.cakeCandles, label: 'AGE'))),
            ],
          )),
          Container(
            color: bottomContainerColour,
            margin: const EdgeInsets.only(top: 10),
            width: double.infinity,
            height: bottomContainerHeight,
          )
        ],
      ),
    );
  }
}
