
class Question {
  String questionText;


  Question(String q) {
    questionText = q;

  }
}
class QuizBrain {
  int _questionNumber = 0;

  List<Question> _questionBank = [
    Question('Some cats are actually allergic to humans'),
    Question('You can lead a cow down stairs but not up stairs.'),
    Question('Approximately one quarter of human bones are in the feet.'),
    Question('A slug\'s blood is green.'),
    Question('Buzz Aldrin\'s mother\'s maiden name was \"Moon\".'),
    Question('It is illegal to pee in the Ocean in Portugal.'),
    Question(
        'No piece of square dry paper can be folded in half more than 7 times.'),
    Question(
      'In London, UK, if you happen to die in the House of Parliament, you are technically entitled to a state funeral, because the building is considered too sacred a place.',),
    Question(
      'The loudest sound produced by any animal is 188 decibels. That animal is the African Elephant.',
    ),
    Question(
      'The total surface area of two human lungs is approximately 70 square metres.',
    ),
    Question('Google was originally called \"Backrub\".'),
    Question(
      'Chocolate affects a dog\'s heart and nervous system; a few ounces are enough to kill a small dog.',
    ),
    Question(
      'In West Virginia, USA, if you accidentally hit an animal with your car, you are free to take it home to eat.',
    ),
  ];

  void nextQuestion() {
    if (_questionNumber < _questionBank.length - 1) {
      _questionNumber++;
    }
  }

  String getQuestionText() {
    return _questionBank[_questionNumber].questionText;
  }





  bool isFinished() {
    if (_questionNumber >= _questionBank.length - 1) {


      print('Now returning true');
      return true;

    } else {
      return false;
    }
  }

  //TODO: Step 4 part B - Create a reset() method here that sets the questionNumber back to 0.
  void reset() {
    _questionNumber = 0;
  }
}

