import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/questions_model.dart';
import '../constants.dart';
import '../widgets/question_widget.dart';
import '../widgets/next_button.dart';
import '../widgets/option_card.dart';
import '../widgets/result_box.dart';

class AlgoritmaQuestionsScreeniki extends StatefulWidget {
  const AlgoritmaQuestionsScreeniki({ Key? key }) : super(key: key);

  @override
  State<AlgoritmaQuestionsScreeniki> createState() => _AlgoritmaQuestionsScreen2State();
}

class _AlgoritmaQuestionsScreen2State extends State<AlgoritmaQuestionsScreeniki> {
  List<Question> _questions = [
    Question(
      id: '10',
      title: 'Edibe, teknede balık tutuyor. Şimdiye kadar 400 gramlık 3 çipura ve 200 gramlık alabalıklar tutabildi. Tuttuğu çipuraların toplam ağırlığı alabalıkların toplam ağırlığına eşit olabilmesi için kaç adet alabalık tutmuş olmalıdır?. ',
      options: {'6': true, '5': false, '4': false, '3': false},
    ),
    Question(
      id: '10',
      title: 'Bir turnike sırasındaki İrem ve Kadriye`nin durumu ile ilgili aşağıdaki bilgiler veriliyor:\nİrem ve Kadriye`in önünde ve arkalarında en az 1 kişi vardır.\nİrem`ın önündeki kişi sayısı ile Kadriye`nin arkasındaki kişi sayısının toplamı, İrem ve Edibe arasındaki kişi sayısının iki katıdır.\nSırada en az kaç kişi olabilir?',
      options: {'3': false, '4': false,'5': true, '6': false},
    ),
    Question(
      id: '10',
      title: 'Basri, cumartesi öğleden sonra öldürüldü. Karısı cinayet sırasında kitap okuyor, kapıcı duşta, şef ise kahvaltı hazırlıyordu. Bahçıvan ise çimleri biçiyordu. Verilen bilgilere göre cinayeti kim işledi?',
      options: {'Şef': true, 'Basri`nin karısı': false, 'Kapıcı': false, 'Bahçıvan': false},
    ),
    Question(
      id: '10',
      title: 'Aşağıdaki ifadelerden bir tanesi yanlış. Bu duruma göre bugün haftanın hangi günü?\nBugün ne pazar ne de Çarşamba\nYarın Pazar veya Çarşamba değil.\nDün Cuma değildi.\nDünden önceki gün ise Pazartesi ya da Pazar değildi.',
      options: {'Cumartesi': false,'Pazar': true,  'Cuma': false, 'Perşembe': false},
    ),
    Question(
      id: '10',
      title: 'Aycan`ın ekmek yapabilmesi için tam olarak 35 gram una ihtiyacı vardır. Elinde farklı 3 adet ağırlık bulunan Aycan, önce ilk iki ağırlığı kullanarak tarttığı unu bir kaba koyuyor. Sonra bu kaptan bir kısmını üçüncü ağırlığı kullanarak çıkarıyor ve geriye 35 gram un kalıyor. Aycan`ın kullandığı ağırlıklar sırasıyla ne olabilir?',
      options: {'45,55 ve 100': false, '40,106 ve 50': false, '85,20 ve 23':false, '25,105 ve 95':  true},
    ),
    
  ];
  //create an index to loop through _questions
  int index = 0;
  //create a score variable
  int score = 0;
  //create a boolean value to check if the user has clicked
  bool isPressed = false;

  //a function to display the next question
  bool isAlreadySelected = false;

  void nextQuestion(){
    if(index== _questions.length-1){
      //this is the block where questions end
      showDialog(
        context: context,
        barrierDismissible: false, //this will disable the dismiss function on clicking outside of box
        builder: (ctx) => ResultBox(
              result: score, //total points the user got
              questionLength: _questions.length, //out of how many questions
              onPressed: startOver,
      ));
    }else{
      if(isPressed){
        setState(() {
          index++;
          isPressed = false;
          isAlreadySelected= false;
        });
      }else{
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Lütfen sorularını tamamla :)'),
            behavior: SnackBarBehavior.floating,
            margin: EdgeInsets.symmetric(vertical: 25.0),
          ),
        );
      }
    }
  }
  //create a function for changing color
  void checkAnswerAndUpdate(bool value){
    if(isAlreadySelected){
      return;
    }else{
      if(value == true){
        score++;
      }
      setState(() {
        isPressed = true;
        isAlreadySelected= true;
      });
    }
  } 

//creating a function to start over as we said in result box, gesture detector
  void startOver(){
    setState(() {
      index= 0;
      score=0;
      isPressed= false;
      isAlreadySelected=false;

    });
    Navigator.pop(context);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ALGORİTMAYA GİRİŞ"), 
        backgroundColor: backGroundColor,
        shadowColor: backGroundColor,
        //adding score to show in the app
        actions:[
          Padding(
            padding:const EdgeInsets.all(18.0), 
            child: Text( 'Skor: $score',
              style:const TextStyle(fontSize:18.0),
            ),
          ),
        ]
      ),
      body: Container(
        color: backGroundColor,
        width: double.infinity,
        padding: const EdgeInsets.symmetric(horizontal: 50.0),
        child: Column(
          children: [
            QuestionWidget(
              indexAction: index,
              question: _questions[index].title,
              totalQuestions: _questions.length,
            ),
            const Divider(color: neutral,),
            //add some space
            const SizedBox(
              height: 25.0,),
              for (int i=0; i< _questions[index].options.length; i++)
                GestureDetector(
                  onTap: () => checkAnswerAndUpdate(
                     _questions[index].options.values.toList()[i]),
                    //create function to check the answer, modify the changeColor function
                  child: OptionCard(
                    option: _questions[index].options.keys.toList()[i],
                    //we need to check if the answer is correct
                
                    color: isPressed
                    ? _questions[index].options.values.toList()[i]== true //we need this value to see if the answer is correct
                      ? correct
                      : incorrect
                    : buttonColor,
                    ),
                )
               
          ],
        ),
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        child: NextButton(
          nextQuestion: nextQuestion, //the above function
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
