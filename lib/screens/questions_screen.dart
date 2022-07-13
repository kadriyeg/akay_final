import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/constants.dart';
import 'package:flutter_application_1/models/questions_model.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({ Key? key }) : super(key: key);

  @override
  State<QuestionsScreen> createState() => _QuestionsScreenState();
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  // ignore: prefer_final_fields
  List<Question> _questions = [
    Question(
      id: '10', 
      title: 'What is 2 + 2 ?',
      options: {'5': false, '30': false, '4':true, '10': false},
      ),
    Question(
      id: '10', 
      title: 'What is 2 + 2 ?',
      options: {'5': false, '30': false, '4':true, '10': false},
      ),
    
  ];
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("LOOP egzersizleri"), 
        backgroundColor: background,
        shadowColor: Colors.transparent,


      ),
    );
  }
}