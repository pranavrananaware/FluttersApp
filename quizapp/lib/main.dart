import "package:flutter/material.dart";

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @Override 
  widget build (BuildContext context){
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Quiz App(),
    );
  }
}

class Quiz App xetends StatefulWidget{
  const QuizApp({super.key});

  @override

  State createState() => _QuizAppState();
}

class _QuizAppState extends State {
  List<Map>  allQuestions=[
    {
      "question":"Who is the founder of Apple?",
      "options": ["Steve Jobs","Bill Gates","Lary Page","Elon Musk"],
      "correctAnswer":0
    },
     {
      "question":"Who is the founder of SpaceX?",
      "options": ["Steve Jobs","Bill Gates","Lary Page","Elon Musk"],
      "correctAnswer":3
    },
     {
      "question":"Who is the founder of Microsoft?",
      "options": ["Steve Jobs","Bill Gates","Lary Page","Elon Musk"],
      "correctAnswer":1
    },
     {
      "question":"Whot is the founder of Google?",
      "options": ["Steve Jobs","Bill Gates","Lary Page","Elon Musk"],
      "correctAnswer":2
    },
     {
      "question":"Who is the founder of FFacebook?",
      "options": ["Steve Jobs","Bill Gates","Mark Zuckerberg","Elon Musk"],
      "correctAnswer":2
    },

  ];
  int currentQuestionIndex=0;
  int selectedAnswerIndex=-1;

  WidgetStateProperty<Color> checkAnswer(int answerIndex){
    if (selectedAnswerIndex !=-1){
      if (answerIndex == 
      allQuestions[currentQuestionIndex]["correctAnswer"]){
        return const WidgetStatePropertyAll(Colors.green);
      }else if(selectedAnswerIndex==answerIndex){
        return const WidgetStatePropertyAll(Colors.red);
      } else{
        return const WidgetStatePropertyAll(null);
      }
    }else {
      return const WidgetStatePropertyAll(null);
    
    }
  }
  bool questionPage=true;

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Quiz App",
          style:TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.w900,
            color:Colors.blue,
          ),
          body: Column(
            children: [
              const SizedBox(
                height: 30,

              ),
              Row (children: [
                const SizedBox(
                  width: 130,
                ),
                Text (
                  "Question: ${currentQuestionIndex +1}/${allQuestions.length}",
                  style:const TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w700,
                  ),
                ),

              ],
              )
            ],
          )
        ),
      ),
    )

  }
}