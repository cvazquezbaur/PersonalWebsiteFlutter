import 'package:flutter/material.dart';

class SkiInstructorView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ski Instructor'),
      ),
      body: Center(
        child: Text('Welcome to the Ski Instructor Page!'),
      ),
    );
  }
}