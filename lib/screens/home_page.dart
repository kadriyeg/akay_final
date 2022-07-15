import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/python_courses.dart';
import '../constants.dart';
import 'package:flutter_application_1/main.dart';

import 'algoritma_page.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String buttonName = "click";
    int currentIndex = 0;
    return Scaffold(
      backgroundColor: backGroundColor,
      appBar: AppBar(
        backgroundColor: buttonColor,
        elevation: 0,
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
      // backgroundColor: backGroundColor,
      // appBar: AppBar(
      //   backgroundColor: backGroundColor,
      //   elevation: 0,
      //  //title: const Text('App Title'),
      // ),
      // body:  Padding(
      //   padding: const EdgeInsets.only(left: 40.0),
      //   child: Center(
      //     //child: SizedBox da diyebilirsin.
      //     child: currentIndex== 0 ?
      //     Container(
      //       height: double.infinity,
      //       width: double.infinity,
      //       color: backGroundColor,
      //       child: Padding(
      //         padding: const EdgeInsets.only(top:60),
      //         child: Column(
      //           //mainAxisAlignment: MainAxisAlignment.center,

      //           children: [
      //             //ROW 1 MASCOT VE USERNAME ROWU

      //           Padding(
      //             padding: const EdgeInsets.only(left:40.0),
      //             child: Row(
      //               children: [
      //                 Column(
      //                   children: [
      //                 Image.asset('images/oturan_akay.png'),
      //                   ],
      //                 ),
      //                 SizedBox( width: 50),
      //                 Column(
      //                 children: [
      //                   Text(
      //                     "Hoşgeldin",
      //                     style: TextStyle(fontSize: 20,color: Colors.white),
      //                     textAlign: TextAlign.start,
      //                   ),
      //                   SizedBox(height: 15),
      //                   Text(
      //                     "ZEYNEP",
      //                     style: TextStyle(fontSize: 32,color: Colors.white),
      //                   ),
      //                 ],
      //               ),
      //               ],
      //             ),
      //           ),
      //           /*SizedBox(
      //             height: 10,
      //           ),*/
      //           //DERSLER ROWU
      //           Padding(
      //             padding: const EdgeInsets.only(left:15.0, top: 10.0),
      //             child: Row(
      //             children: [
      //               Padding(
      //                 padding: const EdgeInsets.all(10),
      //                 child:
      //                 Container(height: 40,
      //                 width: 600,
      //                 color: buttonColor,
      //                 child: Text(
      //                     "KURSLAR",
      //                     style: TextStyle(fontSize: 28,color: Colors.white),
      //                     ),
      //                 ),
      //               )
      //             ],
      //           )
      //           ),
      //           //PYTHON ALGORİTMA ROW
      //           Row(
      //             children: [
      //               Column(
      //                 children: [
      //                   ElevatedButton(
      //                     style: ElevatedButton.styleFrom(
      //                       onPrimary: Colors.white,
      //                       primary: buttonColor,
      //                     ),
      //                     onPressed: (){
      //                       setState(() {
      //                         buttonName = "Clicked";
      //                       }
      //                       );
      //                   // ignore: avoid_print
      //                        Navigator.of(context).push(MaterialPageRoute(builder:(BuildContext context){
      //                         return AlgoritmaPage();
      //                       },  ),);
      //                     },

      //                     child: Container(
      //                     height:95,
      //                     width: 120,
      //                     decoration: BoxDecoration(//color: Colors.pink,
      //                     image: DecorationImage(image: ExactAssetImage('images/icon_algoritma.png'),
      //                     //fit: BoxFit.fitWidth,
      //                     ),
      //                     ),
      //                     child: Text(
      //                       "ALGORİTMA",
      //                       style: TextStyle(fontSize: 20,color: Colors.white),
      //                       textAlign: TextAlign.center,
      //                     ),
      //                   ),
      //                   ),
      //                 ],
      //               ),

      //               SizedBox(width: 30),

      //               Column(
      //               children: [
      //                 ElevatedButton(
      //                     style: ElevatedButton.styleFrom(
      //                       onPrimary: Colors.white,
      //                       primary: buttonColor,
      //                     ),
      //                     onPressed: (){
      //                       setState(() {
      //                         buttonName = "Clicked";
      //                       }
      //                       );
      //                       Navigator.of(context).push(MaterialPageRoute(builder:(BuildContext context){
      //                         return PythonCourses();
      //                       },  ),);
      //                   // ignore: avoid_print
      //                     },
      //                     child: Container(
      //                     height:95,
      //                     width: 120,
      //                     decoration: BoxDecoration(//color: Colors.pink,
      //                     image: DecorationImage(image: ExactAssetImage('images/icon_yilan.png'),
      //                     //fit: BoxFit.fitWidth,
      //                     ),
      //                     ),
      //                     child: Text(
      //                       "PYTHON",
      //                       style: TextStyle(fontSize: 20,color: Colors.white),
      //                       textAlign: TextAlign.center,
      //                     ),
      //                   ),
      //                   ),
      //                 //Image.asset('images/oturan_akay.png'),
      //               ],
      //             ),
      //             ],
      //           ),
      //           //KALDIĞIN YERDEN DEVAM ET
      //           Row(
      //             children: [
      //               Column(
      //                 children: [
      //                   ElevatedButton(
      //                     style: ElevatedButton.styleFrom(
      //                       onPrimary: Colors.white,
      //                       primary: buttonColor,
      //                     ),
      //                     onPressed: (){
      //                       setState(() {
      //                         buttonName = "Clicked";
      //                       }
      //                       );
      //                   // ignore: avoid_print
      //                     },
      //                     child: Text(buttonName),
      //                   ),
      //                 ],
      //               ),
      //               Column(
      //               children: [
      //                 Image.asset('images/oturan_akay.png'),
      //               ],
      //             ),
      //             ],
      //           ),
      //         ]
      //         ),
      //       ),
      //     ) : Image.network('https://ichef.bbci.co.uk/images/ic/1200x675/p0b0n5gc.jpg'),
      //   ),
      // ),
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed, // Shifting
          selectedItemColor: Colors.purple[100],
          unselectedItemColor: Colors.grey,
          backgroundColor: Colors.white,
          items: const [
            BottomNavigationBarItem(
              label: 'Ana Sayfa',
              icon: Icon(Icons.home_filled),
            ),
            BottomNavigationBarItem(
              label: 'Dersler',
              icon: Icon(Icons.school),
            ),
            BottomNavigationBarItem(
              label: 'AKAYbot',
              icon: Icon(Icons.chat_bubble_outline),
            ),
            BottomNavigationBarItem(
              label: 'Profil',
              icon: Icon(Icons.person_outlined),
            ),
          ],
          currentIndex: currentIndex,
          onTap: (int index){
            setState(() {
              currentIndex = index;
          });
         },
        ),
    );
  }

  void setState(Null Function() param0) {}
}
