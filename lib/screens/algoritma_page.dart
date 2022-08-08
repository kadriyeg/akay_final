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
          ListTile(
            title: Text('Algoritmaya Giriş',
          style: TextStyle(color: Colors.green),),
            trailing: Icon(Icons.keyboard_arrow_right_sharp, color: Colors.green,),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Agiris(),
                ),
              );
            },
          ),
          ListTile(
            title: Text('Problem Çözme ve Algoritmalar',
          style: TextStyle(color: Colors.green),),
            trailing: Icon(Icons.keyboard_arrow_right_sharp, color: Colors.green,),
                        onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Acozumsureci(),
                ),
              );
            },

          ),
                    ListTile(
            title: Text('Karakter dizileri',
          style: TextStyle(color: Colors.white),),
            trailing: Icon(Icons.lock, color: Colors.white,),


          ),
                    ListTile(
            title: Text('Listeler, Tuple',
          style: TextStyle(color: Colors.white),),
            trailing: Icon(Icons.lock, color: Colors.white,),

          ),
                    ListTile(
            title: Text('Dictionary',
          style: TextStyle(color: Colors.white),),
            trailing: Icon(Icons.lock, color: Colors.white,),

          ),
                    ListTile(
            title: Text('Sets',
          style: TextStyle(color: Colors.white),),
            trailing: Icon(Icons.lock, color: Colors.white,),

          ),
                    ListTile(
            title: Text('Pythonda Operatörler',
          style: TextStyle(color: Colors.white),),
            trailing: Icon(Icons.lock, color: Colors.white,),

          ),
                    ListTile(
            title: Text('Pythonda Koşul İfadeleri',
          style: TextStyle(color: Colors.white),),
            trailing: Icon(Icons.lock, color: Colors.white,),

          ),
                    ListTile(
            title: Text('Pythonda Fonksiyonlar',
          style: TextStyle(color: Colors.white),),
            trailing: Icon(Icons.lock, color: Colors.white,),
          ),

        ],
      )
      ),
    );
  }
}



   