import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Student Average Scores'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/students');
              },
              child: Text('View Students'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/add_student');
              },
              child: Text('Add Student'),
            ),
          ],
        ),
      ),
    );
  }
}
