import 'dart:math';
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
  String buttonName= "click";
  int currentIndex = 0;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: backGroundColor,
          elevation: 0,
         //title: const Text('App Title'),
        ),
        body:  Center(
          //child: SizedBox da diyebilirsin.
          child: currentIndex== 0 ? 
          Container(
            width: double.infinity,
            height: double.infinity,
            color: backGroundColor,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start, 
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
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  onPrimary: Colors.white,
                  primary: buttonColor2,
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
            ]
            ),
          ) : Image.network('https://ichef.bbci.co.uk/images/ic/1200x675/p0b0n5gc.jpg'), 
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(
              label: 'Home',
              icon: Icon( Icons.abc),
            ),
            BottomNavigationBarItem(
              label: 'olala',
              icon: Icon(Icons.accessible),
            ),
          ],
          currentIndex: currentIndex,
          onTap: (int index){
            setState(() {
              currentIndex = index; 
            });
          },
        ),
      )
    );
  }
}


class SecondPage extends StatelessWidget {
  @override
  const SecondPage({Key? key}) : super(key: key);
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container();
  }

}