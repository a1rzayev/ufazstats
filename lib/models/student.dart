class Student {
  final String name;
  final String surname;
  final String faculty;
  final String course;
  final Map<String, double> scores;

  Student({
    required this.name,
    required this.surname,
    required this.faculty,
    required this.course,
    required this.scores,
  });

  double get averageScore {
    if (scores.isEmpty) return 0.0;
    return scores.values.reduce((a, b) => a + b) / scores.length;
  }
}
