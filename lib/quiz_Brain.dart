import 'package:quizzy/Question.dart';

class QuizBrain {

  int _questionNumber = 0;

  List<Question> _questionBank = [
    Question('The blue whale is the biggest known animal to have ever existed ?', true),
    Question('A fuel produced from grass is called mycodiesel ?', false),
    Question('J.K. Rowling authored the famous Harry Potter book series ?', true),
    Question('The world’s largest island is Greenland ?', true),
    Question('California is home to the “Desert of Death ?', false),
    Question('The speed of the average human sneeze can be measured up to 100 miles an hour ?', true),
    Question('The human eyes can observe 10 million different colors ?', true),
    Question('It took 8 weeks to start and finish the production of the 1959 Disney film “Sleeping Beauty ?', false),
    Question('The first movie produced by Pixar was Toy Story ?', true),
    Question('The Golden State Warriors won the 2020 NBA championship ?', false),
    Question('Dogecoin is the 2nd largest cryptocurrency after Bitcoin ?', false),
    Question('The Goliath frog of West Africa is the largest living frog ?', true),
    Question('On the moon, an astronaut once played golf ?', true),
  ];

  void next(){

    if(_questionNumber < _questionBank.length -1 ){
      _questionNumber++;
    }

  }

  bool isFinished(){
    if(_questionNumber == _questionBank.length -1){
      return true;
    }
    return false;
  }

  void reset(){
    _questionNumber = 0;
  }

  String getQuestion(){
    return _questionBank[_questionNumber].questionText;
  }

  bool getAnswer(){
    return _questionBank[_questionNumber].questionAnswer;
  }
}
