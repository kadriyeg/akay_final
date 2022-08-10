import 'package:flutter/material.dart';
//import 'package:flutter_application_1/screens/constants.dart';
//import '../constants.dart';
class OptionCard extends StatelessWidget {
  const OptionCard({
    Key? key,
    required this.option,
    required this.color,
  }) 
    : super(key: key);
  final String option;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      color: color,
      child: Padding(
        padding: EdgeInsets.all(0),
        child: ListTile(
          title: Text(
            option,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 18.0,
            //we will decide if the 'color' we are receiving here
            //what ratio of the 'red' and 'green' colors are in it
              color: color.red != color.green ? Colors.white : Colors.black,
          ),
        ),
      ),
      
    ),);
  }
}