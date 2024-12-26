import 'student.dart';

class Faculty {
  final String name;
  final List<Student> students;

  Faculty({required this.name, required this.students});

  double get averageScore {
    if (students.isEmpty) return 0.0;
    return students
        .map((student) => student.averageScore)
        .reduce((a, b) => a + b) /
        students.length;
  }
}
