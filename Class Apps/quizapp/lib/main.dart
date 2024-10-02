import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Quizz App",
      home: QuizzApp(),
    );
  }
}

class QuizzApp extends StatefulWidget {
  const QuizzApp({super.key});

  @override
  State createState() => _QuizzAppState();
}

class _QuizzAppState extends State {
  int currentQuetionIndex = 0;
  int selectedAnswerIndex =
      -1; //Initially selected ans is -1 , it means the ans is not selected
  bool questionPage = true;
  int correctedAnswer = 0;

  List<Map> quetionList = [
    {
      "quetion": "Who is the Founder of Microsoft?",
      "option": ["Steve Jobs", "Elon Musk", "Bill Gates", "Lary Page"],
      "correctedAns": 2,
    },
    {
      "quetion": "Who is the Founder of Google?",
      "option": ["Steve Jobs", "Elon Musk", "Bill Gates", "Lary Page"],
      "correctedAns": 3,
    },
    {
      "quetion": "Who is the Founder of SpaceX?",
      "option": ["Jeff Bezos", "Elon Musk", "Bill Gates", "Lary Page"],
      "correctedAns": 1,
    },
    {
      "quetion": "Who is the Founder of Apple?",
      "option": ["Steve Jobs", "Elon Musk", "Bill Gates", "Lary Page"],
      "correctedAns": 0,
    },
    {
      "quetion": "Who is the Founder of Meta?",
      "option": ["Jeff Bezos", "Elon Musk", "Bill Gates", "Mark Zuckerberg"],
      "correctedAns": 3,
    }
  ];

  WidgetStateProperty<Color?> checkAnswer(int answerIndex) {
    if (selectedAnswerIndex != -1) {
      if (answerIndex == quetionList[currentQuetionIndex]["correctedAns"]) {
        return const WidgetStatePropertyAll(Colors.green);
      } else if (selectedAnswerIndex == answerIndex) {
        return const WidgetStatePropertyAll(Colors.red);
      } else {
        return const WidgetStatePropertyAll(null);
      }
    } else {
      return const WidgetStatePropertyAll(null);
    }
  }

  @override
  Widget build(BuildContext context) {
    return isQuestionScreen();
  }

  Scaffold isQuestionScreen() {
    if (questionPage == true) {
      return Scaffold(
          appBar: AppBar(
            title: const Text(
              "Quizz App",
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.w900,
                color: Color.fromARGB(255, 225, 225, 60),
              ),
            ),
            centerTitle: true,
            backgroundColor: Colors.blue,
          ),
          body: Column(
            //here we can not write the const because the below Text() is changable
            children: [
              const SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  const SizedBox(
                    width: 130,
                  ),
                  Text(
                    "Quetion : ${currentQuetionIndex + 1} / ${quetionList.length}",
                    style: const TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 50,
              ),
              SizedBox(
                width: 350,
                height: 70,
                child: Text(
                  quetionList[currentQuetionIndex]["quetion"],
                  style: const TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w600,
                    color: Color.fromARGB(255, 61, 60, 110),
                  ),
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              SizedBox(
                height: 50,
                width: 350,
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: checkAnswer(0),
                  ),
                  onPressed: () {
                    if (selectedAnswerIndex == -1) {
                      selectedAnswerIndex = 0;
                      setState(() {});
                    }

                    if (selectedAnswerIndex ==
                        quetionList[currentQuetionIndex]["correctedAns"]) {
                      correctedAnswer++;
                    }
                  },
                  child: Text(
                    quetionList[currentQuetionIndex]['option'][0],
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              SizedBox(
                height: 50,
                width: 350,
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: checkAnswer(1),
                  ),
                  onPressed: () {
                    if (selectedAnswerIndex == -1) {
                      selectedAnswerIndex = 1;
                      setState(() {});
                    }

                    if (selectedAnswerIndex ==
                        quetionList[currentQuetionIndex]["correctedAns"]) {
                      correctedAnswer++;
                    }
                  },
                  child: Text(
                    quetionList[currentQuetionIndex]['option'][1],
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              SizedBox(
                height: 50,
                width: 350,
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: checkAnswer(2),
                  ),
                  onPressed: () {
                    if (selectedAnswerIndex == -1) {
                      selectedAnswerIndex = 2;
                      setState(() {});
                    }
                    if (selectedAnswerIndex ==
                        quetionList[currentQuetionIndex]["correctedAns"]) {
                      correctedAnswer++;
                    }
                  },
                  child: Text(
                    quetionList[currentQuetionIndex]['option'][2],
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              SizedBox(
                height: 50,
                width: 350,
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: checkAnswer(3),
                  ),
                  onPressed: () {
                    if (selectedAnswerIndex == -1) {
                      selectedAnswerIndex = 3;
                      setState(() {});
                    }
                    if (selectedAnswerIndex ==
                        quetionList[currentQuetionIndex]["correctedAns"]) {
                      correctedAnswer++;
                    }
                  },
                  child: Text(
                    quetionList[currentQuetionIndex]['option'][3],
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 25,
              ),
            ],
          ),
          floatingActionButton: Row(
            children: [
              const SizedBox(
                width: 50,
              ),
              FloatingActionButton(
                onPressed: () {
                  if (currentQuetionIndex <= quetionList.length - 1 &&
                      currentQuetionIndex >= 1) {
                    currentQuetionIndex--;
                    setState(() {});
                  }
                },
                tooltip: "Previous",
                backgroundColor: Colors.blue,
                child: const Icon(
                  Icons.arrow_back,
                  color: Colors.orange,
                ),
              ),
              const SizedBox(
                width: 230,
              ),
              FloatingActionButton(
                onPressed: () {
                  if (selectedAnswerIndex != -1) {
                    if (currentQuetionIndex < quetionList.length - 1) {
                      currentQuetionIndex++;
                    } else {
                      questionPage = false;
                    }
                    selectedAnswerIndex = -1;
                    setState(() {});
                  }

                  // if (selectedAnswerIndex == -1) {
                  //   const Text("Please Give The Answer");
                  // }
                },
                tooltip: "Next",
                backgroundColor: Colors.blue,
                child: const Icon(
                  Icons.forward,
                  color: Colors.orange,
                ),
              ),
            ],
          ));
    } else {
      return Scaffold(
        appBar: AppBar(
          title: const Text("Result"),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                height: 30,
              ),
              Image.network(
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQFSod4OPRhrl1GKW398b_W7FoE2rU2zQKzGA&s"),
              const SizedBox(
                height: 30,
              ),
              const Text(
                "Congratulation",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w700,
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Text(
                "Score : $correctedAnswer / ${quetionList.length}",
                style: const TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.w500,
                  fontFamily: AutofillHints.sublocality,
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              SizedBox(
                height: 40,
                width: 350,
                child: ElevatedButton(
                  style: const ButtonStyle(
                    backgroundColor: WidgetStatePropertyAll(Colors.blueAccent),
                  ),
                  onPressed: () {
                    selectedAnswerIndex = -1;
                    currentQuetionIndex = 0;
                    questionPage = true;
                    setState(() {});
                  },
                  child: const Text(
                    "Reset",
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w400,
                      color: Color.fromARGB(255, 34, 34, 35),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    }
  }
}