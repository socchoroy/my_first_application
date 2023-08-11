import 'package:flutter/material.dart';
// import 'package:my_first_application/name_style.dart';
import 'package:my_first_application/rool_dice.dart'; //this package is not needed because we are not using text we use images

const starPoint = Alignment.topLeft;
const endPoint = Alignment.bottomRight;
int? count;
// const  Color color_one = Colors.pinkAccent;
// const Color color_two = Colors.amber;

class GradientContainer extends StatelessWidget {
  GradientContainer(this.color_one, this.color_two, {super.key});
  GradientContainer.purple({super.key})
      : color_one = Colors.blue,
        color_two = Colors.blueAccent;
  final Color color_one;
  final Color color_two;

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.blue,
          gradient: LinearGradient(
              colors: [color_one, color_two], begin: starPoint, end: endPoint)),
      child: const Center(
        child: RoolDice(),
      ),
    );
  }
}
