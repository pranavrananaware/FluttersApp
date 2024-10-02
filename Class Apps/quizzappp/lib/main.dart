import 'package:flutter/material.dart';

void main (){
  runApp(const MyApp());

}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context){
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home:QuizApp(),
    );
  }
}

class QuizApp extends StatefulWidget{
  const QuizApp({super.key});

  @override
  State createState() => _QuizAppState();
}

class _QuizAppState extends State {
  List<Map> allQuestions=[
    {
      "questions": "Who is the Founder of Java? ",
      "options":["James Gosling","Dennis Ritchie","Kasper Lund","Guido van Rossum"],
      "correctAnswer":0
    },
     {
      "questions": "Who is the Founder of Pyython? ",
      "options":["James Gosling","Dennis Ritchie","Kasper Lund","Guido van Rossum"],
      "correctAnswer":3
    },
     {
      "questions": "Who is the Founder of C? ",
      "options":["James Gosling","Dennis Ritchie","Kasper Lund","Guido van Rossum"],
      "correctAnswer":1
    },
     {
      "questions": "Who is the Founder of Dart? ",
      "options":["James Gosling","Dennis Ritchie","Kasper Lund","Guido van Rossum"],
      "correctAnswer":2
    },

  ];

  int currenQuestionIndex=0;
  int selectedAnsweraIndex=-1;

  WidgetStateProperty<Color?> checkAnswer(int answerIndex){
    if (selectedAnsweraIndex !=-1){
      if (answerIndex==
      allQuestions[currenQuestionIndex]["correctAnswer"]){
        return const WidgetStatePropertyAll(Colors.green);

      } else if (selectedAnsweraIndex== answerIndex) {
        return const WidgetStatePropertyAll(Colors.red);
      } else {
        return const WidgetStatePropertyAll(null);
      } 

    }else {
        return const WidgetStatePropertyAll(null);
      }

  }
    bool questionsPage=true;

    @override 
    Widget build(BuildContext context){
      return isQuestionscrren();

    }

    Scaffold isQuestionscrren(){
      if (questionsPage==true){
        return Scaffold(
          appBar: AppBar(
            title: const Text(
              "Quiz App",
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.w900,
                color:Colors.white,
              ),
            ),
            centerTitle: true,
            backgroundColor: Colors.blue,
          ),
            body: Column(
              children: [
                const SizedBox(
                  height: 30,
                ),

                //Questions Number
                Row(
                  children: [
                    const SizedBox(
                      width: 130,
                    ),
                
                Text(
                  "Question: ${currenQuestionIndex + 1}/${allQuestions.length}",
                  style:const TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
          ),
          const SizedBox(
            height: 50,

          ),

          //Questions

          SizedBox(
            width: 380,
            height: 50,
            child: Text(
              allQuestions[currenQuestionIndex]["questions"],
              style: const TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w600,
                color: Colors.purple,
              ),
            ),
          ),
           const SizedBox(
            height: 50,

          ),
    // Option1

          SizedBox (
            height: 50,
            width: 350,
            child: ElevatedButton(
              style: ButtonStyle(
                backgroundColor: checkAnswer(0),
              ),
              onPressed: () {
                if (selectedAnsweraIndex== -1){
                  selectedAnsweraIndex=0;
                  setState(() {});
                }
              },
              child: Text("A. ${allQuestions[currenQuestionIndex]['options'][0]}",
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
                color: Colors.black,
              ),
              ),
            ),
          ),
          const SizedBox(
            height: 25,
          ),

// Option2
          SizedBox (
            height: 50,
            width: 350,
            child: ElevatedButton(
              style: ButtonStyle(
                backgroundColor: checkAnswer(1),
              ),
              onPressed: () {
                if (selectedAnsweraIndex== -1){
                  selectedAnsweraIndex=1;
                  setState(() {});
                }
              },
              child: Text("B. ${allQuestions[currenQuestionIndex]['options'][1]}",
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
                color: Colors.black,
              ),
              ),
            ),
          ),
          const SizedBox(
            height: 25,
          ),


//option3
          SizedBox (
            height: 50,
            width: 350,
            child: ElevatedButton(
              style: ButtonStyle(
                backgroundColor: checkAnswer(2),
              ),
              onPressed: () {
                if (selectedAnsweraIndex== -1){
                  selectedAnsweraIndex=2;
                  setState(() {});
                }
              },
              child: Text("C. ${allQuestions[currenQuestionIndex]['options'][2]}",
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
                color: Colors.black,
              ),
              ),
            ),
          ),
          const SizedBox(
            height: 25,
          ),

          //option 4

          SizedBox (
            height: 50,
            width: 350,
            child: ElevatedButton(
              style: ButtonStyle(
                backgroundColor: checkAnswer(3),
              ),
              onPressed: () {
                if (selectedAnsweraIndex== -1){
                  selectedAnsweraIndex=3 ;
                  setState(() {});
                }
              },
              child: Text("D. ${allQuestions[currenQuestionIndex]['options'][3]}",
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
                color: Colors.black,
              ),
              ),
            ),
          ),
       ],
    ),

         floatingActionButton: FloatingActionButton(
          onPressed: (){
          if (selectedAnsweraIndex!= -1){

            if (currenQuestionIndex< allQuestions.length-1){
              currenQuestionIndex++;
            }else {
              questionsPage=false;
            } selectedAnsweraIndex = -1;
              setState(() {});
                      }
         
         },
         backgroundColor: Colors.blue,
         child: const Icon(
          Icons.forward,
          color: Colors.white,
         ),
         ), 
        );
      } else {
        return Scaffold(
          appBar: AppBar(
            title: const Text(
              "Quiz Result",
              style: TextStyle(
                fontSize:28,
                fontWeight: FontWeight.w900,
                color:Colors.white, 
              ),
            ),
            centerTitle: true,
            backgroundColor: Colors.blue,
          ),
          body:Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.network(
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTJCKwyuU0H5va0M4G4REPaOckkFoBNKQpQ4g&s",
                  height: 300,
                ),
                 const SizedBox(height: 30),
                 const Text("Congratulations",
                 style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w600,
                  color: Colors.orange,
                 ),
                 ),
                 const SizedBox(height: 30),
                 Text(
                  "Score: $selectedAnsweraIndex / ${allQuestions.length}",
                  style: const TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.w500,
                    fontFamily: AutofillHints.sublocality,
                  ),
                  ),
              ],
            ),
          )
        );
      }
    }

  }
