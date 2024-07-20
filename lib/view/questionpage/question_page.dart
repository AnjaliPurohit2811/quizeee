import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../controller/quiz_controller.dart';

class QuestionPage extends StatelessWidget {
  const QuestionPage({super.key});

  @override
  Widget build(BuildContext context) {
    final QuizController controller = Get.put(QuizController());

    return Scaffold(
      body: Obx(() {
        if (controller.isQuizFinished.value) {
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Quiz Finished!',
                  style: TextStyle(fontSize: 30),
                ),
                SizedBox(height: 20),
                Text(
                  'Score: ${controller.score.value}/${controller.questions.length}',
                  style: TextStyle(fontSize: 20),
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStatePropertyAll(Color(0xffFAE043))),
                  onPressed: () {
                    controller.resetQuiz();
                  },
                  child: Text('Restart Quiz'),
                ),
              ],
            ),
          );
        }

        final currentQuestion =
            controller.questions[controller.currentQuestionIndex.value];
        final options = currentQuestion['options'] as List<String>;

        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 30, left: 60),
              child: Text(
                'Questions!!!!!',
                style: TextStyle(fontSize: 50),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 80, left: 30),
              child: Container(
                height: 220,
                width: 350,
                decoration: BoxDecoration(
                    color: Color(0xffFAE043),
                    borderRadius: BorderRadius.circular(20)),
                child: Center(
                  child: Text(
                    currentQuestion['question'],
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
            ...options.map((option) {
              return Padding(
                padding: const EdgeInsets.only(top: 30, left: 50),
                child: GestureDetector(
                  onTap: () {
                    controller.selectedOption.value = option;
                  },
                  child: Container(
                    height: 50,
                    width: 300,
                    decoration: BoxDecoration(
                      color: Color(0xffFAE043),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Center(
                      child: Text(
                        option,
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                  ),
                ),
              );
            }).toList(),
            Padding(
                padding: const EdgeInsets.only(top: 20, left: 115),
                child: OutlinedButton(
                  style: ButtonStyle(backgroundColor: MaterialStatePropertyAll(Color(0xffFAE043))),
                  onPressed: () {
                    controller.submitAnswer();
                  },child: Text('Submit The Answer' , style: TextStyle(color: Colors.black),),
                ),),
          ],
        );
      }),
    );
  }
}
// ElevatedButton(
//
// style: ButtonStyle(backgroundColor: MaterialStatePropertyAll(Colors.yellow)),
// onPressed: () {
// controller.submitAnswer();
// },
// child: Text('Submit Answer'),
// ),
