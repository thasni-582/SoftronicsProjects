import 'package:flutter/material.dart';

class StudyListView extends StatelessWidget {
  const StudyListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(

        itemBuilder: (context, index) {
          return ListTile(
            title: Text('Thasni'),
            leading: CircleAvatar(),
            subtitle: Text('You are Welcome'),trailing: Icon(Icons.camera),
          );
        },
      ),
    );
  }
}
