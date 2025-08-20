import 'package:flutter/material.dart';

class StudyContainer extends StatefulWidget {
  const StudyContainer({super.key});

  @override
  State<StudyContainer> createState() => _StudyContainerState();
}

class _StudyContainerState extends State<StudyContainer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(height: 100, width: 100, color: Colors.lightBlue),
    );
  }
}
