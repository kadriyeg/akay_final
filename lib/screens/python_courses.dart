import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/main.dart';
import '../constants.dart';
import '../main.dart';

// ignore: camel_case_types
class PythonCourses extends StatelessWidget {
  @override
  const PythonCourses({Key? key}) : super(key: key);
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: backGroundColor,
      appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 14, 5, 46),
          //elevation: 0,
          title: const Text('PYTHON'),
        ),
    );
  }

}