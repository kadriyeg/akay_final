import 'package:flutter/material.dart';
import 'package:flutter_application_1/constants.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FirstPage(),
    );
  }
}

class FirstPage extends StatelessWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
            String buttonName= "click";
            int currentIndex = 0;
    return Scaffold(
        backgroundColor: backGroundColor,
        appBar: AppBar(
          backgroundColor: backGroundColor,
          elevation: 0,
         //title: const Text('App Title'),
        ),
        body:  Padding(
          padding: const EdgeInsets.only(left: 40.0),
          child: Center(
            //child: SizedBox da diyebilirsin.
            child: currentIndex== 0 ? 
            Container(
              height: double.infinity,
              width: double.infinity,
              color: backGroundColor,
              child: Padding(
                padding: const EdgeInsets.only(top:60),
                child: Column(
                  //mainAxisAlignment: MainAxisAlignment.center,
                  
                  children: [
                    //ROW 1 MASCOT VE USERNAME ROWU
                  
                  Padding(
                    padding: const EdgeInsets.only(left:40.0),
                    child: Row(
                      children: [
                        Column(
                          children: [
                        Image.asset('images/oturan_akay.png'),
                          ],
                        ),
                        SizedBox( width: 100),
                        Column(
                        children: [
                          Text(
                            "Hoşgeldin",
                            style: TextStyle(fontSize: 20,color: Colors.white),
                            textAlign: TextAlign.start,
                          ),
                          SizedBox(height: 15),
                          Text(
                            "ZEYNEP",
                            style: TextStyle(fontSize: 32,color: Colors.white),
                          ),
                        ],
                      ),
                      ],
                    ),
                  ),
                  /*SizedBox(
                    height: 10,
                  ),*/
                  //DERSLER ROWU
                  Padding(
                    padding: const EdgeInsets.only(left:15.0, top: 10.0),
                    child: Row(
                      children: [
                        ElevatedButton(

                          style: ElevatedButton.styleFrom(
                            onPrimary: Colors.white,
                            primary: buttonColor,
                          ),
                          onPressed: () {  },
                          child: Text(
                            "KURSLAR",
                            style: TextStyle(fontSize: 28,color: Colors.white),
                            ),
                        ),
                      ],
                    ),
                  ),
                  //PYTHON ALGORİTMA ROW
                  Row(
                    children: [
                      Column(
                        children: [
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              onPrimary: Colors.white,
                              primary: buttonColor,
                            ),
                            onPressed: (){
                              setState(() {
                                buttonName = "Clicked";
                              }
                              );
                          // ignore: avoid_print
                            },
                            child: Container(
                            height:95,
                            width: 120,
                            decoration: BoxDecoration(//color: Colors.pink,
                            image: DecorationImage(image: ExactAssetImage('images/icon_yilan.png'),
                            //fit: BoxFit.fitWidth,
                            ),
                            ),
                            child: Text(
                              "PYTHON",
                              style: TextStyle(fontSize: 20,color: Colors.white),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          ),
                        ],
                      ),
                      Column(
                      children: [
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              onPrimary: Colors.white,
                              primary: buttonColor,
                            ),
                            onPressed: (){
                              /*setState(() {
                                buttonName = "Clicked";
                              }
                              );*/
                              Navigator.of(context).push(MaterialPageRoute(builder:(BuildContext context){
                                return SecondPage();
                              },  ),);
                          // ignore: avoid_print
                            },
                            child: Container(
                            height:95,
                            width: 120,
                            decoration: BoxDecoration(//color: Colors.pink,
                            image: DecorationImage(image: ExactAssetImage('images/icon_yilan.png'),
                            //fit: BoxFit.fitWidth,
                            ),
                            ),
                            child: Text(
                              "PYTHON",
                              style: TextStyle(fontSize: 20,color: Colors.white),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          ),
                        //Image.asset('images/oturan_akay.png'),
                      ],
                    ),
                    ],
                  ),
                  //KALDIĞIN YERDEN DEVAM ET
                  Row(
                    children: [
                      Column(
                        children: [
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              onPrimary: Colors.white,
                              primary: buttonColor,
                            ),
                            onPressed: (){
                              setState(() {
                                buttonName = "Clicked";
                              }
                              );
                          // ignore: avoid_print
                            },
                            child: Text(buttonName),
                          ),
                        ],
                      ),
                      Column(
                      children: [
                        Image.asset('images/oturan_akay.png'),
                      ],
                    ),
                    ],
                  ),
                ]
                ),
              ),
            ) : Image.network('https://ichef.bbci.co.uk/images/ic/1200x675/p0b0n5gc.jpg'), 
          ),
        ),
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
class SecondPage extends StatelessWidget {
  @override
  const SecondPage({Key? key}) : super(key: key);
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(),
    );
  }

}