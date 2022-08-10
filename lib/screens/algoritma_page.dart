import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/main.dart';
import 'package:flutter_application_1/screens/algoritmakonular/a_algoritmayagiris.dart';
import 'package:flutter_application_1/screens/algoritmakonular/a_problemcozmesureci.dart';
import '../constants.dart';
import '../main.dart';
import 'package:flutter/src/painting/gradient.dart';
import './questions_screen.dart';
import '../constants.dart';

class AlgoritmaPage extends StatelessWidget {

  @override
   AlgoritmaPage({Key? key}) : super(key: key);
  Widget build(BuildContext context) {
    // TODO: implement build
     return Scaffold(
          backgroundColor: backGroundColor,
          appBar: AppBar(
          backgroundColor: appbarColor,
          //elevation: 0,
          title: const Text('ALGORİTMA',
          style: TextStyle(color: Colors.white),),
        ),
      body: (
        ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 15.0, left: 10.0, right: 10.0),
            child: Container(width: double.infinity,
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
              child: ListTile(
                title: Text('Algoritmaya Giriş',
              style: TextStyle(fontSize: 20, color: Colors.white),),
                trailing: Icon(Icons.keyboard_arrow_right_sharp, color: Colors.white,),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Agiris(),
                    ),
                  );
                },
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15.0, left: 10.0, right: 10.0),
            child: Container(width: double.infinity,
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
              child: ListTile(
                title: Text('Problem Çözme ve Algoritmalar',
              style: TextStyle(fontSize: 20, color: Colors.white),),
                trailing: Icon(Icons.keyboard_arrow_right_sharp, color: Colors.white,),
                            onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Acozumsureci(),
                    ),
                  );
                },

              ),
            ),
          ),
                    Padding(
                      padding: const EdgeInsets.only(top: 15.0, left: 10.0, right: 10.0),
                      child: Container(width: double.infinity,
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
                        child: ListTile(
            title: Text('Karakter dizileri',
          style: TextStyle(fontSize: 20, color: Colors.white),),
            trailing: Icon(Icons.lock, color: Colors.white,),


          ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 15.0, left: 10.0, right: 10.0),
                      child: Container(width: double.infinity,
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
                        child: ListTile(
            title: Text('Listeler, Tuple',
          style: TextStyle(fontSize: 20, color: Colors.white),),
            trailing: Icon(Icons.lock, color: Colors.white,),

          ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 15.0, left: 10.0, right: 10.0),
                      child: Container(width: double.infinity,
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
                        child: ListTile(
            title: Text('Dictionary',
          style: TextStyle(fontSize: 20, color: Colors.white),),
            trailing: Icon(Icons.lock, color: Colors.white,),

          ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 15.0, left: 10.0, right: 10.0),
                      child: Container(width: double.infinity,
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
                        child: ListTile(
            title: Text('Sets',
          style: TextStyle(fontSize: 20, color: Colors.white),),
            trailing: Icon(Icons.lock, color: Colors.white,),

          ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 15.0, left: 10.0, right: 10.0),
                      child: Container(width: double.infinity,
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
                        child: ListTile(
            title: Text('Pythonda Operatörler',
          style: TextStyle(fontSize: 20, color: Colors.white),),
            trailing: Icon(Icons.lock, color: Colors.white,),

          ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 15.0, left: 10.0, right: 10.0),
                      child: Container(width: double.infinity,
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
                        child: ListTile(
            title: Text('Pythonda Koşul İfadeleri',
          style: TextStyle(fontSize: 20, color: Colors.white),),
            trailing: Icon(Icons.lock, color: Colors.white,),

          ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 15.0, left: 10.0, right: 10.0),
                      child: Container(width: double.infinity,
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
                        child: ListTile(
            title: Text('Pythonda Fonksiyonlar',
          style: TextStyle(fontSize: 20, color: Colors.white),),
            trailing: Icon(Icons.lock, color: Colors.white,),
          ),
                      ),
                    ),

        ],
      )
      ),
    );
  }
}