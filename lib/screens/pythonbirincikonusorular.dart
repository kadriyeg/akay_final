import 'package:flutter/material.dart';

import 'package:flutter_application_1/models/questions_model.dart';
import '../constants.dart';
import '../widgets/question_widget.dart';
import '../widgets/next_button.dart';
import '../widgets/option_card.dart';
import '../widgets/result_box.dart';

class PythonBirSoru extends StatefulWidget {
  const PythonBirSoru({ Key? key }) : super(key: key);

  @override
  State<PythonBirSoru> createState() => _PythonBirSoruState();
}

class _PythonBirSoruState extends State<PythonBirSoru> {
  // ignore: prefer_final_fields
  List<Question> _questions = [
    Question(
      id: '10',
      title: 'Hangi değişkene atanan değer doğrudur?',
      options: {'isim="Melek"': true, 'isim->"Talha"': false,'isim=Melek': false, 'isim: Mustafa)': false},
    ),
    Question(
      id: '10',
      title: 'Hangi değişken türü sadece sayısal değer tutabilir?',
      options: { 'Boolean': false,'Sayı': true, 'Dizi': false, 'Liste': false},
    ),
    Question(
      id: '10',
      title: 'Değişkenlerle ilgili hangisi doğrudur?',
      options: {'Değişkenlerde büyük harf-küçük harf farklılıklarının önemi yoktur ': false,  'Değişken isimleri emoji olabilir': false,'Değişkenlerde büyük harf-küçük harf uyumu önemlidir.': true, 'Değişkenlere atanan bir değer asla değişemez.': false},
    ),
    Question(
      id: '10',
      title: 'Hangisi bir değişken olabilir?',
      options: {'3kitapagaci': false, 'kitap agaci': false, '_kitapAgaci': true, 'KitapAğacı': false},
    ),
    Question(
      id: '10',
      title: 'Aşağıdakilerden hangisi atama operatörüdür?',
      options: {'.': false, '!': false, '=': true, '?': false},
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
        title: const Text("DEĞİŞKENLER"), 
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
