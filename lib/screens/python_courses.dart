import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/main.dart';
import '../constants.dart';
import '../main.dart';
import 'package:flutter/src/painting/gradient.dart';
import './questions_screen.dart';
import '../constants.dart';

class PythonCourses extends StatelessWidget {

  final List konular = [
  'Değişkenler', 
  'Pythonda sayılar', 
  'Karakter dizileri',
  'Listeler', 'Tuple',
  'Dictionary',
  'Sets',
  'Python operatörleri',
  'Koşul ifadeleri',
  'Python döngüler',
  'Pythonda fonksiyonlar' 
  ];

  @override
   PythonCourses({Key? key}) : super(key: key);
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
          backgroundColor: backGroundColor,
          appBar: AppBar(
          backgroundColor: appbarColor,
          //elevation: 0,
          title: const Text('PYTHON'),
        ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.only(top: 10.0, left: 10.0, right: 10.0),
          child: Column(
            
            children: [
              Expanded(
                child: ListView.builder(
                  itemCount: konular.length,
                  itemBuilder: (context, index)
                  {
                    return 
                    MySquare(
                      child: konular[index],
                      );
                  }
                )
              )
            ]
          )
        )
      )
    );
  }
}

class MySquare extends StatelessWidget {
  final String child;
  MySquare({required this.child});

  //const ({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15.0, left: 10.0, right: 10.0),
      child: InkWell(
        child: Container(
                        width: double.infinity,
                        height: 50,
                          decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(20),
                            bottomLeft: Radius.circular(20)
                          ),
                          color: buttonColor,
                          boxShadow: [
                            BoxShadow(
                              offset: Offset(10,10),
                              blurRadius: 10,
                              color: Color.fromARGB(255, 15, 6, 24)
                            )
                          ]
                        ),
        child: Center (child: Text(
          child,
          style: TextStyle(fontSize: 20, color: Colors.white), 
          //textAlign: TextAlign.start,
          ),
          )
        ), 
        onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (BuildContext context) {
                              return QuestionsScreen();
                            },
                          ),
                        );
                      },
      )
      );
    
  }
}
