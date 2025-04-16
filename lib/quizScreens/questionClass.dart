class Questions {
  final String question;
  final List<String> options;
  final int correctAnswerIndex;

  const Questions({
    required this.correctAnswerIndex,
    required this.question,
    required this.options,
  });
}