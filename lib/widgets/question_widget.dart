import 'package:flutter/material.dart';
import '../constants.dart';
//import '../constants.dart';

class QuestionWidget extends StatelessWidget {
  const QuestionWidget(
      {Key? key,
      required this.question,
      required this.indexAction,
      required this.totalQuestions})
      : super(key: key);
  final String question;
  final int indexAction;
  final int totalQuestions;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: EdgeInsets.only(top:10,left:10,right:10,),
        child:Row(
          children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset('images/oturan_akay.png'),
              Container(
                  width: 165,
                  alignment: Alignment.centerLeft,
                  padding: const EdgeInsets.all(10.0),
                  child: Text('${indexAction + 1}/$totalQuestions: $question',
                  style: const TextStyle(
                    fontSize: 12.0,
                    color: Colors.white,)
                  ),
                  decoration: const BoxDecoration(
                    color: buttonColor,
                    borderRadius: BorderRadius.only(
                    topRight: Radius.circular(30),
                    topLeft: Radius.circular(30.0),
                    bottomRight: Radius.circular(30),
                    )
                  )  
                ),
            ],
            
          ),
          
          //mascot
          ],

        ),
        
      )
              
    );
  }
}
