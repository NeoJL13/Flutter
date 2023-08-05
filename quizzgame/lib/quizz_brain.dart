import 'questions_Answers.dart';
import 'toastMessage.dart';
class QuizzBrain{
  int _questionNumber = 0;
  List<Question> _questionsBank = [
    Question('You are a good boy or good girl, right?',  true),
    Question('Turtles are animals with a shell and go fast', false),
    Question('Spider-Man is a character from Marvel', true),
    Question('Are you in love with someone?', true),
  ];

  void nextQuestion(){
    if(_questionNumber == _questionsBank.length - 1){
      showToastMessage('Complete Quizz games!');
    }
    if(_questionNumber < _questionsBank.length - 1){
      _questionNumber++;
    }
  }

  String IndexQuestion(){
    int _counter = _questionNumber + 1;
    return 'Question $_counter: ';
  }

  String getQuestionText(){
    return _questionsBank[_questionNumber].questionText;
  }

  bool getAnswerBoolean(){
    return _questionsBank[_questionNumber].answerBool;
  }

  int getLengthQuestion(){
    return _questionsBank.length;
  }
}