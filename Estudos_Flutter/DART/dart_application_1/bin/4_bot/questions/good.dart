class GoodManners {
  String question;
  bool isGood = false;
  String Friday = 'Friday: \n';
  GoodManners(this.question);

  bool isThisManners() {
    if (question.contains('oi') ||
        question.contains('Olá') ||
        question.contains('Bom') ||
        question.contains('Obrigado') ||
        question.contains('Boa') ||
        question.contains('Tarde')) {
      isGood = true;
    }
    return isGood;
  }

  goodManners() {
    if (question.contains('Bom dia') || question.contains('Boa tarde')) {
      print('$Friday Bom dia, senhor!');
    }
  }
}
