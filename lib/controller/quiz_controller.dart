import 'package:get/get.dart';

class QuizController extends GetxController {

  final List<Map<String, dynamic>> questions = [
    {
      'question': ' Who is the original vampire who founded the Salvatore family’s bloodline?',
      'options': ['Mikael', 'Elijah Mikaelson', 'Klaus Mikaelson', 'Rebekah Mikaelson'],
      'answer': 'Elijah Mikaelson',
    },
    {
      'question': 'What is the name of the town where The Vampire Diaries is set?',
      'options': ['Mystic Falls', 'Sunnydale', 'Bonanza Creek', 'Forks'],
      'answer': 'Mystic Falls',
    },
    {
      'question': ' What is the name of the vampire who turns Stefan and Damon Salvatore into vampires?',
      'options': ['Katherine Pierce', 'Elena Gilbert', 'Caroline Forbes', 'Bonnie Bennett'],
      'answer': 'Katherine Pierce',
    },
    {
      'question': 'Who does Stefan Salvatore fall in love with first in the series?',
      'options': ['Katherine Pierce', 'Elena Gilbert', 'Caroline Forbes', 'Bonnie Bennett'],
      'answer': 'Katherine Pierce',
    },
    {
      'question': 'What supernatural creature is the primary antagonist in the first season of the series?',
      'options': ['Original Vampires', 'Werewolves', 'The Tomb Vampires', 'The Hunter'],
      'answer': 'The Tomb Vampires',
    },
    {
      'question': ' Who is Elena Gilbert’s biological mother?',
      'options': ['Miranda Sommers-Gilbert', 'Isobel Flemming', 'Carol Lockwood', 'Liz Forbes'],
      'answer': 'Isobel Flemming',
    },
    {
      'question': 'What magical object does Elena wear that protects her from being compelled?',
      'options': ['A Mystic Falls ring', 'A vervain necklace', 'A moonstone', 'A daylight ring'],
      'answer': 'A vervain necklace',
    },
    {
      'question': ' Who is the vampire hunter known for his obsession with destroying vampires?',
      'options': ['Alaric Saltzman', 'Michael', 'Jeremy Gilbert', 'Katherine Pierce'],
      'answer': 'Michael',
    },
    {
      'question': 'What is the name of the original vampire who has a daughter named Hope Mikaelson?',
      'options': ['Klaus Mikaelson', 'Elijah Mikaelson', 'Mikael', 'Stefan Salvatore'],
      'answer': 'Klaus Mikaelson',
    },
    {
      'question': 'Who does Damon Salvatore end up marrying?',
      'options': ['Elena Gilbert', 'Caroline Forbes', 'Katherine Pierce', 'Bonnie Bennett'],
      'answer': 'Elena Gilbert',
    },
  ];


  var currentQuestionIndex = 0.obs;
  var score = 0.obs;
  var selectedOption = ''.obs;
  var isQuizFinished = false.obs;


  void nextQuestion() {
    if (currentQuestionIndex.value < questions.length - 1) {
      currentQuestionIndex.value++;
      selectedOption.value = ''; // Reset selected option for the next question
    } else {
      finishQuiz();
    }
  }

  void submitAnswer() {
    if (selectedOption.value == questions[currentQuestionIndex.value]['answer']) {
      score.value++;
    }
    nextQuestion();
  }

  void finishQuiz() {
    isQuizFinished.value = true;
  }


  void resetQuiz() {
    currentQuestionIndex.value = 0;
    score.value = 0;
    selectedOption.value = '';
    isQuizFinished.value = false;
  }
}
