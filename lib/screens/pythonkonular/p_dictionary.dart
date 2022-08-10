import 'package:flutter/material.dart';

import '../../constants.dart';
import '../python_courses.dart';

class Pdictionary  extends StatelessWidget {
  const Pdictionary ({Key? key}) : super(key: key);
@override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backGroundColor,
      appBar: AppBar(
        backgroundColor: backGroundColor,
        elevation: 2,
        //title: const Text('App Title'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              InkWell(
                      child: Center(
                        child: Container(
                          height: 40,
                          width: 70,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(15)),
                            color: buttonColor,
                          ),
                          child: Padding(
                          padding:
                              const EdgeInsets.only(top: 8),
                          child: Text(
                            'İleri',
                            style: TextStyle(fontSize: 16, color: Colors.white),
                            textAlign: TextAlign.center ,
                          ),
                        )
                        ),
                      ),
                       onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (BuildContext context) {
                              return PythonCourses();
                            },
                          ),
                        );
                      },
                    ),
            ],
          ),
        ),
      ),
    );
  }
}
