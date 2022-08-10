import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/algoritmaquestionsiki_screen.dart';
import '../../constants.dart';
import '../python_courses.dart';

class Acozumsureci extends StatelessWidget {
  const Acozumsureci({Key? key}) : super(key: key);

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
               const Text(
                "\n2. Problem Çözme Süreci\n",
                style: TextStyle(fontSize: 25, color: Colors.white),
              ),
               const Text(
                "   Bir önceki konuda incelediğimiz problemi çözerken çözüm sürecine destek olan bazı yaklaşımları belirlemek gerekir ama öncelikle kural ve teknikleri bilmekte fayda var. Haydi birlikte inceleyelim.\n",
                style: TextStyle(fontSize: 16, color: Colors.white),
              ), const Text(
                "2.1 Bir Planınız Olsun\n",
                style: TextStyle(fontSize: 22, color: Colors.white),
              ),
               Text(
                "   Planlı ilerlemek problemi çözmek için oldukça önemlidir, bu sayede belirsiz bir çözüm sürecinin önüme geçilmiş olup, daha belirleyici ve net bir yaklaşım kazanılır.",
                style: TextStyle(fontSize: 16, color: Colors.white),
              ),
               Text(
                "\n1) Problemi Tekrar İfade Edin:\n\n Problemler bazen anlaşılması güç olabilir. Böyle zamanlarda farklı şekillerde aynı problemi dile getirmek çözüme fayda sağlayabilir. Faklı biçimlerde sunulan problem, çözüme ışık tutmasa bile problemin doğru anlaşılıp anlaşılmayacağını teyit etmekte yardımcı olur.\n\n 2) Problemi Küçük Parçalara Ayırın:\n\n Verilen problemi küçük parçalar halinde ayırmak, çözümü kolaylaştırır. \n\n 3) Problemi Basitleştirin:\n\n Zorlandığınız bir problemi, daha basit hale indirgeyerek çözmeyi deneyin. Temel amaç problemi basitçe ifade etmeye çalışmak olmalıdır.\n\n 4) Denemeye Devam Edin:\n\n Problem çözüm süreci daha uzun sürebilir, ancak denemeye devam etmek bize her seferinde yeni bir bakış açısı ile bakmayı sağlar bu sayede probleme geniş bir perspektiften bakabiliriz.\n",
                style: TextStyle(fontSize: 16, color: Colors.white),
              ),
               Text(
                "2.2 Problem Çözme Adımları",
                style: TextStyle(fontSize: 22, color: Colors.white),
              ),
               Text(
                "   \nProblem çözme sürecinde en iyi kararı verebilmek için izlenmesi gereken altı adım vardır:\n\n 1-Problemi tanımlama: Problemin açık anlaşılır ve doğru bir şekilde tanımlanmış olmasıdır.\n\n 2-Problemi anlama: Problemin neler içerdiğini, kapsamının biliniyor olmasıdır.\n\n 3- Problemin çözümü için farklı yol ve yöntemler belirleme: Problemi daha geniş bir açıdan görmek adına farklı yol ve yöntemler belirlemek önemlidir.\n\n 4-En iyi çözümü seçme: Birden fazla çözümü bulunan bir problemi çözerken, seçtiğimiz çözüm yöntemi de oldukça önemlidir. Problemin gereksinimleri karşılayan en iyi çözüm seçilmelidir.\n\n 5- Problemi çözmek için gerekli yönergeleri oluşturma: Bu adımda adım adım yönergeler oluşturulması gerekmektedir. Problemin ihtiyaç duyduğu çözüm adım adım yazılarak sonuca gidilmesi sağlanır.\n\n 6-Çözümü değerlendirme: Çözümü test etmek veya değerlendirmek sonucun doğruluğunu kontrol etmek anlamına gelir.",
                style: TextStyle(fontSize: 16, color: Colors.white),
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
                          padding:
                              const EdgeInsets.only(top: 8),
                          child: Text(
                            'İleri',
                            style: TextStyle(fontSize: 16, color: Colors.white),
                            textAlign: TextAlign.center ,
                          ),
                        )
                        ),
                      ),
                       onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (BuildContext context) {
                              return const AlgoritmaQuestionsScreeniki();
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
