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
      body: Container(
        child: Padding(
          padding: const EdgeInsets.only(top: 30.0, left: 30.0, right: 30.0),
          child: Column(
            
            children: [
              Expanded(
                child: ListView.builder(
                  itemCount: 8,
                  itemBuilder: (_, i){
                    return ElevatedButton(
                    onPressed: () {  },
                    child: Container(
                      width: double.infinity,
                      height: 100,
                        decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(20),
                          bottomLeft: Radius.circular(20)
                        ),
                        color: Colors.amber,
                        boxShadow: [
                          BoxShadow(
                            offset: Offset(10,10),
                            blurRadius: 10,
                            color: Color.fromARGB(255, 15, 6, 24)
                          )
                        ]
                      ),
                    child: Container(
                      padding: const EdgeInsets.only(left: 20.0, top: 15.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                                "GİRİŞ",
                                style: TextStyle(fontSize: 12,color: Colors.white),
                                textAlign: TextAlign.center,
                                ),
                          Text(
                                "KONU 1:...",
                                style: TextStyle(fontSize: 20,color: Colors.white),
                                textAlign: TextAlign.center,
                                ),
                        ],
                      ),
                    ),
                    ),
                  );

                })
              )
                /*
                children: [
                  
                  //1.konu
                  ElevatedButton(
                    onPressed: () {  },
                    child: Container(
                      width: double.infinity,
                      height: 100,
                        decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(20),
                          bottomLeft: Radius.circular(20)
                        ),
                        color: Colors.amber,
                        boxShadow: [
                          BoxShadow(
                            offset: Offset(10,10),
                            blurRadius: 10,
                            color: Color.fromARGB(255, 15, 6, 24)
                          )
                        ]
                      ),
                    child: Container(
                      padding: const EdgeInsets.only(left: 20.0, top: 15.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                                "GİRİŞ",
                                style: TextStyle(fontSize: 12,color: Colors.white),
                                textAlign: TextAlign.center,
                                ),
                          Text(
                                "KONU 1:...",
                                style: TextStyle(fontSize: 20,color: Colors.white),
                                textAlign: TextAlign.center,
                                ),
                        ],
                      ),
                    ),
                    ),
                  ),
                  SizedBox(height: 20.0,),
                  //2.konu
                  ElevatedButton(
                    onPressed: () {  },
                    child: Container(
                      width: double.infinity,
                      height: 100,
                        decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(20),
                          bottomLeft: Radius.circular(20)
                        ),
                        color: Colors.amber,
                        boxShadow: [
                          BoxShadow(
                            offset: Offset(10,10),
                            blurRadius: 10,
                            color: Color.fromARGB(255, 15, 6, 24)
                          )
                        ]
                      ),
                    child: Container(
                      padding: const EdgeInsets.only(left: 20.0, top: 15.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                                "GİRİŞ",
                                style: TextStyle(fontSize: 12,color: Colors.white),
                                textAlign: TextAlign.center,
                                ),
                          Text(
                                "KONU 1:...",
                                style: TextStyle(fontSize: 20,color: Colors.white),
                                textAlign: TextAlign.center,
                                ),
                        ],
                      ),
                    ),
                    ),
                  ),
                  SizedBox(height: 20.0,),
                  //3.konu
                  ElevatedButton(
                    onPressed: () {  },
                    child: Container(
                      width: double.infinity,
                      height: 100,
                        decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(20),
                          bottomLeft: Radius.circular(20)
                        ),
                        color: Colors.amber,
                        boxShadow: [
                          BoxShadow(
                            offset: Offset(10,10),
                            blurRadius: 10,
                            color: Color.fromARGB(255, 15, 6, 24)
                          )
                        ]
                      ),
                    child: Container(
                      padding: const EdgeInsets.only(left: 20.0, top: 15.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                                "GİRİŞ",
                                style: TextStyle(fontSize: 12,color: Colors.white),
                                textAlign: TextAlign.center,
                                ),
                          Text(
                                "KONU 1:...",
                                style: TextStyle(fontSize: 20,color: Colors.white),
                                textAlign: TextAlign.center,
                                ),
                        ],
                      ),
                    ),
                    ),
                  ),
                  SizedBox(height: 20.0,),
                  //4.konu
                  ElevatedButton(
                    onPressed: () {  },
                    child: Container(
                      width: double.infinity,
                      height: 100,
                        decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(20),
                          bottomLeft: Radius.circular(20)
                        ),
                        color: Colors.amber,
                        boxShadow: [
                          BoxShadow(
                            offset: Offset(10,10),
                            blurRadius: 10,
                            color: Color.fromARGB(255, 15, 6, 24)
                          )
                        ]
                      ),
                    child: Container(
                      padding: const EdgeInsets.only(left: 20.0, top: 15.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                                "GİRİŞ",
                                style: TextStyle(fontSize: 12,color: Colors.white),
                                textAlign: TextAlign.center,
                                ),
                          Text(
                                "KONU 1:...",
                                style: TextStyle(fontSize: 20,color: Colors.white),
                                textAlign: TextAlign.center,
                                ),
                        ],
                      ),
                    ),
                    ),
                  ),
                  SizedBox(height: 20.0),
                  //5.konu
                  ElevatedButton(
                    onPressed: () {  },
                    child: Container(
                      width: double.infinity,
                      height: 100,
                        decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(20),
                          bottomLeft: Radius.circular(20)
                        ),
                        color: Colors.amber,
                        boxShadow: [
                          BoxShadow(
                            offset: Offset(10,10),
                            blurRadius: 10,
                            color: Color.fromARGB(255, 15, 6, 24)
                          )
                        ]
                      ),
                    child: Container(
                      padding: const EdgeInsets.only(left: 20.0, top: 15.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                                "GİRİŞ",
                                style: TextStyle(fontSize: 12,color: Colors.white),
                                textAlign: TextAlign.center,
                                ),
                          Text(
                                "KONU 1:...",
                                style: TextStyle(fontSize: 20,color: Colors.white),
                                textAlign: TextAlign.center,
                                ),
                       ],
                      ),
                    ),
                    ),
                  ),
                
                ],*/
            ],
          ),

          ),
        )
      );
  }
}