import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/main.dart';
import '../constants.dart';
import '../main.dart';
import 'package:flutter/src/painting/gradient.dart';


// ignore: camel_case_types
class PythonCourses extends StatelessWidget {
  @override
  const PythonCourses({Key? key}) : super(key: key);
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
          backgroundColor: backGroundColor,
          appBar: AppBar(
          backgroundColor: appbarColor,
          //elevation: 0,
          title: const Text('PYTHON'),
        ),
        body: Center(
          child: Container(
            padding: EdgeInsets.all(10.0),
            width: double.infinity,
            height: 230,
            color: buttonColor,
            child: Stack(
              children: <Widget> [
                Positioned(
                  left: 50,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.amber,
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                )
              ],
            ),
          ),
        )
    );
  }
}