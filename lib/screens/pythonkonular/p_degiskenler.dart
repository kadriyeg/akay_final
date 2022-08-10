import 'package:flutter/material.dart';

import '../../constants.dart';
import '../python_courses.dart';

class Pdegiskenler extends StatelessWidget {
  const Pdegiskenler({Key? key}) : super(key: key);

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
              Text(
                "DEĞİŞKENLER\n",
                style: TextStyle(fontSize: 30, color: Colors.white),
              ),
              Text(
                "Program tarafından kullanılacak olan verileri depolamak için bir değişken kullanılır. Bu veriler bir sayı, bir dizi, bir Boolean, bir liste veya başka bir veri türü olabilir. Python’ da bir değişken, ona bir değer atadığınız anda oluşturulur. Atama işlemi bir değeri bir değişken ile eşleştirir. Atama operatörü “=” sembolüdür.\n\n   “X = 10” İfadesinde 10 değeri x değişkenine atanmaktadır.\n",
                style: TextStyle(fontSize: 16, color: Colors.white),
              ),
              Text(
                "KOD ÖRNEĞİ",
                style: TextStyle(fontSize: 25, color: Colors.white),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: double.infinity,
                  height: 120,
                  decoration: BoxDecoration(
                    border: Border.all(color: buttonColor, width: 2),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20.0, top: 5, bottom: 5),
                    child: Text(
                      "X=10;\n\nPrint(x);|\n\nÇıktı: 10",
                      style: TextStyle(fontSize: 16, color: Colors.white),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                   width: double.infinity,
                  height: 120,
                  decoration: BoxDecoration(
                    border: Border.all(color: buttonColor, width: 2),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20.0, top: 5, bottom: 5),
                    child: Text(
                      "X=20;\n\nprint(x);\n\nÇıktı: 20",
                      style: TextStyle(fontSize: 16, color: Colors.white),
                    ),
                  ),
                ),
              ),
              Text(
                "Çoklu Atama Kod Örneği",
                style: TextStyle(fontSize: 25, color: Colors.white),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: double.infinity,
                  height: 120,
                  decoration: BoxDecoration(
                    border: Border.all(color: buttonColor, width: 2),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20.0, top: 5, bottom: 5),
                    child: Text(
                      "x, y, z= 100, -45, 0;\n\nprint(“x = ”x, “y= “y, “z= “z);\n\nÇıktı: x= 100 y= -45 z= 0",
                      style: TextStyle(fontSize: 16, color: Colors.white),
                    ),
                  ),
                ),
              ),
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
                        padding: const EdgeInsets.only(top: 8),
                        child: Text(
                          'İleri',
                          style: TextStyle(fontSize: 16, color: Colors.white),
                          textAlign: TextAlign.center,
                        ),
                      )),
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
