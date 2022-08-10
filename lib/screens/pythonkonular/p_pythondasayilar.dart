import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/pythonikincikonusorular.dart';
import '../../constants.dart';
import '../python_courses.dart';

class Psayilar extends StatelessWidget {
  const Psayilar({Key? key}) : super(key: key);

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
                "PYTHONDA SAYILAR\n",
                style: TextStyle(fontSize: 30, color: Colors.white),
              ),
              Text(
                "Pythonda kullanılan 2 tane  sayısal veri tipi vardır.\n\nİnteger(tam sayı) : Tam sayıları ifade eder. Örnek olarak; 5, 15, -23 …\n\nFloat(ondalık sayı): Ondalıklı sayıları ifade eder. Örnek olarak; 5.24, 3.14, 5.0 …\n\n",
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
                    height: 80,
                  decoration: BoxDecoration(
                    border: Border.all(color: buttonColor, width: 2),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20.0, top: 5, bottom: 5),
                    child: Text(
                      "Print(2+2);\n\nÇıktı: 4",
                      style: TextStyle(fontSize: 16, color: Colors.white),
                    ),
                  ),
                ),
              ),
                 Padding(
                   padding: const EdgeInsets.all(8.0),
                   child: Container(
                    width: double.infinity,
                    height: 80,
                decoration: BoxDecoration(
                    border: Border.all(color: buttonColor, width: 2),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 20.0, top: 5, bottom: 5),
                  child: Text(
                      "Print(2+1.5);\n\nÇıktı: 3.5",
                      style: TextStyle(fontSize: 16, color: Colors.white),
                  ),
                ),
              ),
                 ),
              Text(
                "Matematiksel Operatörler\n",
                style: TextStyle(fontSize: 25, color: Colors.white),
              ),
              Text(
                "Operatörler, değişkenler ve değerler üzerinde işlem yapmak için kullanılır.\n",
                style: TextStyle(fontSize: 16, color: Colors.white),
              ),
              Text(
                "Veri tipi dönüşümleri\n",
                style: TextStyle(fontSize: 25, color: Colors.white),
              ),Text(
                "“type()” İşlevi  herhangi bir nesnenin veri türünü öğrenmek için kullanılır.\n",
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
                      "x = 5\n\nprint(type(x))\n\nçıktı: int\n\nVeri türünü dönüştürmek için aşağıdaki yapıcı işlevler kullanılır;\n\nx = int(20)\n\nx = float(20.5)",
                      style: TextStyle(fontSize: 16, color: Colors.white),
                    ),
                  ),
                ),
              ),
              Text(
                "Dönüşüm için Kod örneği:",
                style: TextStyle(fontSize: 25, color: Colors.white),
              ),
               Padding(
                 padding: const EdgeInsets.all(8.0),
                 child: Container(
                  width: double.infinity,
                    height: 150,
                  decoration: BoxDecoration(
                    border: Border.all(color: buttonColor, width: 2),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20.0, top: 5, bottom: 5),
                    child: Text(
                      "x = str(3)    # x in türü string olarak ayarlandı '3'\n\ny = int(3)    # y x in türü tam sayı (int) olarak ayarlandı 3\n\nz = float(3)  # z x in türü ondalıklı sayı (float) olarak ayarlandı 3.0",
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
                        return PythonIkiSoru();
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
