import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/python_courses.dart';
import 'algoritma_page.dart';
import '../constants.dart';
import 'package:flutter_application_1/main.dart';



class FirstPage extends StatelessWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String buttonName = "click";
    int currentIndex = 0;
    return Scaffold(
      backgroundColor: backGroundColor,
      appBar: AppBar(
        backgroundColor: backGroundColor,
        elevation: 2,
        //title: const Text('App Title'),
      ),
      body: Container( 
        child: Padding(
          padding: const EdgeInsets.only(top:50,left:20,right:20,),
          child: Column(
            children: [
              //ICON VE İSİM ROWU
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    children: [
                      Image.asset('images/oturan_akay.png'),
                    ],
                  ), 
                  Column(
                    children: [
                      Text(
                        "Hoşgeldin",
                        style: TextStyle(fontSize: 20, color: Colors.white),
                        textAlign: TextAlign.start,
                      ),
                      SizedBox(height: 15),
                      Text(
                        "ZEYNEP",
                        style: TextStyle(fontSize: 32, color: Colors.white),
                      ),
                    ],
                  ),
                ],
              ),
              // KURSLAR ROWU
              Padding(
                  padding:
                      const EdgeInsets.only(top: 30.0,),
                  child: Container(
                      width: double.infinity,
                      height: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(15),
                              bottomLeft: Radius.circular(15)),
                          color: buttonColor,
                          boxShadow: [
                            BoxShadow(
                                offset: Offset(10, 10),
                                blurRadius: 10,
                                color: Color.fromARGB(255, 15, 6, 24))
                          ]),
                      child: Padding(
                        padding:
                            const EdgeInsets.only(top: 8, bottom: 8, left: 20.0),
                        child: Text(
                          'KURSLAR',
                          style: TextStyle(fontSize: 20, color: Colors.white),
                          textAlign: TextAlign.start,
                        ),
                      ))),
               // PYTHON VE ALGORİTMA ROWU
              Padding(
                padding: const EdgeInsets.only(top: 20, bottom: 30,),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      child: Container(
                        height: 130,
                        width: 170,
                        decoration: BoxDecoration(
                          image: DecorationImage(image: AssetImage('images/icon_algoritma.png')),
                          borderRadius: BorderRadius.all(Radius.circular(15)),
                          color: buttonColor,
                          
                        ),
                        child: Padding(
                        padding:
                            const EdgeInsets.only(top: 8),
                        child: Text(
                          'Algoritma',
                          style: TextStyle(fontSize: 20, color: Colors.white),
                          textAlign: TextAlign.center ,
                        ),
                      )
                      ),
                       onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (BuildContext context) {
                              return AlgoritmaPage();
                            },
                          ),
                        );
                      },
                    ),
                    InkWell(
                      child: Container(
                        height: 130,
                        width: 170,
                        decoration: BoxDecoration(
                          image: DecorationImage(image: AssetImage('images/icon_yilan.png')),
                          borderRadius: BorderRadius.all(Radius.circular(15)),
                          color: buttonColor,
                        ),
                        child: Padding(
                        padding:
                            const EdgeInsets.only(top: 8),
                        child: Text(
                          'Python',
                          style: TextStyle(fontSize: 20, color: Colors.white),
                          textAlign: TextAlign.center ,
                        ),
                      )
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
              // KALDIĞIN YERDEN DEVAM ET ROWU
              Container(
                height: 100,
                width:250,
                decoration: BoxDecoration(
                   //image: DecorationImage(image: AssetImage('images/kaldigin_yer.png')),
                  color: buttonColor,
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                ),
                 child: Padding(
                   padding: const EdgeInsets.all(8.0),
                   child: Text(
                            'Kaldığın Yerden Devam Et',
                            style: TextStyle(fontSize: 18, color: Colors.white),
                            textAlign: TextAlign.center ,
                          ),
                 ),
                
              ),
            ],
          ),
        ),
      ),
    );
  }

  void setState(Null Function() param0) {}
}

