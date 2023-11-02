class QuizQuestions{
  QuizQuestions(this.question,this.options);
  final String question;
  final List<String> options;

  List<String> getShuffledAnswers(){
    final shuffledList = List.of(options);
    shuffledList.shuffle();
    return shuffledList;
  }
}