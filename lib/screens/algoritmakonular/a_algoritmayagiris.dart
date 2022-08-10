import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/algoritma_page.dart';
import 'package:flutter_application_1/screens/algoritmaquestions_screen.dart';
import '../../constants.dart';
import '../python_courses.dart';

class Agiris extends StatelessWidget {
  const Agiris({Key? key}) : super(key: key);

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
                "ALGORİTMAYA GİRİŞ",
                style: TextStyle(fontSize: 30, color: Colors.white),
              ),
              Text(
                "   \nMerhaba, algoritma eğitiminin ilk basamağına hoşgeldin! Algoritma nedir? Haydi tanımlayalım:\n\n Algoritma, belli bir problemi çözmek veya belirli bir amaca ulaşmak için tasarlanan yol. Matematikte ve bilgisayar biliminde bir işi yapmak için tanımlanan, bir başlangıç durumundan başladığında, açıkça belirlenmiş bir son durumunda sonlanan, sonlu işlemler kümesidir.\n\n Sana vereceğim algoritma eğitimi ile bu tanımı daha iyi anlıyor olacaksın!\n",
                style: TextStyle(fontSize: 16, color: Colors.white),
              ),
              Text(
                "1.Problem Çözme Kavramları ve Yaklaşımlar\n",
                style: TextStyle(fontSize: 25, color: Colors.white),
              ),
              Text(
                "1.1 Programlama Nedir?\n",
                style: TextStyle(fontSize: 22, color: Colors.white),
              ),
              Text(
                "   Programlama problem çözme ve düşünce yetisine gereksinim duyulan bir düşünce biçimidir, bilgiyi işleme süreçleri, verileri yorumlama, dönüştürme ve sunma gibi süreçlerin yaratıcı düşünce ile desteklenmesi programlama için önem taşır. Programlama, hem problem çözme becerisi hem de bilgi işlemsel düşünme becerisine sahip olmayı gerektirir.\n\n Bilgi işlemsel düşünme; bilgisayar bilimimin kavramlarından yararlanılarak problem çözme,sistem tasarlama ve insan davranışlarını anlamak olarak tanımlanabilir. Bilgi işlemsel düşünme aşağıdaki özellikleri barındıran bir problem çözme sürecidir.\n\n • Problemleri bilgisayar ve başka araçlar yardımı ile çözebilir hale getirme\n •  Mantıklı bir şekilde verileri düzenleme ve çözümleme\n •  Model ve benzetim desteği ile verileri alma\n • Algoritmik düşünme çerçevesinde çözümleri otomatikleştirme\n •  Kaynakları verimli bir şekilde kullanarak uygun çözümleri tanımlama, çözümleme ve uygulama\n •  Bulunan çözümü faklı problemlere transfer etme ve genelleştirme\n",
                style: TextStyle(fontSize: 16, color: Colors.white),
              ),
              Text(
                "1.2 Program Nedir?\n",
                style: TextStyle(fontSize: 22, color: Colors.white),
              ),
              Text(
                "   Program yapılacak bir işlemi ya da hesaplamayı gerçekleştirmek için birbirini izleyen komut ya da yönergelerden oluşan yapıdır. İşlemler mantıksal ya da matematiksel olabilir. \n\n Girdi: Klavyeden, dosyadan veya başka bir aygıttan veri almadır. Bu terimi programlama hayatınız boyunca sık sık “input” olarak duyacaksınız.\n\n Çıktı: Ekranda veriyi görüntüleme veya veriyi dosyaya veya başka bir aygıta göndermedir. Bu terimi programlama hayatınız boyunca sık sık “output” olarak duyacaksınız.\n\n Koşullu yürütme: Belirli durumları sınamak ve komutları uygun bir sıraya göre çalıştırmaktır.\n\n Tekrarlama: Bazı eylemleri genellikle ufak tefek değişikliklerle yineleme işlemidir.\n\n Programlarıın zorluk düzeyi farketmeksizin bu temel işlemlerden oluştuğunu söyleyebiliriz.Bu sebeple programlamayı küçük alt görevlere bölünerek de tanımlanabilir.\n ",
                style: TextStyle(fontSize: 16, color: Colors.white),
              ),

              Text(
                "1.3 Hata Ayıklama Nedir?\n",
                style: TextStyle(fontSize: 22, color: Colors.white),
              ),
              Text(
                "   Programlama, oldukça detaylı bir süreçtir ve programcılar hatalarla karşılaşırlar. Bu hatalara “bug” denir. Hataları bulma ve düzeltme işlemine hata ayıklama (debugging) denir. Bir programda; söz dizimsel hatalar, çalışma zamanı hataları ve anlam bilimsel hatalar olmak üzere üç tür hata türü vardır.",
                style: TextStyle(fontSize: 16, color: Colors.white),
              ),
              Text(
                "\n1.4 Günlük Hayatta Problem Çözme\n",
                style: TextStyle(fontSize: 22, color: Colors.white),
              ),
              Text(
                "   Günlük hayatımızda problemlerimizi çözmek için yaşantımızı etkileyen pek çok karar veririz. Bu kararlar izleyeceğimiz televizyon kanalını seçmek gibi basit de olabilir, meslek seçimi gibi önemli de olabilir. Kararın doğru veya yanlış olması ile zaman ve kaynaklar boşa gidebilir, bu nedenle doğru karar vermek önemlidir. En iyi karar vermek problemleri çözmekten geçer. Genellikle birden fazla çözümü olan bir problem alternatifler arasından en uygun yolu belirlemektir. Problemler ve alternatif çözümler dikkatlice değerlendirilerek programlama yapılması son derece önemlidir.",
                style: TextStyle(fontSize: 16, color: Colors.white),
              ),
              // Padding(
              //   padding: const EdgeInsets.all(8.0),
              //   child: Container(
              //     decoration: BoxDecoration(border: Border.all(color: buttonColor, width: 2.0, style: BorderStyle.solid)),
              //     child: Text(
              //       "Problem çözme süreci için, birkaç örnek beraber inceleyelim:\n\n   Tilki, Kaz ve Mısır Çuvalı\n\n   Konuşacağımız klasik problem, beraberindeki nesneleri nehrin karşısına taşıması gereken bir çiftçiyle ilgili bir bulmaca. Bu çiftçinin bir tilkiyi, bir kazı ve bir mısır çuvalını nehrin karşısına geçirmesi gerekmektedir. Çiftçinin bu işlemi gerçekleştirmek için küçük bir teknesi var ancak bu teknede çiftçi ile birlikte en fazla bir nesneye daha yer var. Ne yazık ki tilki ve kaz açtır. Bu yüzden tilki kaz ile yalnız kalamaz çünkü tilki kazı yiyebilir. Aynı şekilde kaz ve mısır çuvalı yalnız bırakılamaz çünkü kaz mısırı yiyebilir. Bu koşullarda çiftçi nehrin karşısına tilki, kaz ve mısırı sorunsuz bir şekilde nasıl geçirebilir?\n\n",
              //       style: TextStyle(fontSize: 20, color: Colors.white),
              //     ),
              //   ),
              // ),
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
                              return AlgoritmaQuestionsScreen();
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
