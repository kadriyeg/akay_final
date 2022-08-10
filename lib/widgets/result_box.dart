import 'package:flutter/material.dart';
import '../constants.dart';
import 'package:flutter_application_1/screens/home_page.dart';
//import '../constants.dart';


class ResultBox extends StatelessWidget {
  const ResultBox({ Key? key,
   required this.result,
   required this.questionLength,
   required this.onPressed,
    }) : super(key: key);
  final int result;
  final int questionLength;
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: background,
      content: Padding(padding: const EdgeInsets.all(70.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'Sonuç',
            style: TextStyle(color: Colors.white, fontSize: 22.0),
            ),
          const SizedBox(height: 20.0),
          CircleAvatar(
            child: Text(
              '$result/$questionLength',
              style: const TextStyle(fontSize: 30.0),),
          
            radius: 70.0,
            backgroundColor: result== questionLength 
                ? correct 
                : result < questionLength/2 
                    ? incorrect 
                    : result == questionLength/2
                        ? Colors.yellow 
                        : result> questionLength/2
                            ? backGroundColor
                            : buttonColor ,
          ),
          const SizedBox(height:  20.0),
          Text(
            result== questionLength 
                ? 'Hepsini başarıyla tamamladın!' 
                : result < questionLength/2 
                    ? 'bu konuyu tekrar etmen gerekecek!' 
                    : result == questionLength/2
                        ? 'yarı yarıya başardın'
                        : result> questionLength/2
                            ? 'neredeyse konunun hakimisin!'
                            : 'escape point burası',
            style: const TextStyle(color: Colors.white),
            ),
            const SizedBox(height: 25.0),
            GestureDetector(
              onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (BuildContext context) {
                              return const FirstPage();
                            },
                          ),
                        );
                      },
                //now we need a function to do the work
                //we will create that in questions screen dart (we did onPressed)
              child: const Text(
                'Bitir',
                style: TextStyle(
                  color: Colors.white, 
                  fontSize: 20.0,
                  letterSpacing: 1.0,
                ),
              ),
            ),
        ],
      ),),
    );
  }
}