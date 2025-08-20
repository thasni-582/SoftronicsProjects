import 'package:flutter/material.dart';

class Studylisttail extends StatelessWidget {
  const Studylisttail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListTile(
        title: Text('Thasni'),
        leading: CircleAvatar(),
        subtitle: Text('You are Welcome'),trailing: Icon(Icons.camera),
      ),
    );
  }
}
